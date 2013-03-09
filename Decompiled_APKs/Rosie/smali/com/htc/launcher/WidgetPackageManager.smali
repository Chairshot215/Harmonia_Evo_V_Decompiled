.class public Lcom/htc/launcher/WidgetPackageManager;
.super Ljava/lang/Object;
.source "WidgetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;
    }
.end annotation


# static fields
.field public static final ACTION_INIT_SCENE_MANAGER:Ljava/lang/String; = "com.htc.AddProgramWidget.scene.ACTION_INIT"

.field private static final COL_SC_APPNAME:Ljava/lang/String; = "shortcut_app_name"

.field private static final COL_SC_CLASSNAME:Ljava/lang/String; = "shortcut_class_name"

.field private static final COL_SC_ID:Ljava/lang/String; = "shortcut_id"

.field private static final COL_SC_PACKAGENAME:Ljava/lang/String; = "shortcut_package_name"

.field private static final COMMUNITY_ACCOUNT:Ljava/lang/String; = "community"

.field private static final COMMUNITY_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.android.myphonebook"

.field private static final CUSTOMIZATION_URI_STRING:Ljava/lang/String; = "content://customization_settings/SettingTable/application_Launcher"

.field private static final DB_AUTHORITY:Ljava/lang/String; = "com.htc.idlescreen.setting.provider"

.field private static final DB_SHORTCUT_LIST:Ljava/lang/String; = "shortcut_list"

.field public static final DRAWABLE_TOKEN:Ljava/lang/String; = "Local_"

.field public static final ITEM_TYPE_OFFSET:I = 0x44c

.field public static final KEY_INIT_LAUNCH_BAR:Ljava/lang/String; = "init_launch_bar"

.field public static final LIVE_TOKEN:Ljava/lang/String; = "Live_"

.field private static final MAIL_ACCOUNT:Ljava/lang/String; = "mail"

.field private static final NOTES_ACCOUNT:Ljava/lang/String; = "notes"

.field private static final PHONE_APP_NAME:Ljava/lang/String; = "Phone"

.field private static final PHONE_CLASS_NAME:Ljava/lang/String; = "com.android.htccontacts.DialerTabActivity"

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.htccontacts"

.field private static final PREFIX_PROPERTY:Ljava/lang/String; = "property."

.field public static final PREF_KEY_INIT:Ljava/lang/String; = "Initialized"

.field private static final PRE_HOME_WALLPAPER:Ljava/lang/String; = "/data/data/com.htc.launcher/files/home_wallpaper_"

.field public static final REFERENCES:Ljava/lang/String; = "WidgetPackageManager"

.field private static final SCENE_NAME_LIST_KEY:Ljava/lang/String; = "scene_list"

.field private static final SCENE_UPDATE_VERSION_KEY:Ljava/lang/String; = "scene_update_version"

.field private static final SOCIAL_ACCOUNT:Ljava/lang/String; = "social"

.field private static final STRING_FORMAT_PREVIEW_PATH:Ljava/lang/String; = "/data/data/com.htc.launcher/files/scenes_picker_%d.png"

.field private static final STRING_FORMAT_PREVIEW_PATH_LAND:Ljava/lang/String; = "/data/data/com.htc.launcher/files/scenes_picker_land_%d.png"

.field private static final TAG:Ljava/lang/String; = "Widget"

.field private static final URI_SHORTCUT_LIST:Landroid/net/Uri; = null

.field private static final WALLPAPER_ROOT_PATH:Ljava/lang/String; = "/system/customize/resource/"

.field static final WIDGET_UTILITY_PACKAGE:Ljava/lang/String; = "com.htc.home.personalize"

.field private static initialized:Z

.field private static final localLOGV:Z

.field private static sInstance:Lcom/htc/launcher/WidgetPackageManager;


# instance fields
.field private idx:I

.field mCategoryManager:Lcom/htc/launcher/WidgetCategoryManager;

.field mCustomizeSceneName:[Ljava/lang/String;

.field private mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

.field private mHasCommunityAccount:Z

.field private mHasMailAccount:Z

.field private mHasNoteAccount:Z

.field private mHasSocialAccount:Z

.field mSceneTitleName:Ljava/lang/String;

.field private mWidgetItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/WidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/launcher/WidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetItemStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/launcher/WidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/launcher/WidgetPackage;",
            ">;"
        }
    .end annotation
.end field

.field protected mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/WidgetProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/launcher/WidgetProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/htc/launcher/WidgetPackageManager;

    invoke-direct {v0}, Lcom/htc/launcher/WidgetPackageManager;-><init>()V

    sput-object v0, Lcom/htc/launcher/WidgetPackageManager;->sInstance:Lcom/htc/launcher/WidgetPackageManager;

    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/launcher/WidgetPackageManager;->initialized:Z

    .line 953
    const-string v0, "content://com.htc.idlescreen.setting.provider/shortcut_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/WidgetPackageManager;->URI_SHORTCUT_LIST:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgets:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetsMap:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetPackageMap:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemList:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemMap:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemStringMap:Ljava/util/HashMap;

    .line 75
    new-instance v0, Lcom/htc/launcher/WidgetCategoryManager;

    invoke-direct {v0}, Lcom/htc/launcher/WidgetCategoryManager;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/WidgetPackageManager;->mCategoryManager:Lcom/htc/launcher/WidgetCategoryManager;

    .line 77
    iput-boolean v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasSocialAccount:Z

    .line 78
    iput-boolean v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasMailAccount:Z

    .line 79
    iput-boolean v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasCommunityAccount:Z

    .line 80
    iput-boolean v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasNoteAccount:Z

    .line 372
    iput-object v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mCustomizeSceneName:[Ljava/lang/String;

    .line 386
    iput-object v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mSceneTitleName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private static addFolder(Landroid/content/Context;I)J
    .locals 13
    .parameter "context"
    .parameter "nSceneId"

    .prologue
    const-wide/16 v11, -0x1

    const/4 v7, 0x0

    .line 1031
    new-instance v8, Lcom/htc/launcher/config/FavoriteData;

    invoke-direct {v8}, Lcom/htc/launcher/config/FavoriteData;-><init>()V

    .line 1032
    .local v8, favdata:Lcom/htc/launcher/config/FavoriteData;
    const-string v0, ""

    iput-object v0, v8, Lcom/htc/launcher/config/FavoriteData;->title:Ljava/lang/String;

    .line 1033
    const/4 v0, 0x3

    iput v0, v8, Lcom/htc/launcher/config/FavoriteData;->x:I

    .line 1034
    iput v7, v8, Lcom/htc/launcher/config/FavoriteData;->y:I

    .line 1035
    iput v7, v8, Lcom/htc/launcher/config/FavoriteData;->screen:I

    .line 1036
    iput p1, v8, Lcom/htc/launcher/config/FavoriteData;->workspaceId:I

    .line 1038
    invoke-static {p0, v8}, Lcom/htc/launcher/LauncherModel;->getFolder(Landroid/content/Context;Lcom/htc/launcher/config/FavoriteData;)Lcom/htc/launcher/FolderInfo;

    move-result-object v1

    .line 1039
    .local v1, folder:Lcom/htc/launcher/FolderInfo;
    if-eqz v1, :cond_0

    .line 1040
    const-wide/16 v2, -0x65

    iget v4, v1, Lcom/htc/launcher/FolderInfo;->screen:I

    iget v5, v1, Lcom/htc/launcher/FolderInfo;->cellX:I

    iget v6, v1, Lcom/htc/launcher/FolderInfo;->cellY:I

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/htc/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)J

    move-result-wide v9

    .line 1043
    .local v9, lFavId:J
    cmp-long v0, v9, v11

    if-eqz v0, :cond_1

    .line 1044
    invoke-static {p0, v1}, Lcom/htc/launcher/LauncherModel;->sendItemAdded(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 1050
    .end local v9           #lFavId:J
    :goto_0
    return-wide v9

    .line 1048
    :cond_0
    const-string v0, "Widget"

    const-string v2, "get UserFolderInfo fail"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-wide v9, v11

    .line 1050
    goto :goto_0
.end method

.method private checkScanDone(Landroid/content/Context;)V
    .locals 17
    .parameter "context"

    .prologue
    .line 112
    sget-object v14, Lcom/htc/launcher/GeneralPurposeReceiver;->syncScanDone:Ljava/lang/Object;

    monitor-enter v14

    .line 113
    :try_start_0
    const-string v13, "WidgetPackageManager"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 115
    .local v8, preferences:Landroid/content/SharedPreferences;
    const-string v13, "scan_htc_widget_done"

    const/4 v15, 0x0

    invoke-interface {v8, v13, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 116
    .local v9, scanDone:Z
    const-string v13, "build_no"

    const-string v15, "None"

    invoke-interface {v8, v13, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, prefBuildNo:Ljava/lang/String;
    const-string v13, "ro.build.description"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 123
    .local v12, systemBuildNo:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 124
    new-instance v4, Landroid/content/Intent;

    const-string v13, "com.htc.rosie.ACTION_START_SCAN_HTC_WIDGET"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v4, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :try_start_1
    sget-object v13, Lcom/htc/launcher/GeneralPurposeReceiver;->syncScanDone:Ljava/lang/Object;

    const-wide/32 v15, 0x927c0

    move-wide v0, v15

    invoke-virtual {v13, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    .end local v4           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v14

    .line 187
    return-void

    .line 134
    :cond_1
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/launcher/WidgetPackageManager;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/htc/launcher/WidgetConverter;->convert(Landroid/content/Context;Lcom/htc/android/rosie/home/HostWidgetManager;)V

    .line 138
    invoke-direct/range {p0 .. p1}, Lcom/htc/launcher/WidgetPackageManager;->isNeedTransferSceneData(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 141
    invoke-static/range {p1 .. p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v11

    .line 142
    .local v11, sm:Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-virtual {v11}, Lcom/htc/htcSceneManager/scene/SceneManager;->clearAllScenes()V

    .line 144
    invoke-direct/range {p0 .. p1}, Lcom/htc/launcher/WidgetPackageManager;->getSceneListLocally(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v10

    .line 145
    .local v10, scenes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcSceneManager/scene/Scene;>;"
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v10}, Lcom/htc/htcSceneManager/scene/SceneManager;->UpgradeSceneByFOTA(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 146
    const-string v13, "launcher"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 147
    .local v5, laucherPref:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 148
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v13, "has_transfer_scene_data"

    const/4 v15, 0x1

    invoke-interface {v3, v13, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    const-string v13, "WidgetPackageManager"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 152
    .local v6, pref:Landroid/content/SharedPreferences;
    const-string v13, "CurrentWorkspace"

    const/4 v15, 0x1

    invoke-interface {v6, v13, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 153
    .local v2, currentSceneId:I
    invoke-virtual {v11, v2}, Lcom/htc/htcSceneManager/scene/SceneManager;->setCurrentScene(I)Z

    .line 155
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/htc/launcher/WidgetPackageManager;->resetPageInfo(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/SceneManager;)V

    .line 158
    .end local v2           #currentSceneId:I
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #laucherPref:Landroid/content/SharedPreferences;
    .end local v6           #pref:Landroid/content/SharedPreferences;
    .end local v10           #scenes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcSceneManager/scene/Scene;>;"
    .end local v11           #sm:Lcom/htc/htcSceneManager/scene/SceneManager;
    :cond_2
    const-string v13, "Widget"

    const-string v15, "cleanFoldersInDatabase"

    invoke-static {v13, v15}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static/range {p1 .. p1}, Lcom/htc/launcher/LauncherModel;->cleanFoldersInDatabase(Landroid/content/Context;)V

    .line 161
    const-string v13, "Widget"

    const-string v15, "deleteLiveFoldersFromDatabase"

    invoke-static {v13, v15}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static/range {p1 .. p1}, Lcom/htc/launcher/LauncherModel;->deleteLiveFoldersFromDatabase(Landroid/content/Context;)V

    .line 169
    new-instance v4, Landroid/content/Intent;

    const-string v13, "com.htc.rosie.ACTION_START_UPDATE_HTC_WIDGET"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .restart local v4       #intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    :try_start_3
    sget-object v13, Lcom/htc/launcher/GeneralPurposeReceiver;->syncScanDone:Ljava/lang/Object;

    const-wide/32 v15, 0x927c0

    move-wide v0, v15

    invoke-virtual {v13, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 179
    :goto_1
    :try_start_4
    invoke-direct/range {p0 .. p1}, Lcom/htc/launcher/WidgetPackageManager;->isNeedInitLaunchBar(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 180
    invoke-direct/range {p0 .. p1}, Lcom/htc/launcher/WidgetPackageManager;->initLaunchBarViaFota(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 186
    .end local v4           #intent:Landroid/content/Intent;
    .end local v7           #prefBuildNo:Ljava/lang/String;
    .end local v8           #preferences:Landroid/content/SharedPreferences;
    .end local v9           #scanDone:Z
    .end local v12           #systemBuildNo:Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v13

    .line 174
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v7       #prefBuildNo:Ljava/lang/String;
    .restart local v8       #preferences:Landroid/content/SharedPreferences;
    .restart local v9       #scanDone:Z
    .restart local v12       #systemBuildNo:Ljava/lang/String;
    :catch_0
    move-exception v13

    goto :goto_1

    .line 129
    :catch_1
    move-exception v13

    goto/16 :goto_0
.end method

.method private createSceneForUpdate(Landroid/content/Context;ILandroid/os/Bundle;Lcom/htc/htcSceneManager/scene/SceneManager;I)V
    .locals 8
    .parameter "context"
    .parameter "sceneIndex"
    .parameter "moduleBundle"
    .parameter "sm"
    .parameter "newSceneId"

    .prologue
    .line 610
    const-string v0, "scene_list"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 611
    .local v7, sceneNameListBundle:Landroid/os/Bundle;
    if-nez v7, :cond_0

    .line 612
    const-string v0, "Widget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSceneForUpdate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), There is no scene_list, we cannot update!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :goto_0
    return-void

    .line 615
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plenty_set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 616
    .local v6, sceneNameBundle:Landroid/os/Bundle;
    if-nez v6, :cond_1

    .line 617
    const-string v0, "Widget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSceneForUpdate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), cannot find this scene from scene name list!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 622
    :cond_1
    invoke-direct {p0, p2}, Lcom/htc/launcher/WidgetPackageManager;->getPresetShortcutKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p1, p5, v0}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteShortcuts(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V

    .line 623
    invoke-direct {p0, p3, p2}, Lcom/htc/launcher/WidgetPackageManager;->getPresetHtcWidgetKey(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p1, p5, v0}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteWidgets(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V

    .line 624
    invoke-direct {p0, p1, p2}, Lcom/htc/launcher/WidgetPackageManager;->getPresetAppWidgetKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p1, p5, v0}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteAppWidgets(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V

    .line 625
    invoke-direct {p0, p2}, Lcom/htc/launcher/WidgetPackageManager;->getPresetWallpaperKey(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v3, p5

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/launcher/WidgetPackageManager;->initWallpaper(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0
.end method

.method private static getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cursor"
    .parameter "strColumnName"

    .prologue
    .line 999
    const/4 v1, -0x1

    .line 1000
    .local v1, nIndex:I
    const/4 v2, 0x0

    .line 1001
    .local v2, strValue:Ljava/lang/String;
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1002
    if-ltz v1, :cond_0

    .line 1004
    :try_start_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1011
    :goto_0
    return-object v2

    .line 1005
    :catch_0
    move-exception v0

    .line 1006
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBString() e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1009
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBString() incorrect index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDefaultKey(I)Ljava/lang/String;
    .locals 2
    .parameter "workspaceId"

    .prologue
    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_widgets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHomeWallpaper(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/com.htc.launcher/files/home_wallpaper_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 696
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 697
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "content://customization_settings/SettingTable/application_Launcher"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 698
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 702
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 703
    const-string v2, "value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 704
    .local v9, idValue:I
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 705
    .local v6, buffer:[B
    invoke-static {v6}, Lcom/htc/launcher/Utilities;->byteArrayToBundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 709
    .local v7, bundle:Landroid/os/Bundle;
    if-eqz v8, :cond_0

    .line 710
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 715
    .end local v6           #buffer:[B
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #idValue:I
    :cond_0
    :goto_0
    return-object v7

    .line 709
    :cond_1
    if-eqz v8, :cond_2

    .line 710
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 714
    :cond_2
    const-string v2, "Widget"

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

    .line 715
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 709
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_3

    .line 710
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private getPresetAppWidgetKey(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "workspaceId"

    .prologue
    .line 1743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_app_widgets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getPresetDefaultQuickLaunchKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 747
    const-string v0, "default_quicklaunch"

    return-object v0
.end method

.method private getPresetFolderKey(I)Ljava/lang/String;
    .locals 2
    .parameter "workspaceId"

    .prologue
    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_folders"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPresetFxAppWidgetKey(I)Ljava/lang/String;
    .locals 2
    .parameter "workspaceId"

    .prologue
    .line 1668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_fx_widgets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPresetFxHtcWidgetKey(Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 3
    .parameter "moduleBundle"
    .parameter "id"

    .prologue
    .line 1534
    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasSocialAccount:Z

    if-eqz v2, :cond_1

    .line 1535
    invoke-direct {p0, p2}, Lcom/htc/launcher/WidgetPackageManager;->getTwitterWidgetKey(I)Ljava/lang/String;

    move-result-object v0

    .line 1536
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1537
    .local v1, widgetsBundle:Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 1538
    invoke-direct {p0, p2}, Lcom/htc/launcher/WidgetPackageManager;->getPresetFxAppWidgetKey(I)Ljava/lang/String;

    move-result-object v0

    .line 1543
    .end local v1           #widgetsBundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v0

    .line 1541
    .end local v0           #key:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2}, Lcom/htc/launcher/WidgetPackageManager;->getPresetFxAppWidgetKey(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_0
.end method

.method private getPresetHtcWidgetKey(Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 3
    .parameter "moduleBundle"
    .parameter "id"

    .prologue
    .line 1519
    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasSocialAccount:Z

    if-eqz v2, :cond_1

    .line 1520
    invoke-direct {p0, p2}, Lcom/htc/launcher/WidgetPackageManager;->getTwitterWidgetKey(I)Ljava/lang/String;

    move-result-object v0

    .line 1521
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1522
    .local v1, widgetsBundle:Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 1523
    invoke-direct {p0, p2}, Lcom/htc/launcher/WidgetPackageManager;->getDefaultKey(I)Ljava/lang/String;

    move-result-object v0

    .line 1528
    .end local v1           #widgetsBundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v0

    .line 1526
    .end local v0           #key:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2}, Lcom/htc/launcher/WidgetPackageManager;->getDefaultKey(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_0
.end method

.method private getPresetQuickLaunchKey(I)Ljava/lang/String;
    .locals 2
    .parameter "workspaceId"

    .prologue
    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_quicklaunch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPresetShortcutKey(I)Ljava/lang/String;
    .locals 2
    .parameter "workspaceId"

    .prologue
    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_shortcuts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPresetWallpaperKey(I)Ljava/lang/String;
    .locals 2
    .parameter "workspaceId"

    .prologue
    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSceneFileName(ZI)Ljava/lang/String;
    .locals 5
    .parameter "isPortrait"
    .parameter "sceneId"

    .prologue
    .line 317
    if-eqz p0, :cond_0

    .line 319
    const-string v1, "/data/data/com.htc.launcher/files/scenes_picker_%d.png"

    .line 325
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

    .line 327
    .local v0, fileName:Ljava/lang/String;
    return-object v0

    .line 323
    .end local v0           #fileName:Ljava/lang/String;
    .end local v1           #fileNameFormat:Ljava/lang/String;
    :cond_0
    const-string v1, "/data/data/com.htc.launcher/files/scenes_picker_land_%d.png"

    .restart local v1       #fileNameFormat:Ljava/lang/String;
    goto :goto_0
.end method

.method private getSceneListLocally(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 21
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcSceneManager/scene/Scene;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v16, scenes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcSceneManager/scene/Scene;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 223
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/htc/launcher/LauncherSettings$WidgetWorkspace;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 224
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 225
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    :cond_0
    new-instance v15, Lcom/htc/htcSceneManager/scene/Scene;

    invoke-direct {v15}, Lcom/htc/htcSceneManager/scene/Scene;-><init>()V

    .line 229
    .local v15, scene:Lcom/htc/htcSceneManager/scene/Scene;
    const-string v2, "display_name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 230
    .local v10, name:Ljava/lang/String;
    invoke-virtual {v15, v10}, Lcom/htc/htcSceneManager/scene/Scene;->setName(Ljava/lang/String;)V

    .line 232
    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 233
    .local v8, id:I
    invoke-virtual {v15, v8}, Lcom/htc/htcSceneManager/scene/Scene;->setId(I)V

    .line 235
    const-string v2, "status"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 236
    .local v17, status:I
    packed-switch v17, :pswitch_data_0

    .line 249
    sget-object v2, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->USER_SCENE:Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    invoke-virtual {v15, v2}, Lcom/htc/htcSceneManager/scene/Scene;->setSceneType(Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;)V

    .line 253
    :goto_0
    const-string v2, "translate_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 254
    .local v18, translateId:I
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/htc/htcSceneManager/scene/Scene;->setTranslateId(I)V

    .line 256
    const/4 v2, 0x1

    invoke-static {v2, v8}, Lcom/htc/launcher/WidgetPackageManager;->getSceneFileName(ZI)Ljava/lang/String;

    move-result-object v14

    .line 257
    .local v14, previewPortPath:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v13, previewPort:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 259
    const/16 v2, 0x1a4

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v14, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 262
    invoke-virtual {v15, v14}, Lcom/htc/htcSceneManager/scene/Scene;->setPreviewPathPort(Ljava/lang/String;)V

    .line 268
    :goto_1
    const/4 v2, 0x0

    invoke-static {v2, v8}, Lcom/htc/launcher/WidgetPackageManager;->getSceneFileName(ZI)Ljava/lang/String;

    move-result-object v12

    .line 269
    .local v12, previewLandPath:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .local v11, previewLand:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    const/16 v2, 0x1a4

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v12, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 274
    invoke-virtual {v15, v12}, Lcom/htc/htcSceneManager/scene/Scene;->setPreviewPathPort(Ljava/lang/String;)V

    .line 278
    :cond_1
    const-string v2, "wallpaper_component"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 281
    .local v9, liveWallpaperComponent:Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 283
    invoke-virtual {v15, v9}, Lcom/htc/htcSceneManager/scene/Scene;->setLiveWallpaperComponent(Ljava/lang/String;)V

    .line 296
    :cond_2
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    .end local v8           #id:I
    .end local v9           #liveWallpaperComponent:Ljava/lang/String;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #previewLand:Ljava/io/File;
    .end local v12           #previewLandPath:Ljava/lang/String;
    .end local v13           #previewPort:Ljava/io/File;
    .end local v14           #previewPortPath:Ljava/lang/String;
    .end local v15           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    .end local v17           #status:I
    .end local v18           #translateId:I
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_4
    return-object v16

    .line 238
    .restart local v8       #id:I
    .restart local v10       #name:Ljava/lang/String;
    .restart local v15       #scene:Lcom/htc/htcSceneManager/scene/Scene;
    .restart local v17       #status:I
    :pswitch_0
    sget-object v2, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->DEFAULT_SCENE:Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    invoke-virtual {v15, v2}, Lcom/htc/htcSceneManager/scene/Scene;->setSceneType(Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;)V

    goto :goto_0

    .line 243
    :pswitch_1
    sget-object v2, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->USER_SCENE:Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    invoke-virtual {v15, v2}, Lcom/htc/htcSceneManager/scene/Scene;->setSceneType(Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;)V

    goto :goto_0

    .line 246
    :pswitch_2
    sget-object v2, Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;->CUSTOMIZED_SCENE:Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;

    invoke-virtual {v15, v2}, Lcom/htc/htcSceneManager/scene/Scene;->setSceneType(Lcom/htc/htcSceneManager/scene/SceneManager$SceneType;)V

    goto :goto_0

    .line 265
    .restart local v13       #previewPort:Ljava/io/File;
    .restart local v14       #previewPortPath:Ljava/lang/String;
    .restart local v18       #translateId:I
    :cond_5
    const-string v2, "Widget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find scene "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " preview(port)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 286
    .restart local v9       #liveWallpaperComponent:Ljava/lang/String;
    .restart local v11       #previewLand:Ljava/io/File;
    .restart local v12       #previewLandPath:Ljava/lang/String;
    :cond_6
    invoke-static {v8}, Lcom/htc/launcher/WidgetPackageManager;->getHomeWallpaper(I)Ljava/lang/String;

    move-result-object v20

    .line 287
    .local v20, wallpaperPath:Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v19, wallpaper:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    const/16 v2, 0x1a4

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, v20

    invoke-static {v0, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 292
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/htc/htcSceneManager/scene/Scene;->setStaticWallpaperPath(Ljava/lang/String;)V

    goto :goto_2

    .line 236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSceneVersion(Landroid/os/Bundle;)I
    .locals 7
    .parameter "updateSceneBundle"

    .prologue
    const/4 v4, -0x1

    .line 631
    if-nez p1, :cond_1

    .line 649
    :cond_0
    :goto_0
    return v4

    .line 635
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    .line 636
    .local v3, size:I
    if-lez v3, :cond_0

    .line 641
    const/4 v0, 0x0

    .local v0, i:I
    if-ge v0, v3, :cond_0

    .line 642
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plenty_set"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 645
    .local v2, newSceneInfoBundle:Landroid/os/Bundle;
    const-string v5, "version"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 646
    .local v4, version:I
    goto :goto_0
.end method

.method private static getShortcutAppList(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lockscreen/widget/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 961
    const-string v0, "Widget"

    const-string v1, "getShortcutAppList()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/launcher/WidgetPackageManager;->URI_SHORTCUT_LIST:Landroid/net/Uri;

    const-string v5, "shortcut_id"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 963
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 968
    .local v8, shortcutInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lockscreen/widget/ShortcutInfo;>;"
    if-eqz v6, :cond_4

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 969
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    .end local v8           #shortcutInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lockscreen/widget/ShortcutInfo;>;"
    .local v9, shortcutInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lockscreen/widget/ShortcutInfo;>;"
    :cond_0
    :try_start_1
    const-string v0, "shortcut_package_name"

    invoke-static {v6, v0}, Lcom/htc/launcher/WidgetPackageManager;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 972
    .local v12, strPackageName:Ljava/lang/String;
    const-string v0, "shortcut_class_name"

    invoke-static {v6, v0}, Lcom/htc/launcher/WidgetPackageManager;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 973
    .local v11, strClassName:Ljava/lang/String;
    const-string v0, "shortcut_app_name"

    invoke-static {v6, v0}, Lcom/htc/launcher/WidgetPackageManager;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 974
    .local v10, strAppName:Ljava/lang/String;
    const-string v0, "Widget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lockscreen shortcut: appName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", className = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    new-instance v0, Lcom/htc/lockscreen/widget/ShortcutInfo;

    invoke-direct {v0, v12, v11, v10}, Lcom/htc/lockscreen/widget/ShortcutInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 977
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_0

    move-object v8, v9

    .line 990
    .end local v9           #shortcutInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lockscreen/widget/ShortcutInfo;>;"
    .end local v10           #strAppName:Ljava/lang/String;
    .end local v11           #strClassName:Ljava/lang/String;
    .end local v12           #strPackageName:Ljava/lang/String;
    .restart local v8       #shortcutInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lockscreen/widget/ShortcutInfo;>;"
    :cond_1
    :goto_0
    if-eqz v6, :cond_3

    .line 991
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 992
    :cond_2
    const/4 v6, 0x0

    .line 995
    :cond_3
    :goto_1
    return-object v8

    .line 979
    :cond_4
    if-nez v6, :cond_6

    .line 980
    :try_start_2
    const-string v0, "Widget"

    const-string v1, "We cannot get shortcut list cursor from lockscreen provider"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 987
    :catch_0
    move-exception v7

    .line 988
    .local v7, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v0, "Widget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShortcutAppList() e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 990
    if-eqz v6, :cond_3

    .line 991
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 992
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 982
    .end local v7           #e:Ljava/lang/Exception;
    :cond_6
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 983
    const-string v0, "Widget"

    const-string v1, "There is no shortcut in lockscreen shortcut provider"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 990
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_8

    .line 991
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 992
    :cond_7
    const/4 v6, 0x0

    :cond_8
    throw v0

    .line 990
    .end local v8           #shortcutInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lockscreen/widget/ShortcutInfo;>;"
    .restart local v9       #shortcutInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lockscreen/widget/ShortcutInfo;>;"
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9           #shortcutInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lockscreen/widget/ShortcutInfo;>;"
    .restart local v8       #shortcutInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lockscreen/widget/ShortcutInfo;>;"
    goto :goto_3

    .line 987
    .end local v8           #shortcutInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lockscreen/widget/ShortcutInfo;>;"
    .restart local v9       #shortcutInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lockscreen/widget/ShortcutInfo;>;"
    :catch_1
    move-exception v7

    move-object v8, v9

    .end local v9           #shortcutInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lockscreen/widget/ShortcutInfo;>;"
    .restart local v8       #shortcutInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lockscreen/widget/ShortcutInfo;>;"
    goto :goto_2
.end method

.method private getTwitterWidgetKey(I)Ljava/lang/String;
    .locals 2
    .parameter "workspaceId"

    .prologue
    .line 1509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_twitter_widgets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 360
    invoke-static {p1}, Lcom/htc/launcher/WidgetPackageManager;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    .line 361
    .local v2, moduleBundle:Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, names:[Ljava/lang/String;
    array-length v4, v3

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/launcher/WidgetPackageManager;->mCustomizeSceneName:[Ljava/lang/String;

    .line 363
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 364
    add-int/lit8 v1, v0, 0x1

    .line 365
    .local v1, i_1:I
    iget-object v4, p0, Lcom/htc/launcher/WidgetPackageManager;->mCustomizeSceneName:[Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/htc/launcher/WidgetPackageManager;->loadCustomizedWorkspaceName(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    .end local v1           #i_1:I
    :cond_0
    invoke-direct {p0, v2}, Lcom/htc/launcher/WidgetPackageManager;->loadSceneSettings(Landroid/os/Bundle;)V

    .line 368
    return-void
.end method

.method private initAccount(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    .line 1475
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 1476
    .local v2, acocuntManager:Landroid/accounts/AccountManager;
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 1477
    .local v1, accounts:[Landroid/accounts/Account;
    if-eqz v1, :cond_5

    .line 1478
    move-object v3, v1

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_5

    aget-object v0, v3, v4

    .line 1480
    .local v0, account:Landroid/accounts/Account;
    const-string v6, "com.htc.socialnetwork.flickr"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.htc.socialnetwork.facebook"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.htc.socialnetwork.plurk"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.htc.htctwitter"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.htc.twitter"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1486
    :cond_0
    iput-boolean v8, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasSocialAccount:Z

    .line 1494
    :cond_1
    const-string v6, "com.htc.android.mail.eas"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.htc.android.mail"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1497
    :cond_2
    iput-boolean v8, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasMailAccount:Z

    .line 1478
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1499
    :cond_4
    const-string v6, "com.htc.notes.account"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1501
    iput-boolean v8, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasNoteAccount:Z

    goto :goto_1

    .line 1505
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_5
    invoke-virtual {p0, p1}, Lcom/htc/launcher/WidgetPackageManager;->hasCommunityAccount(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasCommunityAccount:Z

    .line 1506
    return-void
.end method

.method private initFavoriteAppWidgets(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V
    .locals 32
    .parameter "moduleBundle"
    .parameter "context"
    .parameter "workspaceId"
    .parameter "key"

    .prologue
    .line 1749
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 1750
    .local v10, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v29

    .line 1751
    .local v29, widgetsBundle:Landroid/os/Bundle;
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    .line 1754
    if-eqz v29, :cond_4

    .line 1755
    invoke-virtual/range {v29 .. v29}, Landroid/os/Bundle;->size()I

    move-result v24

    .line 1757
    .local v24, size:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1758
    .local v6, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1759
    .local v5, bindSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 1762
    .local v3, allocatedAppWidgets:Z
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1763
    .local v21, pendingInserts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move/from16 v0, v24

    if-ge v13, v0, :cond_2

    .line 1764
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 1765
    .local v28, values:Landroid/content/ContentValues;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "plenty_set"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    add-int/lit8 v31, v13, 0x1

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1767
    move-object/from16 v0, v29

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 1769
    .local v9, childBundle:Landroid/os/Bundle;
    const-string v30, "show"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1770
    .local v23, showCondition:Ljava/lang/String;
    const-string v30, "hide"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1776
    .local v12, hideCondition:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v12}, Lcom/htc/launcher/WidgetPackageManager;->shouldShowItem(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_0

    .line 1763
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1779
    :cond_0
    const-string v30, "package_name"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1780
    .local v20, packageName:Ljava/lang/String;
    const-string v30, "app_widget_provider"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1781
    .local v4, appwidgetProvider:Ljava/lang/String;
    const-string v30, "screen"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1782
    .local v22, screen:Ljava/lang/String;
    const-string v30, "cell_x"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1783
    .local v7, cellX:Ljava/lang/String;
    const-string v30, "cell_y"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1784
    .local v8, cellY:Ljava/lang/String;
    const-string v30, "span_x"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1785
    .local v26, spanX:Ljava/lang/String;
    const-string v30, "span_y"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1786
    .local v27, spanY:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1787
    .local v17, intScreen:I
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1788
    .local v15, intCellX:I
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1789
    .local v16, intCellY:I
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1790
    .local v18, intSpanX:I
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1802
    .local v19, intSpanY:I
    new-instance v14, Lcom/htc/launcher/LauncherAppWidgetInfo;

    const/16 v30, -0x1

    move/from16 v0, v30

    invoke-direct {v14, v0}, Lcom/htc/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 1803
    .local v14, info:Lcom/htc/launcher/LauncherAppWidgetInfo;
    new-instance v30, Landroid/content/ComponentName;

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    iput-object v0, v14, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetComponent:Landroid/content/ComponentName;

    .line 1804
    invoke-virtual {v14}, Lcom/htc/launcher/LauncherAppWidgetInfo;->isTWM_Widget()Z

    move-result v30

    if-nez v30, :cond_1

    .line 1805
    sget-object v30, Lcom/htc/launcher/Launcher;->sDefaultAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    invoke-virtual/range {v30 .. v30}, Lcom/htc/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v30

    move/from16 v0, v30

    iput v0, v14, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 1806
    iget v0, v14, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1807
    iget-object v0, v14, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetComponent:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1808
    const/4 v3, 0x1

    .line 1813
    :cond_1
    :try_start_0
    const-string v30, "itemType"

    const/16 v31, 0x4

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1814
    const-string v30, "container"

    const/16 v31, -0x64

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1815
    const-string v30, "screen"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1816
    const-string v30, "cellX"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1817
    const-string v30, "cellY"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1818
    const-string v30, "spanX"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1819
    const-string v30, "spanY"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1820
    const-string v30, "appWidgetId"

    iget v0, v14, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1821
    const-string v30, "workspace_id"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1822
    const-string v30, "intent"

    iget-object v0, v14, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetComponent:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1826
    :catch_0
    move-exception v11

    .line 1827
    .local v11, ex:Ljava/lang/RuntimeException;
    const-string v30, "Widget"

    const-string v31, "Problem allocating appWidgetId"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1830
    .end local v4           #appwidgetProvider:Ljava/lang/String;
    .end local v7           #cellX:Ljava/lang/String;
    .end local v8           #cellY:Ljava/lang/String;
    .end local v9           #childBundle:Landroid/os/Bundle;
    .end local v11           #ex:Ljava/lang/RuntimeException;
    .end local v12           #hideCondition:Ljava/lang/String;
    .end local v14           #info:Lcom/htc/launcher/LauncherAppWidgetInfo;
    .end local v15           #intCellX:I
    .end local v16           #intCellY:I
    .end local v17           #intScreen:I
    .end local v18           #intSpanX:I
    .end local v19           #intSpanY:I
    .end local v20           #packageName:Ljava/lang/String;
    .end local v22           #screen:Ljava/lang/String;
    .end local v23           #showCondition:Ljava/lang/String;
    .end local v26           #spanX:Ljava/lang/String;
    .end local v27           #spanY:Ljava/lang/String;
    .end local v28           #values:Landroid/content/ContentValues;
    :cond_2
    sget-object v31, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v30, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Landroid/content/ContentValues;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1833
    if-eqz v3, :cond_4

    .line 1834
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .line 1835
    .local v25, sourceArray:[I
    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v13, v0, :cond_3

    .line 1836
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    aput v30, v25, v13

    .line 1835
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1838
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Lcom/htc/launcher/WidgetPackageManager;->launchAppWidgetBinder(Landroid/content/Context;[ILjava/util/ArrayList;)V

    .line 1842
    .end local v3           #allocatedAppWidgets:Z
    .end local v5           #bindSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6           #bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v13           #i:I
    .end local v21           #pendingInserts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v24           #size:I
    .end local v25           #sourceArray:[I
    :cond_4
    return-void
.end method

.method private initFavoriteFolders(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V
    .locals 27
    .parameter "moduleBundle"
    .parameter "context"
    .parameter "workspaceId"
    .parameter "key"

    .prologue
    .line 845
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v23

    .line 846
    .local v23, foldersBundle:Landroid/os/Bundle;
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    .line 848
    if-eqz v23, :cond_d

    .line 849
    invoke-virtual/range {v23 .. v23}, Landroid/os/Bundle;->size()I

    move-result v26

    .line 851
    .local v26, size:I
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 853
    .local v16, folderArray:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/16 v24, 0x0

    .local v24, i:I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plenty_set"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v24, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 856
    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 858
    .local v12, childBundle:Landroid/os/Bundle;
    new-instance v15, Lcom/htc/launcher/config/FavoriteData;

    invoke-direct {v15}, Lcom/htc/launcher/config/FavoriteData;-><init>()V

    .line 859
    .local v15, favdata:Lcom/htc/launcher/config/FavoriteData;
    const-string v2, "title"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/htc/launcher/config/FavoriteData;->title:Ljava/lang/String;

    .line 860
    move/from16 v0, p3

    iput v0, v15, Lcom/htc/launcher/config/FavoriteData;->workspaceId:I

    .line 862
    const-string v2, "itemtype"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 863
    .local v18, folderItemType:Ljava/lang/String;
    const-string v2, "package"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 864
    .local v19, folderPackage:Ljava/lang/String;
    const-string v2, "class"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 865
    .local v17, folderClass:Ljava/lang/String;
    const-string v2, "screen"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 866
    .local v20, folderScreen:Ljava/lang/String;
    const-string v2, "x"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 867
    .local v21, folderX:Ljava/lang/String;
    const-string v2, "y"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 869
    .local v22, folderY:Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 870
    const-string v2, "itemtype"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v15, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    .line 873
    :goto_1
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/htc/launcher/config/FavoriteData;->packageName:Ljava/lang/String;

    .line 874
    :cond_0
    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/htc/launcher/config/FavoriteData;->className:Ljava/lang/String;

    .line 875
    :cond_1
    if-eqz v20, :cond_2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v15, Lcom/htc/launcher/config/FavoriteData;->screen:I

    .line 876
    :cond_2
    if-eqz v21, :cond_3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v15, Lcom/htc/launcher/config/FavoriteData;->x:I

    .line 877
    :cond_3
    if-eqz v22, :cond_4

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v15, Lcom/htc/launcher/config/FavoriteData;->y:I

    .line 889
    :cond_4
    iget v2, v15, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    packed-switch v2, :pswitch_data_0

    .line 853
    :goto_2
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_0

    .line 872
    :cond_5
    const/4 v2, 0x2

    iput v2, v15, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    goto :goto_1

    .line 891
    :pswitch_0
    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/htc/launcher/LauncherModel;->getFolder(Landroid/content/Context;Lcom/htc/launcher/config/FavoriteData;)Lcom/htc/launcher/FolderInfo;

    move-result-object v3

    .line 893
    .local v3, folder:Lcom/htc/launcher/FolderInfo;
    if-eqz v3, :cond_8

    .line 894
    const-wide/16 v4, -0x64

    iget v6, v3, Lcom/htc/launcher/FolderInfo;->screen:I

    iget v7, v3, Lcom/htc/launcher/FolderInfo;->cellX:I

    iget v8, v3, Lcom/htc/launcher/FolderInfo;->cellY:I

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v9}, Lcom/htc/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)J

    move-result-wide v13

    .line 897
    .local v13, favId:J
    const-wide/16 v6, -0x1

    cmp-long v2, v13, v6

    if-eqz v2, :cond_6

    .line 898
    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/htc/launcher/LauncherModel;->sendItemAdded(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 903
    :cond_6
    const-wide/16 v6, -0x1

    cmp-long v2, v13, v6

    if-eqz v2, :cond_7

    .line 905
    iget-object v2, v15, Lcom/htc/launcher/config/FavoriteData;->title:Ljava/lang/String;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 908
    :cond_7
    const-string v2, "Widget"

    const-string v4, "insert fav folder error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 911
    .end local v13           #favId:J
    :cond_8
    const-string v2, "Widget"

    const-string v4, "get UserFolderInfo fail"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 915
    .end local v3           #folder:Lcom/htc/launcher/FolderInfo;
    :pswitch_1
    move-object/from16 v0, p2

    invoke-static {v15, v0}, Lcom/htc/launcher/LauncherModel;->getApplication(Lcom/htc/launcher/config/FavoriteData;Landroid/content/Context;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v5

    .line 917
    .local v5, app:Lcom/htc/launcher/ApplicationInfo;
    if-eqz v5, :cond_a

    .line 918
    const-string v2, "parent"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 920
    .local v25, parent:Ljava/lang/String;
    if-eqz v25, :cond_9

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 921
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v8, v5, Lcom/htc/launcher/ApplicationInfo;->screen:I

    iget v9, v5, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    iget v10, v5, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    const/4 v11, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v11}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V

    goto :goto_2

    .line 924
    :cond_9
    const-string v2, "Widget"

    const-string v4, "null parent folder"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 926
    .end local v25           #parent:Ljava/lang/String;
    :cond_a
    const-string v2, "Widget"

    const-string v4, "Application: getApplication fail"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 930
    .end local v5           #app:Lcom/htc/launcher/ApplicationInfo;
    :pswitch_2
    move-object/from16 v0, p2

    invoke-static {v15, v0}, Lcom/htc/launcher/LauncherModel;->getShortcut(Lcom/htc/launcher/config/FavoriteData;Landroid/content/Context;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v5

    .line 932
    .restart local v5       #app:Lcom/htc/launcher/ApplicationInfo;
    if-eqz v5, :cond_c

    .line 933
    const-string v2, "parent"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 935
    .restart local v25       #parent:Ljava/lang/String;
    if-eqz v25, :cond_b

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 936
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v8, v5, Lcom/htc/launcher/ApplicationInfo;->screen:I

    iget v9, v5, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    iget v10, v5, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    const/4 v11, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v11}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V

    goto/16 :goto_2

    .line 939
    :cond_b
    const-string v2, "Widget"

    const-string v4, "null parent folder"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 941
    .end local v25           #parent:Ljava/lang/String;
    :cond_c
    const-string v2, "Widget"

    const-string v4, "Application: getApplication fail"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 947
    .end local v5           #app:Lcom/htc/launcher/ApplicationInfo;
    .end local v12           #childBundle:Landroid/os/Bundle;
    .end local v15           #favdata:Lcom/htc/launcher/config/FavoriteData;
    .end local v16           #folderArray:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v17           #folderClass:Ljava/lang/String;
    .end local v18           #folderItemType:Ljava/lang/String;
    .end local v19           #folderPackage:Ljava/lang/String;
    .end local v20           #folderScreen:Ljava/lang/String;
    .end local v21           #folderX:Ljava/lang/String;
    .end local v22           #folderY:Ljava/lang/String;
    .end local v24           #i:I
    .end local v26           #size:I
    :cond_d
    return-void

    .line 889
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private initFavoriteFxWidgets(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V
    .locals 25
    .parameter "moduleBundle"
    .parameter "context"
    .parameter "workspaceId"
    .parameter "key"

    .prologue
    .line 1674
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v24

    .line 1678
    .local v24, widgetsBundle:Landroid/os/Bundle;
    if-eqz v24, :cond_1

    .line 1679
    invoke-virtual/range {v24 .. v24}, Landroid/os/Bundle;->size()I

    move-result v20

    .line 1680
    .local v20, size:I
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    .line 1683
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, v20

    if-ge v15, v0, :cond_1

    .line 1684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plenty_set"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1686
    move-object/from16 v0, v24

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 1688
    .local v12, childBundle:Landroid/os/Bundle;
    const-string v2, "show"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1689
    .local v19, showCondition:Ljava/lang/String;
    const-string v2, "hide"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1695
    .local v14, hideCondition:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14}, Lcom/htc/launcher/WidgetPackageManager;->shouldShowItem(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1683
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1698
    :cond_0
    const-string v2, "package_name"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1699
    .local v16, packageName:Ljava/lang/String;
    const-string v2, "provider_name"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1700
    .local v17, providerName:Ljava/lang/String;
    const-string v2, "widget_name"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1701
    .local v23, widgetName:Ljava/lang/String;
    const-string v2, "screen"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1702
    .local v18, screen:Ljava/lang/String;
    const-string v2, "cell_x"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1703
    .local v10, cellX:Ljava/lang/String;
    const-string v2, "cell_y"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1704
    .local v11, cellY:Ljava/lang/String;
    const-string v2, "span_x"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1705
    .local v21, spanX:Ljava/lang/String;
    const-string v2, "span_y"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1719
    .local v22, spanY:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1721
    new-instance v3, Lcom/htc/launcher/FxItemInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v3, v0, v1}, Lcom/htc/launcher/FxItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    .local v3, fxInfo:Lcom/htc/launcher/FxItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/WidgetPackageManager;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/HostWidgetManager;->allocWidgetId()I

    move-result v2

    iput v2, v3, Lcom/htc/launcher/FxItemInfo;->widgetId:I

    .line 1723
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/htc/launcher/FxItemInfo;->data:[B

    .line 1724
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/htc/launcher/FxItemInfo;->screen:I

    .line 1725
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/htc/launcher/FxItemInfo;->cellX:I

    .line 1726
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/htc/launcher/FxItemInfo;->cellY:I

    .line 1727
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/htc/launcher/FxItemInfo;->spanX:I

    .line 1728
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/htc/launcher/FxItemInfo;->spanY:I

    .line 1729
    move/from16 v0, p3

    iput v0, v3, Lcom/htc/launcher/FxItemInfo;->workspaceId:I

    .line 1730
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/htc/launcher/WidgetPackageManager;->initFxWidgetProperties(Lcom/htc/launcher/FxItemInfo;Landroid/os/Bundle;)V

    .line 1732
    const-wide/16 v4, -0x64

    iget v6, v3, Lcom/htc/launcher/FxItemInfo;->screen:I

    iget v7, v3, Lcom/htc/launcher/FxItemInfo;->cellX:I

    iget v8, v3, Lcom/htc/launcher/FxItemInfo;->cellY:I

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v9}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1735
    .end local v3           #fxInfo:Lcom/htc/launcher/FxItemInfo;
    :catch_0
    move-exception v13

    .line 1736
    .local v13, ex:Ljava/lang/Exception;
    const-string v2, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package/widget fail to added : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1740
    .end local v10           #cellX:Ljava/lang/String;
    .end local v11           #cellY:Ljava/lang/String;
    .end local v12           #childBundle:Landroid/os/Bundle;
    .end local v13           #ex:Ljava/lang/Exception;
    .end local v14           #hideCondition:Ljava/lang/String;
    .end local v15           #i:I
    .end local v16           #packageName:Ljava/lang/String;
    .end local v17           #providerName:Ljava/lang/String;
    .end local v18           #screen:Ljava/lang/String;
    .end local v19           #showCondition:Ljava/lang/String;
    .end local v20           #size:I
    .end local v21           #spanX:Ljava/lang/String;
    .end local v22           #spanY:Ljava/lang/String;
    .end local v23           #widgetName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static initFavoriteQuickLaunchs(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V
    .locals 22
    .parameter "moduleBundle"
    .parameter "context"
    .parameter "workspaceId"
    .parameter "key"

    .prologue
    .line 1137
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    .line 1138
    .local v15, quickLaunchsBundle:Landroid/os/Bundle;
    if-nez v15, :cond_0

    .line 1139
    invoke-static {}, Lcom/htc/launcher/WidgetPackageManager;->getPresetDefaultQuickLaunchKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    .line 1141
    :cond_0
    move/from16 v14, p2

    .line 1144
    .local v14, idx:I
    if-eqz v15, :cond_7

    .line 1145
    invoke-virtual {v15}, Landroid/os/Bundle;->size()I

    move-result v21

    .line 1148
    .local v21, size:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move/from16 v0, v21

    if-ge v13, v0, :cond_7

    .line 1149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plenty_set"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v13, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1151
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 1152
    .local v10, childBundle:Landroid/os/Bundle;
    const-string v2, "show"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1153
    .local v20, showCondition:Ljava/lang/String;
    const-string v2, "hide"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1159
    .local v12, hideCondition:Ljava/lang/String;
    new-instance v11, Lcom/htc/launcher/config/FavoriteData;

    invoke-direct {v11}, Lcom/htc/launcher/config/FavoriteData;-><init>()V

    .line 1163
    .local v11, favdata:Lcom/htc/launcher/config/FavoriteData;
    const-string v2, "package"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/launcher/config/FavoriteData;->packageName:Ljava/lang/String;

    .line 1164
    const-string v2, "class"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/launcher/config/FavoriteData;->className:Ljava/lang/String;

    .line 1165
    const-string v2, "url"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/launcher/config/FavoriteData;->url:Ljava/lang/String;

    .line 1166
    const-string v2, "title"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/launcher/config/FavoriteData;->title:Ljava/lang/String;

    .line 1167
    const-string v2, "icon"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/launcher/config/FavoriteData;->icon:Ljava/lang/String;

    .line 1177
    const-string v2, "removable"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/htc/launcher/config/FavoriteData;->removable:I

    .line 1178
    move/from16 v0, p2

    iput v0, v11, Lcom/htc/launcher/config/FavoriteData;->workspaceId:I

    .line 1180
    const-string v2, "itemtype"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1181
    .local v16, shortcutItemType:Ljava/lang/String;
    const-string v2, "screen"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1182
    .local v17, shortcutScreen:Ljava/lang/String;
    const-string v2, "x"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1183
    .local v18, shortcutX:Ljava/lang/String;
    const-string v2, "y"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1185
    .local v19, shortcutY:Ljava/lang/String;
    if-eqz v16, :cond_1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    .line 1186
    :cond_1
    if-eqz v17, :cond_2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/htc/launcher/config/FavoriteData;->screen:I

    .line 1187
    :cond_2
    if-eqz v18, :cond_3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/htc/launcher/config/FavoriteData;->x:I

    .line 1188
    :cond_3
    if-eqz v19, :cond_4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/htc/launcher/config/FavoriteData;->y:I

    .line 1198
    :cond_4
    iget v2, v11, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    packed-switch v2, :pswitch_data_0

    .line 1148
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1200
    :pswitch_0
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/htc/launcher/LauncherModel;->getApplication(Lcom/htc/launcher/config/FavoriteData;Landroid/content/Context;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v3

    .line 1202
    .local v3, app:Lcom/htc/launcher/ApplicationInfo;
    if-eqz v3, :cond_5

    .line 1204
    const-wide/16 v4, -0x65

    iget v6, v3, Lcom/htc/launcher/ApplicationInfo;->screen:I

    iget v7, v3, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    iget v8, v3, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v9}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V

    goto :goto_1

    .line 1208
    :cond_5
    const-string v2, "Widget"

    const-string v4, "Application: getApplication fail"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1212
    .end local v3           #app:Lcom/htc/launcher/ApplicationInfo;
    :pswitch_1
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/htc/launcher/LauncherModel;->getShortcut(Lcom/htc/launcher/config/FavoriteData;Landroid/content/Context;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v3

    .line 1214
    .restart local v3       #app:Lcom/htc/launcher/ApplicationInfo;
    if-eqz v3, :cond_6

    .line 1216
    const-wide/16 v4, -0x65

    iget v6, v3, Lcom/htc/launcher/ApplicationInfo;->screen:I

    iget v7, v3, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    iget v8, v3, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v9}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V

    goto :goto_1

    .line 1220
    :cond_6
    const-string v2, "Widget"

    const-string v4, "Shortcut: getShortcut fail"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1226
    .end local v3           #app:Lcom/htc/launcher/ApplicationInfo;
    .end local v10           #childBundle:Landroid/os/Bundle;
    .end local v11           #favdata:Lcom/htc/launcher/config/FavoriteData;
    .end local v12           #hideCondition:Ljava/lang/String;
    .end local v13           #i:I
    .end local v16           #shortcutItemType:Ljava/lang/String;
    .end local v17           #shortcutScreen:Ljava/lang/String;
    .end local v18           #shortcutX:Ljava/lang/String;
    .end local v19           #shortcutY:Ljava/lang/String;
    .end local v20           #showCondition:Ljava/lang/String;
    .end local v21           #size:I
    :cond_7
    return-void

    .line 1198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static initFavoriteQuickLaunchsViaIdleScreen(Landroid/content/Context;I)V
    .locals 19
    .parameter "context"
    .parameter "nSceneId"

    .prologue
    .line 1055
    invoke-static/range {p0 .. p0}, Lcom/htc/launcher/WidgetPackageManager;->getShortcutAppList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v18

    .line 1057
    .local v18, shortcutList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lockscreen/widget/ShortcutInfo;>;"
    if-nez v18, :cond_1

    .line 1132
    :cond_0
    return-void

    .line 1060
    :cond_1
    const-wide/16 v3, -0x1

    .line 1062
    .local v3, nFolderId:J
    invoke-static/range {v18 .. v18}, Lcom/htc/launcher/WidgetPackageManager;->isContainPhone(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1063
    const/4 v1, 0x0

    new-instance v5, Lcom/htc/lockscreen/widget/ShortcutInfo;

    const-string v6, "com.android.htccontacts"

    const-string v7, "com.android.htccontacts.DialerTabActivity"

    const-string v8, "Phone"

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/lockscreen/widget/ShortcutInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1065
    const-string v1, "Widget"

    const-string v5, "We will add phone app and group last two app"

    invoke-static {v1, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-static/range {p0 .. p1}, Lcom/htc/launcher/WidgetPackageManager;->addFolder(Landroid/content/Context;I)J

    move-result-wide v3

    .line 1071
    :cond_2
    move/from16 v16, p1

    .line 1074
    .local v16, nIdx:I
    if-eqz v18, :cond_0

    .line 1075
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v17

    .line 1078
    .local v17, nSize:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_0

    .line 1079
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/lockscreen/widget/ShortcutInfo;

    .line 1081
    .local v15, info:Lcom/htc/lockscreen/widget/ShortcutInfo;
    new-instance v13, Lcom/htc/launcher/config/FavoriteData;

    invoke-direct {v13}, Lcom/htc/launcher/config/FavoriteData;-><init>()V

    .line 1083
    .local v13, favdata:Lcom/htc/launcher/config/FavoriteData;
    invoke-virtual {v15}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/htc/launcher/config/FavoriteData;->packageName:Ljava/lang/String;

    .line 1084
    invoke-virtual {v15}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/htc/launcher/config/FavoriteData;->className:Ljava/lang/String;

    .line 1085
    invoke-virtual {v15}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/htc/launcher/config/FavoriteData;->title:Ljava/lang/String;

    .line 1093
    move/from16 v0, p1

    iput v0, v13, Lcom/htc/launcher/config/FavoriteData;->workspaceId:I

    .line 1095
    const/4 v1, 0x0

    iput v1, v13, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    .line 1096
    const/4 v1, 0x0

    iput v1, v13, Lcom/htc/launcher/config/FavoriteData;->screen:I

    .line 1097
    iput v14, v13, Lcom/htc/launcher/config/FavoriteData;->x:I

    .line 1098
    const/4 v1, 0x0

    iput v1, v13, Lcom/htc/launcher/config/FavoriteData;->y:I

    .line 1108
    iget v1, v13, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    packed-switch v1, :pswitch_data_0

    .line 1078
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1110
    :pswitch_0
    move-object/from16 v0, p0

    invoke-static {v13, v0}, Lcom/htc/launcher/LauncherModel;->getApplication(Lcom/htc/launcher/config/FavoriteData;Landroid/content/Context;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v2

    .line 1112
    .local v2, app:Lcom/htc/launcher/ApplicationInfo;
    if-eqz v2, :cond_4

    .line 1114
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    const/4 v1, 0x2

    if-le v14, v1, :cond_3

    .line 1115
    iget v5, v2, Lcom/htc/launcher/ApplicationInfo;->screen:I

    iget v6, v2, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    iget v7, v2, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V

    goto :goto_1

    .line 1119
    :cond_3
    const-wide/16 v7, -0x65

    iget v9, v2, Lcom/htc/launcher/ApplicationInfo;->screen:I

    iget v10, v2, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    iget v11, v2, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object v6, v2

    invoke-static/range {v5 .. v12}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V

    goto :goto_1

    .line 1125
    :cond_4
    const-string v1, "Widget"

    const-string v5, "Application: getApplication fail"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private initFavoriteShortcuts(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V
    .locals 21
    .parameter "moduleBundle"
    .parameter "context"
    .parameter "workspaceId"
    .parameter "key"

    .prologue
    .line 1231
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v18

    .line 1232
    .local v18, shortcutsBundle:Landroid/os/Bundle;
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    .line 1235
    if-eqz v18, :cond_7

    .line 1236
    invoke-virtual/range {v18 .. v18}, Landroid/os/Bundle;->size()I

    move-result v20

    .line 1239
    .local v20, size:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move/from16 v0, v20

    if-ge v13, v0, :cond_7

    .line 1240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plenty_set"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v13, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1242
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 1243
    .local v10, childBundle:Landroid/os/Bundle;
    const-string v2, "show"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1244
    .local v19, showCondition:Ljava/lang/String;
    const-string v2, "hide"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1249
    .local v12, hideCondition:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v12}, Lcom/htc/launcher/WidgetPackageManager;->shouldShowItem(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1239
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1252
    :cond_0
    new-instance v11, Lcom/htc/launcher/config/FavoriteData;

    invoke-direct {v11}, Lcom/htc/launcher/config/FavoriteData;-><init>()V

    .line 1256
    .local v11, favdata:Lcom/htc/launcher/config/FavoriteData;
    const-string v2, "package"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/launcher/config/FavoriteData;->packageName:Ljava/lang/String;

    .line 1257
    const-string v2, "class"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/launcher/config/FavoriteData;->className:Ljava/lang/String;

    .line 1258
    const-string v2, "url"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/launcher/config/FavoriteData;->url:Ljava/lang/String;

    .line 1259
    const-string v2, "title"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/launcher/config/FavoriteData;->title:Ljava/lang/String;

    .line 1260
    const-string v2, "icon"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/launcher/config/FavoriteData;->icon:Ljava/lang/String;

    .line 1270
    const-string v2, "removable"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/htc/launcher/config/FavoriteData;->removable:I

    .line 1271
    move/from16 v0, p3

    iput v0, v11, Lcom/htc/launcher/config/FavoriteData;->workspaceId:I

    .line 1273
    const-string v2, "itemtype"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1274
    .local v14, shortcutItemType:Ljava/lang/String;
    const-string v2, "screen"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1275
    .local v15, shortcutScreen:Ljava/lang/String;
    const-string v2, "x"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1276
    .local v16, shortcutX:Ljava/lang/String;
    const-string v2, "y"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1278
    .local v17, shortcutY:Ljava/lang/String;
    if-eqz v14, :cond_1

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    .line 1279
    :cond_1
    if-eqz v15, :cond_2

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/htc/launcher/config/FavoriteData;->screen:I

    .line 1280
    :cond_2
    if-eqz v16, :cond_3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/htc/launcher/config/FavoriteData;->x:I

    .line 1281
    :cond_3
    if-eqz v17, :cond_4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/htc/launcher/config/FavoriteData;->y:I

    .line 1291
    :cond_4
    iget v2, v11, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1293
    :pswitch_0
    move-object/from16 v0, p2

    invoke-static {v11, v0}, Lcom/htc/launcher/LauncherModel;->getApplication(Lcom/htc/launcher/config/FavoriteData;Landroid/content/Context;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v3

    .line 1295
    .local v3, app:Lcom/htc/launcher/ApplicationInfo;
    if-eqz v3, :cond_5

    .line 1297
    const-wide/16 v4, -0x64

    iget v6, v3, Lcom/htc/launcher/ApplicationInfo;->screen:I

    iget v7, v3, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    iget v8, v3, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v9}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V

    goto/16 :goto_1

    .line 1301
    :cond_5
    const-string v2, "Widget"

    const-string v4, "Application: getApplication fail"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1305
    .end local v3           #app:Lcom/htc/launcher/ApplicationInfo;
    :pswitch_1
    move-object/from16 v0, p2

    invoke-static {v11, v0}, Lcom/htc/launcher/LauncherModel;->getShortcut(Lcom/htc/launcher/config/FavoriteData;Landroid/content/Context;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v3

    .line 1307
    .restart local v3       #app:Lcom/htc/launcher/ApplicationInfo;
    if-eqz v3, :cond_6

    .line 1309
    const-wide/16 v4, -0x64

    iget v6, v3, Lcom/htc/launcher/ApplicationInfo;->screen:I

    iget v7, v3, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    iget v8, v3, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v9}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V

    goto/16 :goto_1

    .line 1313
    :cond_6
    const-string v2, "Widget"

    const-string v4, "Shortcut: getShortcut fail"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1319
    .end local v3           #app:Lcom/htc/launcher/ApplicationInfo;
    .end local v10           #childBundle:Landroid/os/Bundle;
    .end local v11           #favdata:Lcom/htc/launcher/config/FavoriteData;
    .end local v12           #hideCondition:Ljava/lang/String;
    .end local v13           #i:I
    .end local v14           #shortcutItemType:Ljava/lang/String;
    .end local v15           #shortcutScreen:Ljava/lang/String;
    .end local v16           #shortcutX:Ljava/lang/String;
    .end local v17           #shortcutY:Ljava/lang/String;
    .end local v19           #showCondition:Ljava/lang/String;
    .end local v20           #size:I
    :cond_7
    return-void

    .line 1291
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initFavoriteWidgets(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V
    .locals 24
    .parameter "moduleBundle"
    .parameter "context"
    .parameter "workspaceId"
    .parameter "key"

    .prologue
    .line 1549
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v23

    .line 1550
    .local v23, widgetsBundle:Landroid/os/Bundle;
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/WidgetPackageManager;->idx:I

    .line 1554
    if-eqz v23, :cond_2

    .line 1555
    invoke-virtual/range {v23 .. v23}, Landroid/os/Bundle;->size()I

    move-result v21

    .line 1558
    .local v21, size:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 1559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plenty_set"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, v16, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1561
    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 1563
    .local v13, childBundle:Landroid/os/Bundle;
    const-string v3, "show"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1564
    .local v20, showCondition:Ljava/lang/String;
    const-string v3, "hide"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1570
    .local v15, hideCondition:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v15}, Lcom/htc/launcher/WidgetPackageManager;->shouldShowItem(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1558
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1573
    :cond_0
    const-string v3, "package_name"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1574
    .local v18, packageName:Ljava/lang/String;
    const-string v3, "widget_name"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1581
    .local v22, widgetName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/WidgetPackageManager;->getWidgetItem(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/launcher/WidgetItem;

    move-result-object v17

    .line 1582
    .local v17, item:Lcom/htc/launcher/WidgetItem;
    if-nez v17, :cond_1

    .line 1583
    const-string v3, "Widget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package/widget not found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1588
    :cond_1
    :try_start_0
    const-string v3, "screen"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1589
    .local v19, screen:Ljava/lang/String;
    const-string v3, "cell_x"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1590
    .local v11, cellX:Ljava/lang/String;
    const-string v3, "cell_y"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1591
    .local v12, cellY:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1592
    .local v7, intScreen:I
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1593
    .local v8, intCellX:I
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1601
    .local v9, intCellY:I
    invoke-virtual/range {v17 .. v17}, Lcom/htc/launcher/WidgetItem;->newWidget()Lcom/htc/launcher/WidgetProxy;

    move-result-object v4

    .line 1602
    .local v4, widget:Lcom/htc/launcher/Widget;
    move/from16 v0, p3

    iput v0, v4, Lcom/htc/launcher/Widget;->workspaceId:I

    .line 1603
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/htc/launcher/WidgetPackageManager;->initWidgetProperties(Lcom/htc/launcher/Widget;Landroid/os/Bundle;)V

    .line 1604
    const-wide/16 v5, -0x64

    const/4 v10, 0x0

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v10}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1613
    .end local v4           #widget:Lcom/htc/launcher/Widget;
    .end local v7           #intScreen:I
    .end local v8           #intCellX:I
    .end local v9           #intCellY:I
    .end local v11           #cellX:Ljava/lang/String;
    .end local v12           #cellY:Ljava/lang/String;
    .end local v19           #screen:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 1614
    .local v14, ex:Ljava/lang/Exception;
    const-string v3, "Widget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package/widget fail to added : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1618
    .end local v13           #childBundle:Landroid/os/Bundle;
    .end local v14           #ex:Ljava/lang/Exception;
    .end local v15           #hideCondition:Ljava/lang/String;
    .end local v16           #i:I
    .end local v17           #item:Lcom/htc/launcher/WidgetItem;
    .end local v18           #packageName:Ljava/lang/String;
    .end local v20           #showCondition:Ljava/lang/String;
    .end local v21           #size:I
    .end local v22           #widgetName:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private initFxWidgetProperties(Lcom/htc/launcher/FxItemInfo;Landroid/os/Bundle;)V
    .locals 9
    .parameter "info"
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1645
    const/4 v5, 0x0

    .line 1646
    .local v5, props:Ljava/util/Properties;
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1647
    .local v1, ketSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1648
    .local v2, key:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v8, "property."

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1649
    if-nez v5, :cond_1

    .line 1650
    new-instance v5, Ljava/util/Properties;

    .end local v5           #props:Ljava/util/Properties;
    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 1652
    .restart local v5       #props:Ljava/util/Properties;
    :cond_1
    const-string v8, "property."

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1653
    .local v6, realKey:Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1655
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 1659
    .end local v2           #key:Ljava/lang/String;
    .end local v6           #realKey:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_3

    .line 1660
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1661
    .local v3, out:Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1662
    .local v4, out2:Ljava/io/ObjectOutputStream;
    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1663
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iput-object v8, p1, Lcom/htc/launcher/FxItemInfo;->data:[B

    .line 1665
    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .end local v4           #out2:Ljava/io/ObjectOutputStream;
    :cond_3
    return-void
.end method

.method private initLaunchBarViaFota(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 190
    invoke-static {p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v7

    .line 191
    .local v7, sm:Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-virtual {v7}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v6

    .line 192
    .local v6, scenes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcSceneManager/scene/Scene;>;"
    if-eqz v6, :cond_0

    .line 193
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 194
    .local v3, nSize:I
    if-lez v3, :cond_0

    .line 195
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/htcSceneManager/scene/Scene;

    .line 196
    .local v5, scene:Lcom/htc/htcSceneManager/scene/Scene;
    invoke-virtual {v5}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v2

    .line 197
    .local v2, nSceneId:I
    invoke-static {p1, v2}, Lcom/htc/launcher/WidgetPackageManager;->loadDefaultQuickLauch(Landroid/content/Context;I)V

    goto :goto_0

    .line 202
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #nSceneId:I
    .end local v3           #nSize:I
    .end local v5           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    :cond_0
    invoke-static {p1, v9}, Lcom/htc/launcher/WidgetPackageManager;->loadDefaultQuickLauch(Landroid/content/Context;I)V

    .line 203
    const-string v8, "WidgetPackageManager"

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 205
    .local v4, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 206
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "init_launch_bar"

    const/4 v9, 0x1

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 207
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 208
    return-void
.end method

.method private static initScenePagesInfo(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 17
    .parameter "moduleBundle"
    .parameter "context"

    .prologue
    .line 779
    const-string v4, "scene_list"

    .line 781
    .local v4, key:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 782
    .local v1, contentResolver:Landroid/content/ContentResolver;
    sget-object v14, Lcom/htc/launcher/LauncherSettings$ScenePagesInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v14, v15, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 784
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .local v6, pendingInserts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 787
    .local v9, sceneNameListBundle:Landroid/os/Bundle;
    if-nez v9, :cond_1

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    if-eqz v9, :cond_0

    .line 792
    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v12

    .line 795
    .local v12, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v12, :cond_7

    .line 796
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "plenty_set"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v3, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 799
    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 800
    .local v8, sceneNameBundle:Landroid/os/Bundle;
    const-string v14, "scenename"

    invoke-virtual {v8, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 803
    .local v10, sceneNameString:Ljava/lang/String;
    const-string v14, "pages_count"

    invoke-virtual {v8, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 804
    .local v11, scenePagesCount:Ljava/lang/String;
    const/4 v5, 0x7

    .line 805
    .local v5, pagesCount:I
    if-eqz v11, :cond_3

    .line 806
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 807
    const/4 v14, 0x1

    if-lt v5, v14, :cond_2

    const/4 v14, 0x7

    if-le v5, v14, :cond_3

    .line 809
    :cond_2
    const/4 v5, 0x7

    .line 814
    :cond_3
    const-string v14, "home_index"

    invoke-virtual {v8, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 815
    .local v7, sceneHomeIndex:Ljava/lang/String;
    const/4 v2, 0x3

    .line 816
    .local v2, homeIndex:I
    if-eqz v7, :cond_4

    .line 817
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 820
    :cond_4
    if-ge v2, v5, :cond_5

    if-gez v2, :cond_6

    .line 822
    :cond_5
    div-int/lit8 v2, v5, 0x2

    .line 826
    :cond_6
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 828
    .local v13, values:Landroid/content/ContentValues;
    const-string v14, "_id"

    add-int/lit8 v15, v3, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 829
    const-string v14, "scene_name"

    invoke-virtual {v13, v14, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v14, "pages_count"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 831
    const-string v14, "home_index"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 833
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 836
    .end local v2           #homeIndex:I
    .end local v5           #pagesCount:I
    .end local v7           #sceneHomeIndex:Ljava/lang/String;
    .end local v8           #sceneNameBundle:Landroid/os/Bundle;
    .end local v10           #sceneNameString:Ljava/lang/String;
    .end local v11           #scenePagesCount:Ljava/lang/String;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_7
    sget-object v15, Lcom/htc/launcher/LauncherSettings$ScenePagesInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    new-array v14, v14, [Landroid/content/ContentValues;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/content/ContentValues;

    invoke-virtual {v1, v15, v14}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto/16 :goto_0
.end method

.method private initWallpaper(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;I)V
    .locals 4
    .parameter "moduleBundle"
    .parameter "context"
    .parameter "workspaceId"
    .parameter "key"
    .parameter "index"

    .prologue
    .line 728
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.home.personalize.initWallpaper"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 729
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.home.personalize.init_scene_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 730
    const-string v1, "com.htc.home.personalize.isOOBE"

    sget-boolean v2, Lcom/htc/launcher/WallpaperManager;->isOOBE:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 731
    const-string v1, "com.htc.home.personalize.moduleBundle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 732
    const-string v1, "com.htc.home.personalize.wallpaperKey"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_wallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 735
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/launcher/WallpaperManager;->isOOBE:Z

    .line 736
    return-void
.end method

.method private initWidgetProperties(Lcom/htc/launcher/Widget;Landroid/os/Bundle;)V
    .locals 9
    .parameter "widget"
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1622
    const/4 v5, 0x0

    .line 1623
    .local v5, props:Ljava/util/Properties;
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1624
    .local v1, ketSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1625
    .local v2, key:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v8, "property."

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1626
    if-nez v5, :cond_1

    .line 1627
    new-instance v5, Ljava/util/Properties;

    .end local v5           #props:Ljava/util/Properties;
    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 1629
    .restart local v5       #props:Ljava/util/Properties;
    :cond_1
    const-string v8, "property."

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1630
    .local v6, realKey:Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1632
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 1636
    .end local v2           #key:Ljava/lang/String;
    .end local v6           #realKey:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_3

    .line 1637
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1638
    .local v3, out:Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1639
    .local v4, out2:Ljava/io/ObjectOutputStream;
    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1640
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iput-object v8, p1, Lcom/htc/launcher/Widget;->props:[B

    .line 1642
    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .end local v4           #out2:Ljava/io/ObjectOutputStream;
    :cond_3
    return-void
.end method

.method public static declared-synchronized instance(Landroid/content/Context;)Lcom/htc/launcher/WidgetPackageManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 93
    const-class v1, Lcom/htc/launcher/WidgetPackageManager;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/htc/launcher/WidgetPackageManager;->initialized:Z

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/htc/launcher/WidgetPackageManager;->sInstance:Lcom/htc/launcher/WidgetPackageManager;

    invoke-direct {v0, p0}, Lcom/htc/launcher/WidgetPackageManager;->checkScanDone(Landroid/content/Context;)V

    .line 95
    sget-object v0, Lcom/htc/launcher/WidgetPackageManager;->sInstance:Lcom/htc/launcher/WidgetPackageManager;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/htc/launcher/WidgetPackageManager;->scanWidgetItems(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/htc/launcher/WidgetPackageManager;->sInstance:Lcom/htc/launcher/WidgetPackageManager;

    invoke-direct {v0, p0}, Lcom/htc/launcher/WidgetPackageManager;->init(Landroid/content/Context;)V

    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/launcher/WidgetPackageManager;->initialized:Z

    .line 99
    :cond_0
    sget-object v0, Lcom/htc/launcher/WidgetPackageManager;->sInstance:Lcom/htc/launcher/WidgetPackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static instanceNoScan()Lcom/htc/launcher/WidgetPackageManager;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/htc/launcher/WidgetPackageManager;->sInstance:Lcom/htc/launcher/WidgetPackageManager;

    return-object v0
.end method

.method private static isContainPhone(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lockscreen/widget/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1019
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/lockscreen/widget/ShortcutInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/lockscreen/widget/ShortcutInfo;

    .line 1020
    .local v1, info:Lcom/htc/lockscreen/widget/ShortcutInfo;
    const-string v2, "com.android.htccontacts"

    invoke-virtual {v1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.android.htccontacts.DialerTabActivity"

    invoke-virtual {v1}, Lcom/htc/lockscreen/widget/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1022
    const-string v2, "Widget"

    const-string v3, "lockscreen shortcut contains phone AP"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const/4 v2, 0x1

    .line 1027
    .end local v1           #info:Lcom/htc/lockscreen/widget/ShortcutInfo;
    :goto_0
    return v2

    .line 1026
    :cond_1
    const-string v2, "Widget"

    const-string v3, "lockscreen shortcut do not contains phone AP"

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNeedInitLaunchBar(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 351
    const-string v4, "WidgetPackageManager"

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 352
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v4, "init_launch_bar"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 353
    .local v0, bDone:Z
    if-eqz v0, :cond_0

    .line 356
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private isNeedTransferSceneData(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 332
    const-string v6, "launcher"

    invoke-virtual {p1, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 333
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v6, "has_transfer_scene_data"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 334
    .local v0, done:Z
    if-eqz v0, :cond_0

    .line 347
    :goto_0
    return v4

    .line 337
    :cond_0
    const-string v6, "PersonalizeSummary"

    invoke-virtual {p1, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 338
    const-string v6, "com.htc.intent.ACTION_PERSONALIZE_SCENE_CHANGED"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, testResult:Ljava/lang/String;
    if-eqz v3, :cond_1

    move v4, v5

    .line 340
    goto :goto_0

    .line 342
    :cond_1
    const-string v6, "launcher"

    invoke-virtual {p1, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 343
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 344
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "has_transfer_scene_data"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 345
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static launchAppWidgetBinder(Landroid/content/Context;[ILjava/util/ArrayList;)V
    .locals 5
    .parameter "context"
    .parameter "bindSources"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1851
    .local p2, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1852
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.home.personalize"

    const-string v4, "com.htc.home.personalize.LauncherAppWidgetBinder"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1854
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1856
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1857
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "com.android.launcher.settings.bindsources"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1858
    const-string v2, "com.android.launcher.settings.bindtargets"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1859
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1861
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1862
    return-void
.end method

.method private loadCustomizedWorkspaceName(Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 5
    .parameter "moduleBundle"
    .parameter "index"

    .prologue
    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_widgets_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 379
    .local v2, sceneNameBundle:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 380
    const-string v3, "scene_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadDefaultQuickLauch(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "nSceneId"

    .prologue
    .line 211
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xad

    if-ne v1, v2, :cond_0

    .line 212
    invoke-static {p0, p1}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteQuickLaunchsViaIdleScreen(Landroid/content/Context;I)V

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-static {p0}, Lcom/htc/launcher/WidgetPackageManager;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 215
    .local v0, moduleBundle:Landroid/os/Bundle;
    const-string v1, "default_quicklaunch"

    invoke-static {v0, p0, p1, v1}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteQuickLaunchs(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private loadSceneSettings(Landroid/os/Bundle;)V
    .locals 3
    .parameter "moduleBundle"

    .prologue
    .line 388
    const-string v0, "scene"

    .line 390
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 393
    .local v1, sceneBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 394
    const-string v2, "scene_title_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mSceneTitleName:Ljava/lang/String;

    .line 397
    :cond_0
    return-void
.end method

.method public static manipulateResourcePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 2028
    if-eqz p0, :cond_0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2031
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
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

.method public static removeWidgetsFromDB(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "widgetId"

    .prologue
    const/4 v4, 0x0

    .line 1896
    if-eqz p0, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 1902
    :cond_0
    :goto_0
    return-void

    .line 1899
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1900
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v1, "Widget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeWidgetsFromDB id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/htc/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetPageInfo(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/SceneManager;)V
    .locals 8
    .parameter "context"
    .parameter "sm"

    .prologue
    const/4 v7, 0x0

    .line 755
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 756
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v6, Lcom/htc/launcher/LauncherSettings$ScenePagesInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v6, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 758
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v2, pendingInserts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p2}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v4

    .line 760
    .local v4, sceneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcSceneManager/scene/Scene;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcSceneManager/scene/Scene;

    .line 761
    .local v3, scene:Lcom/htc/htcSceneManager/scene/Scene;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 763
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "_id"

    invoke-virtual {v3}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 764
    const-string v6, "scene_name"

    invoke-virtual {v3}, Lcom/htc/htcSceneManager/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v6, "pages_count"

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 766
    const-string v6, "home_index"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 768
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 771
    .end local v3           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_0
    sget-object v7, Lcom/htc/launcher/LauncherSettings$ScenePagesInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    new-array v6, v6, [Landroid/content/ContentValues;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/ContentValues;

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 774
    return-void
.end method

.method private shouldShowItem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "showCondition"
    .parameter "hideCondition"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1978
    if-nez p1, :cond_5

    .line 1979
    if-nez p2, :cond_1

    .line 2022
    :cond_0
    :goto_0
    return v0

    .line 1981
    :cond_1
    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasSocialAccount:Z

    if-eqz v2, :cond_2

    .line 1982
    const-string v2, "social"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1983
    goto :goto_0

    .line 1985
    :cond_2
    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasMailAccount:Z

    if-eqz v2, :cond_3

    .line 1986
    const-string v2, "mail"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 1987
    goto :goto_0

    .line 1989
    :cond_3
    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasCommunityAccount:Z

    if-eqz v2, :cond_4

    .line 1990
    const-string v2, "community"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 1991
    goto :goto_0

    .line 1993
    :cond_4
    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasMailAccount:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasNoteAccount:Z

    if-eqz v2, :cond_0

    .line 1994
    const-string v2, "notes"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1995
    goto :goto_0

    .line 2000
    :cond_5
    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasSocialAccount:Z

    if-eqz v2, :cond_6

    .line 2001
    const-string v2, "social"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2005
    :cond_6
    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasMailAccount:Z

    if-eqz v2, :cond_7

    .line 2006
    const-string v2, "mail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2010
    :cond_7
    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasCommunityAccount:Z

    if-eqz v2, :cond_8

    .line 2011
    const-string v2, "community"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2015
    :cond_8
    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasNoteAccount:Z

    if-eqz v2, :cond_a

    .line 2016
    if-eqz p2, :cond_9

    const-string v2, "mail"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mHasMailAccount:Z

    if-eqz v2, :cond_9

    move v0, v1

    .line 2017
    goto :goto_0

    .line 2019
    :cond_9
    const-string v2, "notes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_a
    move v0, v1

    .line 2022
    goto :goto_0
.end method

.method private updateSceneVersion(Landroid/content/SharedPreferences;Landroid/os/Bundle;)V
    .locals 3
    .parameter "preferences"
    .parameter "updateSceneBundle"

    .prologue
    .line 653
    invoke-direct {p0, p2}, Lcom/htc/launcher/WidgetPackageManager;->getSceneVersion(Landroid/os/Bundle;)I

    move-result v1

    .line 655
    .local v1, sceneVersion:I
    if-lez v1, :cond_0

    .line 656
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 657
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "scene_update_version"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 658
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 660
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method


# virtual methods
.method public addWidgetsOnWorkspace(Lcom/htc/launcher/WidgetProxy;)V
    .locals 4
    .parameter "wProxy"

    .prologue
    .line 1927
    iget-object v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1934
    :goto_0
    return-void

    .line 1930
    :cond_0
    invoke-virtual {p1}, Lcom/htc/launcher/WidgetProxy;->getWidgetItem()Lcom/htc/launcher/WidgetItem;

    move-result-object v0

    .line 1931
    .local v0, item:Lcom/htc/launcher/WidgetItem;
    iget-object v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1932
    iget-object v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetsMap:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/htc/launcher/WidgetProxy;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getWidgetCountOnWorkspace(Lcom/htc/launcher/WidgetItem;)I
    .locals 10
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    .line 1905
    invoke-static {}, Lcom/htc/launcher/Launcher;->getModel()Lcom/htc/launcher/LauncherModel;

    move-result-object v7

    .line 1906
    .local v7, model:Lcom/htc/launcher/LauncherModel;
    if-nez v7, :cond_1

    move v2, v8

    .line 1923
    :cond_0
    :goto_0
    return v2

    .line 1910
    :cond_1
    const/4 v2, 0x0

    .line 1911
    .local v2, count:I
    invoke-virtual {v7}, Lcom/htc/launcher/LauncherModel;->getDesktopItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 1912
    .local v5, itemInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    if-nez v5, :cond_2

    move v2, v8

    .line 1913
    goto :goto_0

    .line 1916
    :cond_2
    new-array v8, v8, [Lcom/htc/launcher/ItemInfo;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/launcher/ItemInfo;

    .line 1917
    .local v1, arrayItemInfo:[Lcom/htc/launcher/ItemInfo;
    move-object v0, v1

    .local v0, arr$:[Lcom/htc/launcher/ItemInfo;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v4, v0, v3

    .line 1918
    .local v4, itemInfo:Lcom/htc/launcher/ItemInfo;
    iget v8, p1, Lcom/htc/launcher/WidgetItem;->mItemType:I

    iget v9, v4, Lcom/htc/launcher/ItemInfo;->itemType:I

    if-ne v8, v9, :cond_3

    .line 1919
    add-int/lit8 v2, v2, 0x1

    .line 1917
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getWidgetItem(I)Lcom/htc/launcher/WidgetItem;
    .locals 2
    .parameter "itemType"

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/WidgetItem;

    return-object v0
.end method

.method public getWidgetItem(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/launcher/WidgetItem;
    .locals 2
    .parameter "packageName"
    .parameter "widgetName"

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemStringMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/WidgetItem;

    return-object v0
.end method

.method public getWidgetItemList(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "categoryId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/WidgetItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/launcher/WidgetPackageManager;->mCategoryManager:Lcom/htc/launcher/WidgetCategoryManager;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/WidgetCategoryManager;->getItems(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getWidgetPackage(Ljava/lang/String;Landroid/content/Context;)Lcom/htc/launcher/WidgetPackage;
    .locals 5
    .parameter "packageName"
    .parameter "context"

    .prologue
    .line 1952
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetPackageMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/WidgetPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1953
    .local v1, wPackage:Lcom/htc/launcher/WidgetPackage;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 1969
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1957
    :cond_0
    if-eqz p2, :cond_1

    .line 1958
    :try_start_1
    new-instance v1, Lcom/htc/launcher/WidgetPackage;

    .end local v1           #wPackage:Lcom/htc/launcher/WidgetPackage;
    invoke-direct {v1}, Lcom/htc/launcher/WidgetPackage;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1960
    .restart local v1       #wPackage:Lcom/htc/launcher/WidgetPackage;
    const/4 v2, 0x3

    :try_start_2
    invoke-virtual {p2, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/launcher/WidgetPackage;->mPackageContext:Landroid/content/Context;

    .line 1962
    iget-object v2, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetPackageMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v1

    .line 1963
    goto :goto_0

    .line 1964
    :catch_0
    move-exception v0

    .line 1965
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v2, "Widget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widget package not found - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v2, "Widget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no context is given for create WidgetPackage instance (shall not happen) - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1969
    const/4 v2, 0x0

    goto :goto_0

    .line 1952
    .end local v1           #wPackage:Lcom/htc/launcher/WidgetPackage;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public hasCommunityAccount(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    .line 1405
    const/4 v10, -0x1

    sget v11, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mServiceSubscribe:I

    if-ne v10, v11, :cond_7

    .line 1408
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-nez v10, :cond_6

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0xd0

    if-ne v10, v11, :cond_6

    .line 1411
    if-nez p1, :cond_0

    .line 1413
    const/4 v10, 0x0

    .line 1471
    :goto_0
    return v10

    .line 1417
    :cond_0
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 1418
    .local v2, acocuntManager:Landroid/accounts/AccountManager;
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 1419
    .local v1, accounts:[Landroid/accounts/Account;
    const/4 v5, 0x0

    .line 1420
    .local v5, hasFound:Z
    if-eqz v1, :cond_2

    .line 1421
    move-object v3, v1

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v7, v3

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v0, v3, v6

    .line 1423
    .local v0, account:Landroid/accounts/Account;
    const-string v10, "com.htc.android.myphonebook"

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1425
    const/4 v5, 0x1

    .line 1421
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1429
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_2
    if-nez v5, :cond_3

    .line 1431
    const/4 v10, 0x0

    goto :goto_0

    .line 1436
    :cond_3
    new-instance v9, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;-><init>(Z)V

    .line 1437
    .local v9, service:Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/htc/clientprofileservice/IClientProfileService;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-virtual {p1, v10, v9, v11}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v8

    .line 1438
    .local v8, result:Z
    if-nez v8, :cond_4

    .line 1440
    const/4 v10, 0x0

    goto :goto_0

    .line 1443
    :cond_4
    const/4 v4, 0x0

    .line 1444
    .local v4, count:I
    :goto_2
    const/4 v10, -0x1

    sget v11, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mServiceSubscribe:I

    if-ne v10, v11, :cond_5

    const/4 v10, 0x2

    if-ge v4, v10, :cond_5

    .line 1446
    const-wide/16 v10, 0x1f4

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1451
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1454
    :cond_5
    invoke-virtual {p1, v9}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1455
    const/4 v9, 0x0

    .line 1456
    const/4 v10, 0x2

    if-ne v10, v4, :cond_7

    .line 1458
    const/4 v10, 0x0

    goto :goto_0

    .line 1465
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #acocuntManager:Landroid/accounts/AccountManager;
    .end local v4           #count:I
    .end local v5           #hasFound:Z
    .end local v8           #result:Z
    .end local v9           #service:Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;
    :cond_6
    const/4 v10, 0x0

    goto :goto_0

    .line 1471
    :cond_7
    sget v10, Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;->mServiceSubscribe:I

    if-nez v10, :cond_8

    const/4 v10, 0x0

    goto :goto_0

    :cond_8
    const/4 v10, 0x1

    goto :goto_0

    .line 1447
    .restart local v1       #accounts:[Landroid/accounts/Account;
    .restart local v2       #acocuntManager:Landroid/accounts/AccountManager;
    .restart local v4       #count:I
    .restart local v5       #hasFound:Z
    .restart local v8       #result:Z
    .restart local v9       #service:Lcom/htc/launcher/WidgetPackageManager$OperatorServiceCheck;
    :catch_0
    move-exception v10

    goto :goto_3
.end method

.method public initFavorites(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/LauncherModel;)V
    .locals 1
    .parameter "context"
    .parameter "model"

    .prologue
    .line 604
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/launcher/WidgetPackageManager;->initFavorites(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/LauncherModel;Z)V

    .line 605
    return-void
.end method

.method public initFavorites(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/LauncherModel;Z)V
    .locals 28
    .parameter "context"
    .parameter "model"
    .parameter "demoFLO"

    .prologue
    .line 503
    const-string v3, "WidgetPackageManager"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/htc/launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 505
    .local v23, preferences:Landroid/content/SharedPreferences;
    const-string v3, "Initialized"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 506
    .local v18, initialized:Z
    invoke-static/range {p1 .. p1}, Lcom/htc/launcher/WidgetPackageManager;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v6

    .line 507
    .local v6, moduleBundle:Landroid/os/Bundle;
    const-string v3, "update_scene"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v27

    .line 510
    .local v27, updateSceneBundle:Landroid/os/Bundle;
    if-nez p3, :cond_4

    .line 511
    if-eqz v18, :cond_3

    .line 513
    if-eqz v27, :cond_2

    .line 514
    const-string v3, "scene_update_version"

    const/4 v4, -0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 515
    .local v21, latestSceneVersion:I
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/htc/launcher/WidgetPackageManager;->getSceneVersion(Landroid/os/Bundle;)I

    move-result v14

    .line 517
    .local v14, currentSceneVersion:I
    move/from16 v0, v21

    if-le v14, v0, :cond_2

    .line 519
    invoke-virtual/range {v27 .. v27}, Landroid/os/Bundle;->size()I

    move-result v25

    .line 520
    .local v25, size:I
    if-lez v25, :cond_1

    .line 521
    const-string v20, "plenty_set1"

    .line 522
    .local v20, key:Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v22

    .line 523
    .local v22, newSceneInfoBundle:Landroid/os/Bundle;
    invoke-direct/range {p0 .. p1}, Lcom/htc/launcher/WidgetPackageManager;->initAccount(Landroid/content/Context;)V

    .line 524
    invoke-static/range {p1 .. p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v7

    .line 525
    .local v7, sm:Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-virtual/range {v22 .. v22}, Landroid/os/Bundle;->size()I

    move-result v3

    new-array v0, v3, [I

    move-object/from16 v26, v0

    .line 526
    .local v26, updataSceneIndexes:[I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    invoke-virtual/range {v22 .. v22}, Landroid/os/Bundle;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_0

    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scene_id_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v17, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 528
    .local v5, updateSceneIndex:I
    aput v5, v26, v17

    .line 526
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 530
    .end local v5           #updateSceneIndex:I
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Lcom/htc/htcSceneManager/scene/SceneManager;->createSceneFromSIE(Landroid/content/Context;[I)[I

    move-result-object v24

    .line 531
    .local v24, sceneIds:[I
    const/16 v17, 0x0

    :goto_1
    invoke-virtual/range {v22 .. v22}, Landroid/os/Bundle;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_1

    .line 533
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scene_id_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v17, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 534
    .restart local v5       #updateSceneIndex:I
    aget v8, v24, v17

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/htc/launcher/WidgetPackageManager;->createSceneForUpdate(Landroid/content/Context;ILandroid/os/Bundle;Lcom/htc/htcSceneManager/scene/SceneManager;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    .end local v5           #updateSceneIndex:I
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 535
    :catch_0
    move-exception v16

    .line 536
    .local v16, ex:Ljava/lang/NumberFormatException;
    const-string v3, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "newSceneInfoBundle.getString(scene_id_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v8, v17, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ") = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scene_id_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v17, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 542
    .end local v7           #sm:Lcom/htc/htcSceneManager/scene/SceneManager;
    .end local v16           #ex:Ljava/lang/NumberFormatException;
    .end local v17           #i:I
    .end local v20           #key:Ljava/lang/String;
    .end local v22           #newSceneInfoBundle:Landroid/os/Bundle;
    .end local v24           #sceneIds:[I
    .end local v26           #updataSceneIndexes:[I
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/htc/launcher/WidgetPackageManager;->updateSceneVersion(Landroid/content/SharedPreferences;Landroid/os/Bundle;)V

    .line 601
    .end local v14           #currentSceneVersion:I
    .end local v21           #latestSceneVersion:I
    .end local v25           #size:I
    :cond_2
    :goto_3
    return-void

    .line 547
    :cond_3
    if-eqz v27, :cond_4

    .line 550
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/htc/launcher/WidgetPackageManager;->updateSceneVersion(Landroid/content/SharedPreferences;Landroid/os/Bundle;)V

    .line 556
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v7

    .line 557
    .restart local v7       #sm:Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-virtual {v7}, Lcom/htc/htcSceneManager/scene/SceneManager;->clearAllScenes()V

    .line 558
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/htc/htcSceneManager/scene/SceneManager;->initCustomizeSceneData(Landroid/content/Context;)Landroid/os/Bundle;

    .line 560
    invoke-static/range {p1 .. p1}, Lcom/htc/launcher/LauncherModel;->deleteAllItemsFromDatabase(Landroid/content/Context;)V

    .line 569
    invoke-direct/range {p0 .. p1}, Lcom/htc/launcher/WidgetPackageManager;->initAccount(Landroid/content/Context;)V

    .line 571
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_4
    invoke-virtual {v7}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_5

    .line 572
    add-int/lit8 v11, v17, 0x1

    .line 573
    .local v11, i_1:I
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/launcher/WidgetPackageManager;->getPresetShortcutKey(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1, v11, v3}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteShortcuts(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V

    .line 574
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/launcher/WidgetPackageManager;->getPresetFolderKey(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1, v11, v3}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteFolders(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V

    .line 575
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lcom/htc/launcher/WidgetPackageManager;->getPresetHtcWidgetKey(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1, v11, v3}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteWidgets(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V

    .line 576
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lcom/htc/launcher/WidgetPackageManager;->getPresetFxHtcWidgetKey(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1, v11, v3}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteFxWidgets(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V

    .line 577
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/htc/launcher/WidgetPackageManager;->getPresetAppWidgetKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1, v11, v3}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteAppWidgets(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V

    .line 578
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/launcher/WidgetPackageManager;->getPresetQuickLaunchKey(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v6, v0, v11, v3}, Lcom/htc/launcher/WidgetPackageManager;->initFavoriteQuickLaunchs(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;)V

    .line 579
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/launcher/WidgetPackageManager;->getPresetWallpaperKey(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v8, p0

    move-object v9, v6

    move-object/from16 v10, p1

    move v13, v11

    invoke-direct/range {v8 .. v13}, Lcom/htc/launcher/WidgetPackageManager;->initWallpaper(Landroid/os/Bundle;Landroid/content/Context;ILjava/lang/String;I)V

    .line 571
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 582
    .end local v11           #i_1:I
    :cond_5
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Lcom/htc/htcSceneManager/scene/SceneManager;->setCurrentScene(I)Z

    .line 583
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Lcom/htc/launcher/Launcher;->mCurrentSceneId:I

    .line 585
    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/htc/launcher/WidgetPackageManager;->initScenePagesInfo(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 587
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/htc/launcher/LauncherModel;->duplicateAllItems(Landroid/content/Context;II)V

    .line 589
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 590
    .local v19, intent:Landroid/content/Intent;
    const-string v3, "com.htc.home.personalize.initFinish"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 594
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 595
    .local v15, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "Initialized"

    const/4 v4, 0x1

    invoke-interface {v15, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 596
    const-string v3, "init_launch_bar"

    const/4 v4, 0x1

    invoke-interface {v15, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 597
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 599
    invoke-static/range {p1 .. p1}, Lcom/htc/launcher/PagesManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/PagesManager;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/htc/launcher/PagesManager;->reset(Landroid/content/Context;)V

    goto/16 :goto_3
.end method

.method public loadHomeWallpaper(Lcom/htc/launcher/Launcher;Lcom/htc/htcSceneManager/scene/SceneManager;)V
    .locals 2
    .parameter "launcher"
    .parameter "sm"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 664
    new-instance v0, Lcom/htc/launcher/WidgetPackageManager$1;

    const-string v1, "loadHomeWallpaper"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/htc/launcher/WidgetPackageManager$1;-><init>(Lcom/htc/launcher/WidgetPackageManager;Ljava/lang/String;Lcom/htc/htcSceneManager/scene/SceneManager;Lcom/htc/launcher/Launcher;)V

    .line 692
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 693
    return-void
.end method

.method public newWidget(ILandroid/content/Context;J)Lcom/htc/launcher/WidgetProxy;
    .locals 5
    .parameter "itemType"
    .parameter "context"
    .parameter "widgetId"

    .prologue
    const/4 v2, 0x0

    .line 1877
    const-wide/16 v3, -0x1

    cmp-long v3, p3, v3

    if-eqz v3, :cond_0

    .line 1878
    iget-object v3, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetsMap:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/WidgetProxy;

    .line 1879
    .local v1, proxy:Lcom/htc/launcher/WidgetProxy;
    if-eqz v1, :cond_0

    .line 1892
    .end local v1           #proxy:Lcom/htc/launcher/WidgetProxy;
    :goto_0
    return-object v1

    .line 1885
    :cond_0
    iget-object v3, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/WidgetItem;

    .line 1886
    .local v0, item:Lcom/htc/launcher/WidgetItem;
    if-nez v0, :cond_1

    const/16 v3, 0x44c

    if-lt p1, v3, :cond_1

    .line 1887
    invoke-static {p2, p3, p4}, Lcom/htc/launcher/WidgetPackageManager;->removeWidgetsFromDB(Landroid/content/Context;J)V

    move-object v1, v2

    .line 1888
    goto :goto_0

    .line 1889
    :cond_1
    if-eqz v0, :cond_2

    .line 1890
    invoke-virtual {v0}, Lcom/htc/launcher/WidgetItem;->newWidget()Lcom/htc/launcher/WidgetProxy;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 1892
    goto :goto_0
.end method

.method public removeAllWidgetLayout(Lcom/htc/launcher/Launcher;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 1944
    :goto_0
    iget-object v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1945
    iget-object v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgets:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/WidgetProxy;

    .line 1946
    .local v0, proxy:Lcom/htc/launcher/WidgetProxy;
    invoke-virtual {v0, p1}, Lcom/htc/launcher/WidgetProxy;->onLayoutRemoved(Lcom/htc/launcher/Launcher;)V

    goto :goto_0

    .line 1948
    .end local v0           #proxy:Lcom/htc/launcher/WidgetProxy;
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1949
    return-void
.end method

.method public removeWidgetsOnWorkspace(Lcom/htc/launcher/WidgetProxy;)V
    .locals 4
    .parameter "wProxy"

    .prologue
    .line 1937
    invoke-virtual {p1}, Lcom/htc/launcher/WidgetProxy;->getWidgetItem()Lcom/htc/launcher/WidgetItem;

    move-result-object v0

    .line 1938
    .local v0, item:Lcom/htc/launcher/WidgetItem;
    iget-object v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetsMap:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/htc/launcher/WidgetProxy;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    iget-object v1, p0, Lcom/htc/launcher/WidgetPackageManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1941
    return-void
.end method

.method scanWidgetItems(Landroid/content/Context;Ljava/lang/String;)V
    .locals 29
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 411
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 412
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 413
    .local v9, cursor:Landroid/database/Cursor;
    if-nez p2, :cond_1

    .line 415
    sget-object v3, Lcom/htc/launcher/LauncherSettings$WidgetItemTypes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "item_category!=0"

    const/4 v6, 0x0

    const-string v7, "parent_id ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 438
    :goto_0
    if-nez v9, :cond_4

    .line 439
    const-string v3, "Widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scanWidgetItems("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), cannot get cursor. The widget list may be empty."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    :goto_1
    return-void

    .line 420
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/htc/launcher/WidgetItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Lcom/htc/launcher/WidgetItem;

    .line 421
    .local v26, items:[Lcom/htc/launcher/WidgetItem;
    move-object/from16 v8, v26

    .local v8, arr$:[Lcom/htc/launcher/WidgetItem;
    array-length v0, v8

    move/from16 v27, v0

    .local v27, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_2
    move/from16 v0, v27

    if-ge v10, v0, :cond_3

    aget-object v25, v8, v10

    .line 422
    .local v25, item:Lcom/htc/launcher/WidgetItem;
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/htc/launcher/WidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemList:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemMap:Ljava/util/HashMap;

    move-object/from16 v0, v25

    iget v4, v0, Lcom/htc/launcher/WidgetItem;->mItemType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/WidgetPackageManager;->mCategoryManager:Lcom/htc/launcher/WidgetCategoryManager;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/htc/launcher/WidgetCategoryManager;->unbindCategory(Lcom/htc/launcher/WidgetItem;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemStringMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/htc/launcher/WidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/htc/launcher/WidgetItem;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 431
    .end local v25           #item:Lcom/htc/launcher/WidgetItem;
    :cond_3
    sget-object v3, Lcom/htc/launcher/LauncherSettings$WidgetItemTypes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "item_category!=0 AND package_name=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const-string v7, "parent_id ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_0

    .line 443
    .end local v8           #arr$:[Lcom/htc/launcher/WidgetItem;
    .end local v10           #i$:I
    .end local v26           #items:[Lcom/htc/launcher/WidgetItem;
    .end local v27           #len$:I
    :cond_4
    const-string v3, "_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 444
    .local v13, idxId:I
    const-string v3, "package_name"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 445
    .local v16, idxPackageName:I
    const-string v3, "plugin_classname"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 446
    .local v18, idxPluginClassname:I
    const-string v3, "widget_name"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 447
    .local v22, idxWidgetName:I
    const-string v3, "item_category"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 448
    .local v14, idxItemCategory:I
    const-string v3, "parent_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 449
    .local v17, idxParentId:I
    const-string v3, "text_resource"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 450
    .local v21, idxTextResource:I
    const-string v3, "icon_resource"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 451
    .local v12, idxIconResource:I
    const-string v3, "span_x"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 452
    .local v19, idxSpanX:I
    const-string v3, "span_y"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 453
    .local v20, idxSpanY:I
    const-string v3, "layout_resource"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 454
    .local v15, idxLayoutResource:I
    const-string v3, "extra_properties"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 457
    .local v11, idxExtraProperties:I
    :cond_5
    :goto_3
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 458
    new-instance v25, Lcom/htc/launcher/WidgetItem;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/htc/launcher/WidgetItem;-><init>(Landroid/content/Context;)V

    .line 459
    .restart local v25       #item:Lcom/htc/launcher/WidgetItem;
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v25

    iput v3, v0, Lcom/htc/launcher/WidgetItem;->mItemType:I

    .line 460
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/htc/launcher/WidgetItem;->mPackageName:Ljava/lang/String;

    .line 461
    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/htc/launcher/WidgetItem;->mPluginClassname:Ljava/lang/String;

    .line 462
    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/htc/launcher/WidgetItem;->mWidgetName:Ljava/lang/String;

    .line 463
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v25

    iput v3, v0, Lcom/htc/launcher/WidgetItem;->mItemCategory:I

    .line 464
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v25

    iput v3, v0, Lcom/htc/launcher/WidgetItem;->mTextResource:I

    .line 465
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v25

    iput v3, v0, Lcom/htc/launcher/WidgetItem;->mIconResource:I

    .line 466
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v25

    iput v3, v0, Lcom/htc/launcher/WidgetItem;->mSpanX:I

    .line 467
    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v25

    iput v3, v0, Lcom/htc/launcher/WidgetItem;->mSpanY:I

    .line 468
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v25

    iput v3, v0, Lcom/htc/launcher/WidgetItem;->mLayoutResource:I

    .line 469
    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v25

    iput v3, v0, Lcom/htc/launcher/WidgetItem;->mParentId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :try_start_1
    new-instance v23, Ljava/io/ByteArrayInputStream;

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 473
    .local v23, in:Ljava/io/ByteArrayInputStream;
    new-instance v24, Ljava/io/ObjectInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 474
    .local v24, in2:Ljava/io/ObjectInputStream;
    invoke-virtual/range {v24 .. v24}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Properties;

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/htc/launcher/WidgetItem;->mProps:Ljava/util/Properties;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 480
    .end local v23           #in:Ljava/io/ByteArrayInputStream;
    .end local v24           #in2:Ljava/io/ObjectInputStream;
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemList:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemMap:Ljava/util/HashMap;

    move-object/from16 v0, v25

    iget v4, v0, Lcom/htc/launcher/WidgetItem;->mItemType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/WidgetPackageManager;->mCategoryManager:Lcom/htc/launcher/WidgetCategoryManager;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/htc/launcher/WidgetCategoryManager;->bindCategory(Lcom/htc/launcher/WidgetItem;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemStringMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/htc/launcher/WidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/htc/launcher/WidgetItem;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    move-object/from16 v0, v25

    iget v3, v0, Lcom/htc/launcher/WidgetItem;->mParentId:I

    if-lez v3, :cond_5

    .line 487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/WidgetPackageManager;->mWidgetItemMap:Ljava/util/HashMap;

    move-object/from16 v0, v25

    iget v4, v0, Lcom/htc/launcher/WidgetItem;->mParentId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/htc/launcher/WidgetItem;

    .line 488
    .local v28, parentItem:Lcom/htc/launcher/WidgetItem;
    if-eqz v28, :cond_5

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/launcher/WidgetItem;->addChild(Lcom/htc/launcher/WidgetItem;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 492
    .end local v25           #item:Lcom/htc/launcher/WidgetItem;
    .end local v28           #parentItem:Lcom/htc/launcher/WidgetItem;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_6

    .line 493
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3

    .line 492
    :cond_7
    if-eqz v9, :cond_0

    .line 493
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 475
    .restart local v25       #item:Lcom/htc/launcher/WidgetItem;
    :catch_0
    move-exception v3

    goto :goto_4
.end method

.method public setFxWidgetManager(Lcom/htc/android/rosie/home/HostWidgetManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/htc/launcher/WidgetPackageManager;->mFxWidgetManager:Lcom/htc/android/rosie/home/HostWidgetManager;

    .line 108
    return-void
.end method

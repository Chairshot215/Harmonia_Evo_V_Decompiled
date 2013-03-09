.class public Lcom/htc/idlescreen/base/setting/SettingDB;
.super Ljava/lang/Object;
.source "SettingDB.java"


# static fields
.field public static final ACTION_REMOVE_PACKAGE:Ljava/lang/String; = "setting_action_remove_package"

.field public static final ACTION_UPDATE_CUSTOMIZE:Ljava/lang/String; = "setting_action_update_shortcut_customize"

.field public static final ACTION_UPDATE_PACKAGE:Ljava/lang/String; = "setting_action_update_package"

.field public static final ACTION_UPDATE_SHORTCUT_DB:Ljava/lang/String; = "setting_action_update_shortcut_DB"

.field public static final ACTION_UPDATE_SHORTCUT_LIST:Ljava/lang/String; = "setting_action_update_shortcut_list"

.field public static final ACTION_UPDATE_SHORTCUT_VISIBILITY:Ljava/lang/String; = "setting_action_update_shortcut_visibility"

.field public static final COL_IDLESCREEN_STYLE:Ljava/lang/String; = "idlescreen_style"

.field public static final COL_SC_APPNAME:Ljava/lang/String; = "shortcut_app_name"

.field public static final COL_SC_CLASSNAME:Ljava/lang/String; = "shortcut_class_name"

.field public static final COL_SC_ICON:Ljava/lang/String; = "shortcut_icon"

.field public static final COL_SC_ID:Ljava/lang/String; = "shortcut_id"

.field public static final COL_SC_PACKAGENAME:Ljava/lang/String; = "shortcut_package_name"

.field public static final COL_SC_VISIBILITY:Ljava/lang/String; = "shortcut_visibility"

.field private static final CUSTOMIZATION_URI_STRING:Ljava/lang/String; = "content://customization_settings/SettingTable/application_Lockscreen"

.field public static final DB_AUTHORITY:Ljava/lang/String; = "com.htc.idlescreen.setting.provider"

.field public static final DB_IDLESCREEN_STYLE:Ljava/lang/String; = "idlescreen_style"

.field public static final DB_SHORTCUT_APPNAME:[Ljava/lang/String; = null

.field public static final DB_SHORTCUT_CLASSNAME:[Ljava/lang/String; = null

.field public static final DB_SHORTCUT_DEFAULT:Ljava/lang/String; = "shortcut_default"

.field public static final DB_SHORTCUT_LIST:Ljava/lang/String; = "shortcut_list"

.field public static final DB_SHORTCUT_PACKAGENAME:[Ljava/lang/String; = null

.field public static final DB_SHORTCUT_VISIBILITY:Ljava/lang/String; = "shortcut_visibility"

.field private static final DEFAULT_VISIBILITY:I = 0x1

.field private static final KEY_CLASS:Ljava/lang/String; = "class"

.field private static final KEY_ORDER:Ljava/lang/String; = "order"

.field private static final KEY_PACKAGE:Ljava/lang/String; = "package"

.field private static final KEY_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final KEY_SHORTCUT_VISIBILITY:Ljava/lang/String; = "shortcut_visibility"

.field private static final KEY_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final LOG_PREFIX:Ljava/lang/String; = "SettingDB"

.field public static final SETTING_ACTION:Ljava/lang/String; = "setting_action"

.field public static final SETTING_DB_SHORTCUT01_APPNAME:Ljava/lang/String; = "com.htc.idlescreen.shortcut01_appname"

.field public static final SETTING_DB_SHORTCUT01_CLASSNAME:Ljava/lang/String; = "com.htc.idlescreen.shortcut01"

.field public static final SETTING_DB_SHORTCUT01_PACKAGENAME:Ljava/lang/String; = "com.htc.idlescreen.shortcut01_package"

.field public static final SETTING_DB_SHORTCUT02_APPNAME:Ljava/lang/String; = "com.htc.idlescreen.app.shortcut02_appname"

.field public static final SETTING_DB_SHORTCUT02_CLASSNAME:Ljava/lang/String; = "com.htc.idlescreen.shortcut02"

.field public static final SETTING_DB_SHORTCUT02_PACKAGENAME:Ljava/lang/String; = "com.htc.idlescreen.app.shortcut02_package"

.field public static final SETTING_DB_SHORTCUT03_APPNAME:Ljava/lang/String; = "com.htc.idlescreen.app.shortcut03_appname"

.field public static final SETTING_DB_SHORTCUT03_CLASSNAME:Ljava/lang/String; = "com.htc.idlescreen.shortcut03"

.field public static final SETTING_DB_SHORTCUT03_PACKAGENAME:Ljava/lang/String; = "com.htc.idlescreen.app.shortcut03_package"

.field public static final SETTING_DB_SHORTCUT04_APPNAME:Ljava/lang/String; = "com.htc.idlescreen.app.shortcut04_appname"

.field public static final SETTING_DB_SHORTCUT04_CLASSNAME:Ljava/lang/String; = "com.htc.idlescreen.shortcut04"

.field public static final SETTING_DB_SHORTCUT04_PACKAGENAME:Ljava/lang/String; = "com.htc.idlescreen.app.shortcut04_package"

.field public static final SETTING_DB_SHORTCUT_APPNAME_NUMBER:I = 0x4

.field public static final SETTING_DB_SHORTCUT_APPNAME_PHONE:Ljava/lang/String; = "com.htc.intent.action.IDLESCREEN_SHORTCUT_PHONE"

.field public static final SETTING_DB_SHORTCUT_APPNAME_TABLET:Ljava/lang/String; = "com.htc.intent.action.IDLESCREEN_SHORTCUT_TABLET"

.field public static final SETTING_DB_SHORTCUT_CELLX:Ljava/lang/String; = "cellX"

.field public static final SETTING_DB_SHORTCUT_CLASSNAME:Ljava/lang/String; = "className"

.field public static final SETTING_DB_SHORTCUT_ICON:Ljava/lang/String; = "icon"

.field public static final SETTING_DB_SHORTCUT_ICONPACKAGE:Ljava/lang/String; = "iconPackage"

.field public static final SETTING_DB_SHORTCUT_ICONRESOURCE:Ljava/lang/String; = "iconResource"

.field public static final SETTING_DB_SHORTCUT_ICONTYPE:Ljava/lang/String; = "iconType"

.field public static final SETTING_DB_SHORTCUT_ID:Ljava/lang/String; = "_id"

.field public static final SETTING_DB_SHORTCUT_INTENT:Ljava/lang/String; = "intent"

.field public static final SETTING_DB_SHORTCUT_ITEMTYPE:Ljava/lang/String; = "itemType"

.field public static final SETTING_DB_SHORTCUT_NOTIFYCOUNT:Ljava/lang/String; = "notifyCount"

.field public static final SETTING_DB_SHORTCUT_PACKAGENAME:Ljava/lang/String; = "packageName"

.field public static final SETTING_DB_SHORTCUT_TITLE:Ljava/lang/String; = "title"

.field public static final SETTING_DB_SHORTCUT_VISIBILITY:Ljava/lang/String; = "com.htc.idlescreen.app.shortcut_visibility"

.field public static final SETTING_SERVICE:Ljava/lang/String; = "com.htc.idlescreen.setting.service"

.field public static final SETTING_VALUE:Ljava/lang/String; = "setting_value"

.field public static final SHDB_AUTHORITY:Ljava/lang/String; = "com.htc.idlescreen.setting.shortcutprovider"

.field private static final SHORTCUT_COUNT:I = 0x4

.field public static final SH_KEY_IDLESCREEN_STYLE:Ljava/lang/String; = "idlescreen_style"

.field public static final URI_DB_SHORTCUT_LIST:Landroid/net/Uri;

.field public static final URI_LAUNCHER_SHORTCUT_LIST:Landroid/net/Uri;

.field public static final URI_SHORTCUT_DEFAULT:Landroid/net/Uri;

.field public static final URI_SHORTCUT_LIST:Landroid/net/Uri;

.field public static final URI_SHORTCUT_VISIBILITY:Landroid/net/Uri;

.field private static mInstance:Lcom/htc/idlescreen/base/setting/SettingDB;

.field public static mShortcutExist:Z


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/idlescreen/base/setting/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutSynced:Z

.field private mShortcutVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    const-string v0, "content://com.htc.idlescreen.setting.provider/shortcut_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/idlescreen/base/setting/SettingDB;->URI_SHORTCUT_LIST:Landroid/net/Uri;

    .line 57
    const-string v0, "content://com.htc.idlescreen.setting.provider/shortcut_default"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/idlescreen/base/setting/SettingDB;->URI_SHORTCUT_DEFAULT:Landroid/net/Uri;

    .line 58
    const-string v0, "content://com.htc.idlescreen.setting.provider/shortcut_visibility"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/idlescreen/base/setting/SettingDB;->URI_SHORTCUT_VISIBILITY:Landroid/net/Uri;

    .line 95
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.htc.idlescreen.shortcut01"

    aput-object v1, v0, v2

    const-string v1, "com.htc.idlescreen.shortcut02"

    aput-object v1, v0, v3

    const-string v1, "com.htc.idlescreen.shortcut03"

    aput-object v1, v0, v4

    const-string v1, "com.htc.idlescreen.shortcut04"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/idlescreen/base/setting/SettingDB;->DB_SHORTCUT_CLASSNAME:[Ljava/lang/String;

    .line 101
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.htc.idlescreen.shortcut01_package"

    aput-object v1, v0, v2

    const-string v1, "com.htc.idlescreen.app.shortcut02_package"

    aput-object v1, v0, v3

    const-string v1, "com.htc.idlescreen.app.shortcut03_package"

    aput-object v1, v0, v4

    const-string v1, "com.htc.idlescreen.app.shortcut04_package"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/idlescreen/base/setting/SettingDB;->DB_SHORTCUT_PACKAGENAME:[Ljava/lang/String;

    .line 107
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.htc.idlescreen.shortcut01_appname"

    aput-object v1, v0, v2

    const-string v1, "com.htc.idlescreen.app.shortcut02_appname"

    aput-object v1, v0, v3

    const-string v1, "com.htc.idlescreen.app.shortcut03_appname"

    aput-object v1, v0, v4

    const-string v1, "com.htc.idlescreen.app.shortcut04_appname"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/idlescreen/base/setting/SettingDB;->DB_SHORTCUT_APPNAME:[Ljava/lang/String;

    .line 123
    const-string v0, "content://com.htc.launcher.settings/launcher_bar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/idlescreen/base/setting/SettingDB;->URI_LAUNCHER_SHORTCUT_LIST:Landroid/net/Uri;

    .line 126
    const-string v0, "content://com.htc.idlescreen.base.setting.shortcutprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/idlescreen/base/setting/SettingDB;->URI_DB_SHORTCUT_LIST:Landroid/net/Uri;

    .line 140
    sput-boolean v2, Lcom/htc/idlescreen/base/setting/SettingDB;->mShortcutExist:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 149
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/idlescreen/base/setting/SettingDB;->mAppList:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/idlescreen/base/setting/SettingDB;->mShortcutList:Ljava/util/List;

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/idlescreen/base/setting/SettingDB;->mShortcutVisibility:I

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/setting/SettingDB;->mShortcutSynced:Z

    .line 151
    return-void
.end method

.method static byteArrayToBundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 712
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 713
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 714
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 715
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 716
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 717
    return-object v0
.end method

.method public static getActivityInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .locals 5
    .parameter "context"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 325
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .local v0, comp:Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 330
    .local v2, info:Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 336
    :goto_0
    return-object v2

    .line 331
    :catch_0
    move-exception v1

    .line 333
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDBBlob(Landroid/database/Cursor;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 305
    const/4 v1, -0x1

    .line 307
    .local v1, index:I
    const/4 v0, 0x0

    .line 308
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 309
    const-string v3, "SettingDB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBBlob index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 312
    .local v2, value:[B
    if-eqz v2, :cond_0

    .line 313
    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 319
    .end local v2           #value:[B
    :cond_0
    :goto_0
    return-object v0

    .line 316
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getDBInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 3
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 269
    const/4 v0, -0x1

    .line 270
    .local v0, index:I
    const/4 v1, -0x1

    .line 271
    .local v1, value:I
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 272
    if-ltz v0, :cond_0

    .line 274
    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 283
    :cond_0
    :goto_0
    return v1

    .line 276
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getDBLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 4
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 287
    const/4 v0, -0x1

    .line 288
    .local v0, index:I
    const-wide/16 v1, -0x1

    .line 289
    .local v1, value:J
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 290
    if-ltz v0, :cond_0

    .line 292
    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 301
    :cond_0
    :goto_0
    return-wide v1

    .line 294
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 251
    const/4 v0, -0x1

    .line 252
    .local v0, index:I
    const/4 v1, 0x0

    .line 253
    .local v1, value:Ljava/lang/String;
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 254
    if-ltz v0, :cond_0

    .line 256
    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 265
    :cond_0
    :goto_0
    return-object v1

    .line 258
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/htc/idlescreen/base/setting/SettingDB;
    .locals 2

    .prologue
    .line 143
    const-class v1, Lcom/htc/idlescreen/base/setting/SettingDB;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/idlescreen/base/setting/SettingDB;->mInstance:Lcom/htc/idlescreen/base/setting/SettingDB;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/htc/idlescreen/base/setting/SettingDB;

    invoke-direct {v0}, Lcom/htc/idlescreen/base/setting/SettingDB;-><init>()V

    sput-object v0, Lcom/htc/idlescreen/base/setting/SettingDB;->mInstance:Lcom/htc/idlescreen/base/setting/SettingDB;

    .line 146
    :cond_0
    sget-object v0, Lcom/htc/idlescreen/base/setting/SettingDB;->mInstance:Lcom/htc/idlescreen/base/setting/SettingDB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getIntSafe(Ljava/lang/String;I)I
    .locals 2
    .parameter "value"
    .parameter "def"

    .prologue
    .line 680
    move v1, p1

    .line 682
    .local v1, ret:I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 686
    :goto_0
    return v1

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getIntentUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 747
    const/4 v1, 0x0

    .line 750
    .local v1, intenturi:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 753
    const/high16 v2, 0x1020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 755
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 757
    return-object v1
.end method

.method static getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 690
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 691
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "content://customization_settings/SettingTable/application_Lockscreen"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 692
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 695
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v3, "SettingDB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 697
    const-string v2, "value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 698
    .local v9, idValue:I
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 699
    .local v6, buffer:[B
    invoke-static {v6}, Lcom/htc/idlescreen/base/setting/SettingDB;->byteArrayToBundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 703
    .local v7, bundle:Landroid/os/Bundle;
    if-eqz v8, :cond_0

    .line 704
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 708
    .end local v6           #buffer:[B
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #idValue:I
    :cond_0
    :goto_0
    return-object v7

    .line 703
    :cond_1
    if-eqz v8, :cond_2

    .line 704
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 707
    :cond_2
    const-string v3, "SettingDB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no module bundle found = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v2

    .line 708
    goto :goto_0

    .line 703
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_3

    .line 704
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public static loadSIESCVisibility(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    .line 610
    const/4 v4, -0x1

    .line 612
    .local v4, visibility:I
    :try_start_0
    invoke-static {p0}, Lcom/htc/idlescreen/base/setting/SettingDB;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 613
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 614
    const-string v5, "shortcut_visibility"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 615
    .local v1, data:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 616
    const-string v5, "visibility"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 617
    .local v3, visStr:Ljava/lang/String;
    const/4 v5, -0x1

    invoke-static {v3, v5}, Lcom/htc/idlescreen/base/setting/SettingDB;->getIntSafe(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 624
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #data:Landroid/os/Bundle;
    .end local v3           #visStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 621
    :catch_0
    move-exception v2

    .line 622
    .local v2, ex:Ljava/lang/Exception;
    const-string v5, "SettingDB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadSIESCVisibility fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loadSIEShortcuts(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/idlescreen/base/setting/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 630
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/idlescreen/base/setting/ApplicationInfo;>;"
    :try_start_0
    invoke-static {p0}, Lcom/htc/idlescreen/base/setting/SettingDB;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 631
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 632
    const-string v4, "shortcut"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 633
    .local v3, shortcutsBundle:Landroid/os/Bundle;
    invoke-static {p0, v3}, Lcom/htc/idlescreen/base/setting/SettingDB;->loadShortcutsFromData(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 639
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #shortcutsBundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v0

    .line 636
    :catch_0
    move-exception v2

    .line 637
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, "SettingDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSIEShortcuts fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static loadShortcutsFromData(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;
    .locals 14
    .parameter "context"
    .parameter "shortcutsBundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/idlescreen/base/setting/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/idlescreen/base/setting/ApplicationInfo;>;"
    if-nez p1, :cond_1

    .line 645
    const/4 v0, 0x0

    .line 676
    .end local v0           #appList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/idlescreen/base/setting/ApplicationInfo;>;"
    :cond_0
    :goto_0
    return-object v0

    .line 647
    .restart local v0       #appList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/idlescreen/base/setting/ApplicationInfo;>;"
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v9

    .line 648
    .local v9, size:I
    const/4 v11, 0x4

    new-array v1, v11, [Lcom/htc/idlescreen/base/setting/ApplicationInfo;

    .line 655
    .local v1, apps:[Lcom/htc/idlescreen/base/setting/ApplicationInfo;
    const/4 v10, 0x0

    .line 656
    .local v10, withCorrectData:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v9, :cond_3

    .line 657
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "plenty_set"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 658
    .local v5, key:Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 659
    .local v2, childBundle:Landroid/os/Bundle;
    const-string v11, "package"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 660
    .local v8, packageName:Ljava/lang/String;
    const-string v11, "class"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 661
    .local v3, className:Ljava/lang/String;
    const-string v11, "order"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 662
    .local v6, order:Ljava/lang/String;
    const/4 v11, -0x1

    invoke-static {v6, v11}, Lcom/htc/idlescreen/base/setting/SettingDB;->getIntSafe(Ljava/lang/String;I)I

    move-result v7

    .line 664
    .local v7, orderInt:I
    if-lez v7, :cond_2

    const/4 v11, 0x5

    if-ge v7, v11, :cond_2

    .line 665
    const/4 v10, 0x1

    .line 666
    add-int/lit8 v11, v7, -0x1

    new-instance v12, Lcom/htc/idlescreen/base/setting/ApplicationInfo;

    const-string v13, ""

    invoke-direct {v12, p0, v8, v3, v13}, Lcom/htc/idlescreen/base/setting/ApplicationInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v12, v1, v11

    .line 656
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 669
    .end local v2           #childBundle:Landroid/os/Bundle;
    .end local v3           #className:Ljava/lang/String;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #order:Ljava/lang/String;
    .end local v7           #orderInt:I
    .end local v8           #packageName:Ljava/lang/String;
    :cond_3
    if-nez v10, :cond_4

    .line 670
    const/4 v0, 0x0

    goto :goto_0

    .line 673
    :cond_4
    const/4 v4, 0x0

    :goto_2
    array-length v11, v1

    if-ge v4, v11, :cond_0

    .line 674
    aget-object v11, v1, v4

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method


# virtual methods
.method public cleanshortcutDB(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 342
    const/4 v6, 0x0

    .line 343
    .local v6, c:Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/idlescreen/base/setting/SettingDB;->URI_DB_SHORTCUT_LIST:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 346
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/idlescreen/base/setting/SettingDB;->URI_DB_SHORTCUT_LIST:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 351
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 354
    return-void
.end method

.method public getApplicationInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/setting/SettingDB;->mShortcutSynced:Z

    if-nez v0, :cond_1

    .line 579
    monitor-enter p0

    .line 580
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/setting/SettingDB;->mShortcutSynced:Z

    if-nez v0, :cond_0

    .line 581
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/setting/SettingDB;->updateDBCache(Landroid/content/Context;)Z

    .line 583
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/SettingDB;->mShortcutList:Ljava/util/List;

    return-object v0

    .line 583
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDefaultApplicationInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/idlescreen/base/setting/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 566
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/idlescreen/base/setting/ApplicationInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v3, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_PACKAGENAMEs:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 571
    new-instance v0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;

    sget-object v3, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_PACKAGENAMEs:[Ljava/lang/String;

    aget-object v3, v3, v2

    sget-object v4, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_CLASSs:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string v5, ""

    invoke-direct {v0, p1, v3, v4, v5}, Lcom/htc/idlescreen/base/setting/ApplicationInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    .local v0, apinfo:Lcom/htc/idlescreen/base/setting/ApplicationInfo;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 574
    .end local v0           #apinfo:Lcom/htc/idlescreen/base/setting/ApplicationInfo;
    :cond_0
    return-object v1
.end method

.method public getShortcutAppList(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    .line 156
    const/4 v7, 0x0

    .line 160
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "SettingDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShortcutAppList: HtcBuildFlag.VzwLBSImplFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->VzwLBSImplFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HtcBuildFlag.VzwLBSPermFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->VzwLBSPermFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/idlescreen/base/setting/SettingDB;->URI_SHORTCUT_DEFAULT:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 163
    invoke-virtual/range {p0 .. p1}, Lcom/htc/idlescreen/base/setting/SettingDB;->cleanshortcutDB(Landroid/content/Context;)V

    .line 167
    const/4 v11, 0x0

    .line 169
    .local v11, i:I
    const/4 v13, 0x0

    .line 170
    .local v13, uri:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 171
    .local v9, cr:Landroid/content/ContentResolver;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .local v14, values:Landroid/content/ContentValues;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    const-string v0, "shortcut_package_name"

    invoke-direct {p0, v7, v0}, Lcom/htc/idlescreen/base/setting/SettingDB;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 177
    .local v12, packageName:Ljava/lang/String;
    const-string v0, "shortcut_class_name"

    invoke-direct {p0, v7, v0}, Lcom/htc/idlescreen/base/setting/SettingDB;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, className:Ljava/lang/String;
    const-string v0, "shortcut_app_name"

    invoke-direct {p0, v7, v0}, Lcom/htc/idlescreen/base/setting/SettingDB;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 179
    .local v6, appName:Ljava/lang/String;
    invoke-direct {p0, v12, v8}, Lcom/htc/idlescreen/base/setting/SettingDB;->getIntentUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 182
    const-string v0, "title"

    invoke-virtual {v14, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "cellX"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    const-string v0, "itemType"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    const-string v0, "iconType"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v0, "iconPackage"

    invoke-virtual {v14, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "intent"

    invoke-virtual {v14, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "packageName"

    invoke-virtual {v14, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "className"

    invoke-virtual {v14, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/htc/idlescreen/base/setting/SettingDB;->URI_DB_SHORTCUT_LIST:Landroid/net/Uri;

    invoke-virtual {v9, v0, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 191
    add-int/lit8 v11, v11, 0x1

    .line 193
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-lt v11, v0, :cond_0

    .line 200
    .end local v6           #appName:Ljava/lang/String;
    .end local v8           #className:Ljava/lang/String;
    .end local v12           #packageName:Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    .line 201
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 204
    .end local v9           #cr:Landroid/content/ContentResolver;
    .end local v11           #i:I
    .end local v13           #uri:Ljava/lang/String;
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v10

    .line 196
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SettingDB"

    const-string v1, "get default fail!!"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    if-eqz v7, :cond_2

    .line 201
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 200
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 201
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getShortcutVisibility(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 589
    iget v1, p0, Lcom/htc/idlescreen/base/setting/SettingDB;->mShortcutVisibility:I

    if-gez v1, :cond_0

    .line 590
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 591
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "com.htc.idlescreen.app.shortcut_visibility"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/idlescreen/base/setting/SettingDB;->mShortcutVisibility:I

    .line 593
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    iget v1, p0, Lcom/htc/idlescreen/base/setting/SettingDB;->mShortcutVisibility:I

    return v1
.end method

.method public isShortcutVisible()Z
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Lcom/htc/idlescreen/base/setting/SettingDB;->mShortcutVisibility:I

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/htc/idlescreen/base/setting/SettingDB;->mShortcutExist:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeShortcutsForPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 733
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.idlescreen.setting.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 734
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "setting_action"

    const-string v2, "setting_action_remove_package"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    const-string v1, "setting_value"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 738
    return-void
.end method

.method public saveShortcutList(Landroid/content/Context;Ljava/util/List;)Z
    .locals 16
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 461
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    monitor-enter p0

    .line 462
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 463
    .local v6, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 464
    .local v10, pkgMng:Landroid/content/pm/PackageManager;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 466
    .local v7, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ActivityInfo;>;"
    const/4 v9, 0x0

    .line 467
    .local v9, packageName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 468
    .local v5, className:Ljava/lang/String;
    const/4 v3, 0x0

    .line 470
    .local v3, appName:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v2, appList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/idlescreen/base/setting/ApplicationInfo;>;"
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 472
    .local v12, values:Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 474
    .local v8, index:I
    invoke-virtual/range {p0 .. p1}, Lcom/htc/idlescreen/base/setting/SettingDB;->cleanshortcutDB(Landroid/content/Context;)V

    .line 475
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 476
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 477
    .local v1, appInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_1

    .line 478
    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 479
    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 480
    invoke-virtual {v1, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3           #appName:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 487
    .restart local v3       #appName:Ljava/lang/String;
    :goto_1
    const-string v13, "SettingDB"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "saveShortcutList packageName:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " className:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " appName:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    new-instance v4, Lcom/htc/idlescreen/base/setting/ApplicationInfo;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v9, v5, v3}, Lcom/htc/idlescreen/base/setting/ApplicationInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .local v4, applicationInfo:Lcom/htc/idlescreen/base/setting/ApplicationInfo;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    const-string v13, ""

    if-eq v9, v13, :cond_0

    .line 495
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v5}, Lcom/htc/idlescreen/base/setting/SettingDB;->getIntentUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 497
    .local v11, uri:Ljava/lang/String;
    const-string v13, "title"

    invoke-virtual {v12, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v13, "cellX"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    const-string v13, "itemType"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 500
    const-string v13, "iconType"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    const-string v13, "iconPackage"

    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v13, "intent"

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v13, "packageName"

    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v13, "className"

    invoke-virtual {v12, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    sget-object v13, Lcom/htc/idlescreen/base/setting/SettingDB;->URI_DB_SHORTCUT_LIST:Landroid/net/Uri;

    invoke-virtual {v6, v13, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 508
    .end local v11           #uri:Ljava/lang/String;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 483
    .end local v4           #applicationInfo:Lcom/htc/idlescreen/base/setting/ApplicationInfo;
    :cond_1
    const-string v9, ""

    .line 484
    const-string v5, ""

    .line 485
    const-string v3, ""

    goto/16 :goto_1

    .line 511
    .end local v1           #appInfo:Landroid/content/pm/ActivityInfo;
    :cond_2
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/idlescreen/base/setting/SettingDB;->mAppList:Ljava/util/List;

    .line 512
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/idlescreen/base/setting/SettingDB;->mShortcutSynced:Z

    .line 513
    monitor-exit p0

    .line 514
    const/4 v13, 0x1

    return v13

    .line 513
    .end local v2           #appList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/idlescreen/base/setting/ApplicationInfo;>;"
    .end local v3           #appName:Ljava/lang/String;
    .end local v5           #className:Ljava/lang/String;
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v7           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ActivityInfo;>;"
    .end local v8           #index:I
    .end local v9           #packageName:Ljava/lang/String;
    .end local v10           #pkgMng:Landroid/content/pm/PackageManager;
    .end local v12           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v13

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13
.end method

.method public saveShortcutList2(Landroid/content/Context;Ljava/util/List;)Z
    .locals 11
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/idlescreen/base/setting/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 518
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/idlescreen/base/setting/ApplicationInfo;>;"
    monitor-enter p0

    .line 519
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 520
    .local v3, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 521
    .local v7, pkgMng:Landroid/content/pm/PackageManager;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 523
    .local v4, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/setting/ApplicationInfo;>;"
    const/4 v6, 0x0

    .line 524
    .local v6, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 525
    .local v2, className:Ljava/lang/String;
    const/4 v0, 0x0

    .line 529
    .local v0, appName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 530
    .local v5, index:I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 531
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/idlescreen/base/setting/ApplicationInfo;

    .line 532
    .local v1, applicationInfo:Lcom/htc/idlescreen/base/setting/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {v1}, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 534
    invoke-virtual {v1}, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 535
    invoke-virtual {v1, v7}, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->getAppName(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    .line 542
    :goto_1
    const-string v8, "SettingDB"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveShortcutList packageName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " className:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " appName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    sget-object v8, Lcom/htc/idlescreen/base/setting/SettingDB;->DB_SHORTCUT_PACKAGENAME:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-static {v3, v8, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 546
    sget-object v8, Lcom/htc/idlescreen/base/setting/SettingDB;->DB_SHORTCUT_CLASSNAME:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-static {v3, v8, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 547
    sget-object v8, Lcom/htc/idlescreen/base/setting/SettingDB;->DB_SHORTCUT_APPNAME:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-static {v3, v8, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 548
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 538
    :cond_0
    const-string v6, ""

    .line 539
    const-string v2, ""

    .line 540
    const-string v0, ""

    goto :goto_1

    .line 551
    .end local v1           #applicationInfo:Lcom/htc/idlescreen/base/setting/ApplicationInfo;
    :cond_1
    iput-object p2, p0, Lcom/htc/idlescreen/base/setting/SettingDB;->mAppList:Ljava/util/List;

    .line 552
    monitor-exit p0

    .line 553
    const/4 v8, 0x1

    return v8

    .line 552
    .end local v0           #appName:Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/setting/ApplicationInfo;>;"
    .end local v5           #index:I
    .end local v6           #packageName:Ljava/lang/String;
    .end local v7           #pkgMng:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public saveShortcutVisibility(Landroid/content/Context;I)Z
    .locals 2
    .parameter "context"
    .parameter "visibility"

    .prologue
    .line 557
    monitor-enter p0

    .line 558
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 559
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "com.htc.idlescreen.app.shortcut_visibility"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 560
    iput p2, p0, Lcom/htc/idlescreen/base/setting/SettingDB;->mShortcutVisibility:I

    .line 561
    monitor-exit p0

    .line 562
    const/4 v1, 0x1

    return v1

    .line 561
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateDBCache(Landroid/content/Context;)Z
    .locals 26
    .parameter "context"

    .prologue
    .line 286
    const-string v2, "SettingDB"

    const-string v24, " quary data "

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/16 v21, 0x0

    .line 288
    .local v21, shortcutExist:Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 289
    .local v15, cr:Landroid/content/ContentResolver;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v22, shortcutList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;>;"
    const/4 v2, 0x4

    new-array v0, v2, [Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    move-object/from16 v20, v0

    .line 291
    .local v20, shortcut:[Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;
    const/4 v14, 0x0

    .line 293
    .local v14, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/idlescreen/base/setting/SettingDB;->URI_LAUNCHER_SHORTCUT_LIST:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 303
    :goto_0
    const/4 v7, 0x0

    .line 310
    .local v7, intent:Landroid/content/Intent;
    if-eqz v14, :cond_3

    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 313
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "tweaks_lockscreen_hide_labels"

    const/4 v0, 0x0

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v0, :cond_1

    const-string v5, ""

    goto :goto_1

    :cond_1
    const-string v2, "title"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/htc/idlescreen/base/setting/SettingDB;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, title:Ljava/lang/String;
    :goto_1
    const-string v2, "cellX"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/htc/idlescreen/base/setting/SettingDB;->getDBInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 315
    .local v13, cell:I
    const-string v2, "icon"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/htc/idlescreen/base/setting/SettingDB;->getDBBlob(Landroid/database/Cursor;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 316
    .local v10, icon:Landroid/graphics/Bitmap;
    const-string v2, "iconResource"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/htc/idlescreen/base/setting/SettingDB;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 317
    .local v9, iconRes:Ljava/lang/String;
    const-string v2, "itemType"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/htc/idlescreen/base/setting/SettingDB;->getDBInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 318
    .local v11, itemtype:I
    const-string v2, "iconType"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/htc/idlescreen/base/setting/SettingDB;->getDBInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 319
    .local v12, icontype:I
    const-string v2, "iconPackage"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/htc/idlescreen/base/setting/SettingDB;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 320
    .local v6, respackagename:Ljava/lang/String;
    const-string v2, "intent"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/htc/idlescreen/base/setting/SettingDB;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 321
    .local v8, intentRes:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 322
    const/4 v2, 0x0

    invoke-static {v8, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 324
    :cond_2
    const-string v2, "_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/htc/idlescreen/base/setting/SettingDB;->getDBLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v3

    .line 325
    .local v3, id:J
    const-string v2, "SettingDB"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mId "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mTitle "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mIcon "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mItemType "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mCellX "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " intentRes "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "icontype"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mResPackageName "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mIconRes "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v2, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;-><init>(Landroid/content/Context;)V

    aput-object v2, v20, v13

    .line 331
    aget-object v2, v20, v13

    invoke-virtual/range {v2 .. v13}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->update(JLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;III)V

    .line 336
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_0

    .line 338
    const/16 v21, 0x1

    .line 346
    .end local v3           #id:J
    .end local v5           #title:Ljava/lang/String;
    .end local v6           #respackagename:Ljava/lang/String;
    .end local v8           #intentRes:Ljava/lang/String;
    .end local v9           #iconRes:Ljava/lang/String;
    .end local v10           #icon:Landroid/graphics/Bitmap;
    .end local v11           #itemtype:I
    .end local v12           #icontype:I
    .end local v13           #cell:I
    :cond_3
    if-eqz v14, :cond_4

    .line 347
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_4
    :goto_2
    const/16 v17, 0x0

    .local v17, i:I
    :goto_3
    move-object/from16 v0, v20

    array-length v2, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_6

    .line 352
    aget-object v2, v20, v17

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 295
    .end local v7           #intent:Landroid/content/Intent;
    .end local v17           #i:I
    :catch_0
    move-exception v16

    .line 296
    .local v16, e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 341
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v7       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v16

    .line 343
    .restart local v16       #e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 346
    if-eqz v14, :cond_4

    .line 347
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 346
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_5

    .line 347
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    .line 354
    .restart local v17       #i:I
    :cond_6
    const/16 v23, 0x0

    .line 355
    .local v23, shortcutVisibiltiy:I
    if-eqz v21, :cond_7

    .line 356
    const-string v2, "com.htc.idlescreen.app.shortcut_visibility"

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-static {v15, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 359
    :cond_7
    monitor-enter p0

    .line 360
    :try_start_3
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/idlescreen/base/setting/SettingDB;->mShortcutList:Ljava/util/List;

    .line 361
    sput-boolean v21, Lcom/htc/idlescreen/base/setting/SettingDB;->mShortcutExist:Z

    .line 362
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/idlescreen/base/setting/SettingDB;->mShortcutVisibility:I

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/idlescreen/base/setting/SettingDB;->mShortcutList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 364
    .local v18, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;>;"
    const/16 v19, 0x0

    .line 365
    .local v19, index:I
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 367
    const-string v2, "SettingDB"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "info is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 370
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/idlescreen/base/setting/SettingDB;->mShortcutSynced:Z

    .line 371
    monitor-exit p0

    .line 372
    const/4 v2, 0x1

    return v2

    .line 371
    .end local v18           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;>;"
    .end local v19           #index:I
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public updateShortcutForPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 729
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/htc/idlescreen/base/setting/SettingDB;->updateShortcutForPackage(Landroid/content/Context;[Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public updateShortcutForPackage(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "packageNames"

    .prologue
    .line 721
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.idlescreen.setting.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 722
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "setting_action"

    const-string v2, "setting_action_update_package"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    const-string v1, "setting_value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 726
    return-void
.end method

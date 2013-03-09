.class public Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting;
.super Ljava/lang/Object;
.source "LockscreenSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting$ShortcutInfo;
    }
.end annotation


# static fields
.field public static final ACTION_UPDATE_SHORTCUT_LIST:Ljava/lang/String; = "setting_action_update_shortcut_list"

.field public static final ACTION_UPDATE_SHORTCUT_VISIBILITY:Ljava/lang/String; = "setting_action_update_shortcut_visibility"

.field public static final COL_SC_APPNAME:Ljava/lang/String; = "shortcut_app_name"

.field public static final COL_SC_CLASSNAME:Ljava/lang/String; = "shortcut_class_name"

.field public static final COL_SC_ID:Ljava/lang/String; = "shortcut_id"

.field public static final COL_SC_PACKAGENAME:Ljava/lang/String; = "shortcut_package_name"

.field public static final COL_SC_VISIBILITY:Ljava/lang/String; = "shortcut_visibility"

.field public static final DB_AUTHORITY:Ljava/lang/String; = "com.htc.idlescreen.setting.provider"

.field public static final DB_SHORTCUT_DEFAULT:Ljava/lang/String; = "shortcut_default"

.field public static final DB_SHORTCUT_LIST:Ljava/lang/String; = "shortcut_list"

.field public static final DB_SHORTCUT_VISIBILITY:Ljava/lang/String; = "shortcut_visibility"

.field public static final SETTING_ACTION:Ljava/lang/String; = "setting_action"

.field public static final SETTING_SERVICE:Ljava/lang/String; = "com.htc.idlescreen.setting.service"

.field public static final SETTING_VALUE:Ljava/lang/String; = "setting_value"

.field public static final TAG:Ljava/lang/String; = "LockscreenSetting"

.field public static final URI_SHORTCUT_DEFAULT:Landroid/net/Uri;

.field public static final URI_SHORTCUT_LIST:Landroid/net/Uri;

.field public static final URI_SHORTCUT_VISIBILITY:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "content://com.htc.idlescreen.setting.provider/shortcut_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting;->URI_SHORTCUT_LIST:Landroid/net/Uri;

    .line 32
    const-string v0, "content://com.htc.idlescreen.setting.provider/shortcut_default"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting;->URI_SHORTCUT_DEFAULT:Landroid/net/Uri;

    .line 33
    const-string v0, "content://com.htc.idlescreen.setting.provider/shortcut_visibility"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting;->URI_SHORTCUT_VISIBILITY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getActivityInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 177
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v0, component:Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 180
    .local v2, info:Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 185
    :goto_0
    return-object v2

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "LockscreenSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getActivityInfo() e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getDBInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 6
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 160
    const/4 v1, -0x1

    .line 161
    .local v1, index:I
    const/4 v2, -0x1

    .line 162
    .local v2, value:I
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 163
    if-ltz v1, :cond_0

    .line 165
    :try_start_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 172
    :goto_0
    return v2

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LockscreenSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBInt() e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "LockscreenSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBInt() incorrect index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 144
    const/4 v1, -0x1

    .line 145
    .local v1, index:I
    const/4 v2, 0x0

    .line 146
    .local v2, value:Ljava/lang/String;
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 147
    if-ltz v1, :cond_0

    .line 149
    :try_start_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 156
    :goto_0
    return-object v2

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LockscreenSetting"

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

    .line 154
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "LockscreenSetting"

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

.method public static getShortcutAppList(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting$ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting;->URI_SHORTCUT_LIST:Landroid/net/Uri;

    const-string v5, "shortcut_id"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 56
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v11, shortcutInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting$ShortcutInfo;>;"
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    const-string v0, "shortcut_package_name"

    invoke-static {v8, v0}, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 64
    .local v10, packageName:Ljava/lang/String;
    const-string v0, "shortcut_class_name"

    invoke-static {v8, v0}, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, className:Ljava/lang/String;
    const-string v0, "shortcut_app_name"

    invoke-static {v8, v0}, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, appName:Ljava/lang/String;
    new-instance v0, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting$ShortcutInfo;

    invoke-direct {v0, v10, v7, v6}, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting$ShortcutInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 73
    .end local v6           #appName:Ljava/lang/String;
    .end local v7           #className:Ljava/lang/String;
    .end local v10           #packageName:Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_3

    .line 74
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_2
    :goto_0
    const/4 v8, 0x0

    .line 78
    :cond_3
    return-object v11

    .line 70
    :catch_0
    move-exception v9

    .line 71
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "LockscreenSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShortcutAppList() e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    if-eqz v8, :cond_3

    .line 74
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 73
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 74
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_4
    const/4 v8, 0x0

    .line 73
    :cond_5
    throw v0
.end method

.method public static getShortcutDefaultList(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting$ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting;->URI_SHORTCUT_DEFAULT:Landroid/net/Uri;

    const-string v5, "shortcut_id"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 83
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v11, shortcutInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting$ShortcutInfo;>;"
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    const-string v0, "shortcut_package_name"

    invoke-static {v8, v0}, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 91
    .local v10, packageName:Ljava/lang/String;
    const-string v0, "shortcut_class_name"

    invoke-static {v8, v0}, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, className:Ljava/lang/String;
    const-string v0, "shortcut_app_name"

    invoke-static {v8, v0}, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting;->getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, appName:Ljava/lang/String;
    new-instance v0, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting$ShortcutInfo;

    invoke-direct {v0, v10, v7, v6}, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting$ShortcutInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 100
    .end local v6           #appName:Ljava/lang/String;
    .end local v7           #className:Ljava/lang/String;
    .end local v10           #packageName:Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_3

    .line 101
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_2
    :goto_0
    const/4 v8, 0x0

    .line 105
    :cond_3
    return-object v11

    .line 97
    :catch_0
    move-exception v9

    .line 98
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "LockscreenSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShortcutDefaultList() e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    if-eqz v8, :cond_3

    .line 101
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 100
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 101
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_4
    const/4 v8, 0x0

    .line 100
    :cond_5
    throw v0
.end method

.method public static getShortcutVisibility(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting;->URI_SHORTCUT_VISIBILITY:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 110
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x1

    .line 112
    .local v8, visible:Z
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "shortcut_visibility"

    invoke-static {v6, v0}, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting;->getDBInt(Landroid/database/Cursor;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_3

    const/4 v8, 0x1

    .line 118
    :cond_0
    :goto_0
    if-eqz v6, :cond_2

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_1
    :goto_1
    const/4 v6, 0x0

    .line 123
    :cond_2
    return v8

    .line 113
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v7

    .line 116
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "LockscreenSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShortcutVisibility() e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    if-eqz v6, :cond_2

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 118
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_4
    const/4 v6, 0x0

    .line 118
    :cond_5
    throw v0
.end method

.method public static setShortcutLists(Landroid/content/Context;[Landroid/content/pm/ActivityInfo;)V
    .locals 3
    .parameter "context"
    .parameter "appArray"

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.idlescreen.setting.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "setting_action"

    const-string v2, "setting_action_update_shortcut_list"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v1, "setting_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 133
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static setShortcutVisibility(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "visible"

    .prologue
    .line 136
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 137
    .local v1, visibility:I
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.idlescreen.setting.service"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "setting_action"

    const-string v3, "setting_action_update_shortcut_visibility"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v2, "setting_value"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 141
    return-void

    .line 136
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #visibility:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

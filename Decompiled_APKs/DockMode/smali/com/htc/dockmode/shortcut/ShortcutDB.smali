.class public Lcom/htc/dockmode/shortcut/ShortcutDB;
.super Ljava/lang/Object;
.source "ShortcutDB.java"


# static fields
.field public static final DB_APP_LIST:Ljava/lang/String; = "applist"

.field public static final DB_AUTHORITY:Ljava/lang/String; = "com.htc.dockmode.shortcut.provider"

.field public static final DB_SHORTCUT01_APPNAME:Ljava/lang/String; = "com.htc.dockmode.shortcut01"

.field public static final DB_SHORTCUT01_PACKAGENAME:Ljava/lang/String; = "com.htc.dockmode.app.shortcut01_package"

.field public static final DB_SHORTCUT02_APPNAME:Ljava/lang/String; = "com.htc.dockmode.shortcut02"

.field public static final DB_SHORTCUT02_PACKAGENAME:Ljava/lang/String; = "com.htc.dockmode.app.shortcut02_package"

.field public static final DB_SHORTCUT03_APPNAME:Ljava/lang/String; = "com.htc.dockmode.shortcut03"

.field public static final DB_SHORTCUT03_PACKAGENAME:Ljava/lang/String; = "com.htc.dockmode.app.shortcut03_package"

.field public static final DB_SHORTCUT_APPNAME:[Ljava/lang/String; = null

.field public static final DB_SHORTCUT_PACKAGENAME:[Ljava/lang/String; = null

.field private static final LOG_PREFIX:Ljava/lang/String; = "ShortcutDB"

.field public static final URI_APP:Landroid/net/Uri;

.field private static mInstance:Lcom/htc/dockmode/shortcut/ShortcutDB;


# instance fields
.field private mSyncDB:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.htc.dockmode.shortcut01"

    aput-object v1, v0, v2

    const-string v1, "com.htc.dockmode.shortcut02"

    aput-object v1, v0, v3

    const-string v1, "com.htc.dockmode.shortcut03"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/dockmode/shortcut/ShortcutDB;->DB_SHORTCUT_APPNAME:[Ljava/lang/String;

    .line 39
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.htc.dockmode.app.shortcut01_package"

    aput-object v1, v0, v2

    const-string v1, "com.htc.dockmode.app.shortcut02_package"

    aput-object v1, v0, v3

    const-string v1, "com.htc.dockmode.app.shortcut03_package"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/dockmode/shortcut/ShortcutDB;->DB_SHORTCUT_PACKAGENAME:[Ljava/lang/String;

    .line 43
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/dockmode/shortcut/ShortcutDB;->URI_APP:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/shortcut/ShortcutDB;->mSyncDB:Z

    .line 63
    return-void
.end method

.method private static cloneList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, listSrc:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    const-string v3, "ShortcutDB"

    const-string v4, "cloneList()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 168
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 169
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ActivityInfo;>;"
    const/4 v0, 0x0

    .line 170
    .local v0, appInfo:Landroid/content/pm/ActivityInfo;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #appInfo:Landroid/content/pm/ActivityInfo;
    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 172
    .restart local v0       #appInfo:Landroid/content/pm/ActivityInfo;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    .end local v0           #appInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ActivityInfo;>;"
    :cond_0
    return-object v2
.end method

.method private static getActivityInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 180
    const-string v4, "ShortcutDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getActivityInfo packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " className:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 183
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .local v0, comp:Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 186
    .local v2, info:Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 192
    :goto_0
    return-object v2

    .line 187
    :catch_0
    move-exception v1

    .line 189
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 190
    const-string v4, "ShortcutDB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getActivityInfo exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getDBInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 6
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 212
    const/4 v1, -0x1

    .line 213
    .local v1, index:I
    const/4 v2, -0x1

    .line 214
    .local v2, value:I
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 215
    if-ltz v1, :cond_0

    .line 217
    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 224
    :goto_0
    return v2

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ShortcutDB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBString e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "ShortcutDB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBString("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") index < 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDBString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 196
    const/4 v1, -0x1

    .line 197
    .local v1, index:I
    const/4 v2, 0x0

    .line 198
    .local v2, value:Ljava/lang/String;
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 199
    if-ltz v1, :cond_0

    .line 201
    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 208
    :goto_0
    return-object v2

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ShortcutDB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBString e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "ShortcutDB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDBString("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") index < 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/htc/dockmode/shortcut/ShortcutDB;
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/htc/dockmode/shortcut/ShortcutDB;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/dockmode/shortcut/ShortcutDB;->mInstance:Lcom/htc/dockmode/shortcut/ShortcutDB;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/htc/dockmode/shortcut/ShortcutDB;

    invoke-direct {v0}, Lcom/htc/dockmode/shortcut/ShortcutDB;-><init>()V

    sput-object v0, Lcom/htc/dockmode/shortcut/ShortcutDB;->mInstance:Lcom/htc/dockmode/shortcut/ShortcutDB;

    .line 58
    :cond_0
    sget-object v0, Lcom/htc/dockmode/shortcut/ShortcutDB;->mInstance:Lcom/htc/dockmode/shortcut/ShortcutDB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getApplicationInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/dockmode/shortcut/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/dockmode/shortcut/ApplicationInfo;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 109
    .local v4, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x1

    .line 110
    .local v6, isEmpty:Z
    monitor-enter p0

    .line 118
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    :try_start_0
    sget-object v9, Lcom/htc/dockmode/shortcut/ShortcutDB;->DB_SHORTCUT_APPNAME:[Ljava/lang/String;

    array-length v9, v9

    if-ge v5, v9, :cond_2

    .line 123
    const-string v9, "ShortcutDB"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 125
    .local v8, settings:Landroid/content/SharedPreferences;
    sget-object v9, Lcom/htc/dockmode/shortcut/ShortcutDB;->DB_SHORTCUT_APPNAME:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-static {v8, v9}, Lcom/htc/dockmode/utils/Preference;->getSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, classname:Ljava/lang/String;
    sget-object v9, Lcom/htc/dockmode/shortcut/ShortcutDB;->DB_SHORTCUT_PACKAGENAME:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-static {v8, v9}, Lcom/htc/dockmode/utils/Preference;->getSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, packname:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 132
    :cond_0
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 135
    :cond_1
    const/4 v6, 0x0

    .line 136
    invoke-static {p1, v7, v3}, Lcom/htc/dockmode/shortcut/ShortcutDB;->getActivityInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 137
    .local v0, appInfo:Landroid/content/pm/ActivityInfo;
    invoke-static {p1, v0}, Lcom/htc/dockmode/shortcut/ApplicationInfo;->getApplicationInfo(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Lcom/htc/dockmode/shortcut/ApplicationInfo;

    move-result-object v2

    .line 140
    .local v2, applicationInfo:Lcom/htc/dockmode/shortcut/ApplicationInfo;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    .end local v0           #appInfo:Landroid/content/pm/ActivityInfo;
    .end local v2           #applicationInfo:Lcom/htc/dockmode/shortcut/ApplicationInfo;
    .end local v3           #classname:Ljava/lang/String;
    .end local v7           #packname:Ljava/lang/String;
    .end local v8           #settings:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 143
    :cond_2
    const/4 v9, 0x1

    :try_start_1
    iput-boolean v9, p0, Lcom/htc/dockmode/shortcut/ShortcutDB;->mSyncDB:Z

    .line 145
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v6, :cond_4

    .line 147
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/dockmode/shortcut/ShortcutDB;->getDefaultApplicationInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 149
    :cond_4
    return-object v1
.end method

.method public getDefaultApplicationInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/dockmode/shortcut/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/dockmode/shortcut/ApplicationInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v3, Lcom/htc/dockmode/shortcut/DefaultShortcut;->APP_PACKAGENAMEs:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 156
    sget-object v3, Lcom/htc/dockmode/shortcut/DefaultShortcut;->APP_PACKAGENAMEs:[Ljava/lang/String;

    aget-object v3, v3, v2

    sget-object v4, Lcom/htc/dockmode/shortcut/DefaultShortcut;->APP_CLASSs:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {p1, v3, v4}, Lcom/htc/dockmode/shortcut/ApplicationInfo;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dockmode/shortcut/ApplicationInfo;

    move-result-object v0

    .line 159
    .local v0, apinfo:Lcom/htc/dockmode/shortcut/ApplicationInfo;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v0           #apinfo:Lcom/htc/dockmode/shortcut/ApplicationInfo;
    :cond_0
    return-object v1
.end method

.method public updateAppList(Landroid/content/Context;Ljava/util/List;)Z
    .locals 11
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
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    const/4 v10, 0x1

    .line 66
    monitor-enter p0

    .line 69
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 70
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 72
    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ActivityInfo;>;"
    const/4 v5, 0x0

    .line 73
    .local v5, packageName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 75
    .local v1, className:Ljava/lang/String;
    const/4 v4, 0x0

    .line 77
    .local v4, index:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 78
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 79
    .local v0, appInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 80
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 81
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 86
    :goto_1
    const-string v7, "ShortcutDB"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatAppList packageName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " className:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v7, "ShortcutDB"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 94
    .local v6, settings:Landroid/content/SharedPreferences;
    sget-object v7, Lcom/htc/dockmode/shortcut/ShortcutDB;->DB_SHORTCUT_PACKAGENAME:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-static {v6, v7, v5}, Lcom/htc/dockmode/utils/Preference;->setSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    sget-object v7, Lcom/htc/dockmode/shortcut/ShortcutDB;->DB_SHORTCUT_APPNAME:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-static {v6, v7, v1}, Lcom/htc/dockmode/utils/Preference;->setSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    add-int/lit8 v4, v4, 0x1

    .line 100
    goto :goto_0

    .line 83
    .end local v6           #settings:Landroid/content/SharedPreferences;
    :cond_0
    const-string v5, ""

    .line 84
    const-string v1, ""

    goto :goto_1

    .line 101
    .end local v0           #appInfo:Landroid/content/pm/ActivityInfo;
    :cond_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/dockmode/shortcut/ShortcutDB;->mSyncDB:Z

    .line 102
    monitor-exit p0

    .line 103
    return v10

    .line 102
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v3           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ActivityInfo;>;"
    .end local v4           #index:I
    .end local v5           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

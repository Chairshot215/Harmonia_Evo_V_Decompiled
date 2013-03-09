.class public Lcom/htc/home/personalize/SceneProvider/DefaultBottomApps;
.super Ljava/lang/Object;
.source "DefaultBottomApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/SceneProvider/DefaultBottomApps$DefaultBottomAppsColumns;
    }
.end annotation


# static fields
.field public static final DefaultBottomAppsProjection:[Ljava/lang/String; = null

.field private static final KEY_CLASS:Ljava/lang/String; = "class"

.field private static final KEY_DEFAULT_QUICKLAUNCH:Ljava/lang/String; = "default_quicklaunch"

.field private static final KEY_ITEMTYPE:Ljava/lang/String; = "itemtype"

.field private static final KEY_PACKAGE:Ljava/lang/String; = "package"

.field private static final KEY_PLENTY_SET:Ljava/lang/String; = "plenty_set"

.field private static final KEY_SCREEN:Ljava/lang/String; = "screen"

.field private static final KEY_X:Ljava/lang/String; = "x"

.field private static final KEY_Y:Ljava/lang/String; = "y"

.field private static final PREFERENCE_SAVE_BOTTOMBAR_APP:Ljava/lang/String; = "Save_BottomBar_Apps"

.field public static final TABLE_NAME:Ljava/lang/String; = "default_bottom_apps"

.field public static final TAG:Ljava/lang/String; = "DefaultBottomApps"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "packageName"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "className"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "screen"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "x"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "y"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "container"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/home/personalize/SceneProvider/DefaultBottomApps;->DefaultBottomAppsProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static CreateDefaultBottomAppsTableSQL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    const-string v1, "DefaultBottomApps"

    const-string v2, "CreateDefaultBottomAppsTableSQL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "default_bottom_apps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, "className"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, "screen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, "y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, "container"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static clearDefaultBottomAppsFromDB(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 127
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->DEFAULT_BOTTOM_APP_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 128
    .local v0, nDeleteCount:I
    const-string v2, "DefaultBottomApps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearDefaultBottomAppsFromDB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public static getDefaultBottomAppsToDB(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/scene/FavoriteData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->DEFAULT_BOTTOM_APP_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/home/personalize/SceneProvider/DefaultBottomApps;->DefaultBottomAppsProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 94
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 95
    const-string v1, "DefaultBottomApps"

    const-string v2, "getDefaultBottomAppsToDB cursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return-object v3

    .line 98
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    const-string v1, "DefaultBottomApps"

    const-string v2, "getDefaultBottomAppsToDB cursor fail"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 104
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v8, favoriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/scene/FavoriteData;>;"
    :cond_2
    new-instance v7, Lcom/htc/home/personalize/scene/FavoriteData;

    invoke-direct {v7}, Lcom/htc/home/personalize/scene/FavoriteData;-><init>()V

    .line 107
    .local v7, favorite:Lcom/htc/home/personalize/scene/FavoriteData;
    const-string v1, "packageName"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/htc/home/personalize/scene/FavoriteData;->m_strPackageName:Ljava/lang/String;

    .line 108
    const-string v1, "className"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/htc/home/personalize/scene/FavoriteData;->m_strClassName:Ljava/lang/String;

    .line 109
    const-string v1, "screen"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/htc/home/personalize/scene/FavoriteData;->m_nScreen:I

    .line 110
    const-string v1, "x"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/htc/home/personalize/scene/FavoriteData;->m_nX:I

    .line 111
    const-string v1, "y"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/htc/home/personalize/scene/FavoriteData;->m_nY:I

    .line 112
    const-string v1, "container"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/htc/home/personalize/scene/FavoriteData;->m_nContainer:I

    .line 114
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v1, "DefaultBottomApps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add favorite data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 118
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 119
    goto/16 :goto_0
.end method

.method public static getDefaultBottomAppsToXmlString(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 135
    invoke-static {p0}, Lcom/htc/home/personalize/SceneProvider/DefaultBottomApps;->getDefaultBottomAppsToDB(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 136
    .local v2, favoriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/scene/FavoriteData;>;"
    if-nez v2, :cond_0

    .line 137
    const-string v5, "DefaultBottomApps"

    const-string v6, "No quick launch shortcuts"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v4, 0x0

    .line 146
    :goto_0
    return-object v4

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/home/personalize/scene/FavoriteData;

    .line 142
    .local v1, favorite:Lcom/htc/home/personalize/scene/FavoriteData;
    invoke-virtual {v1}, Lcom/htc/home/personalize/scene/FavoriteData;->toXmlString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 144
    .end local v1           #favorite:Lcom/htc/home/personalize/scene/FavoriteData;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, strXmlString:Ljava/lang/String;
    const-string v5, "DefaultBottomApps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultBottomAppsToXmlString: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getIsSaveBottomBarApps(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 213
    const-string v1, "PersonalizeSummary"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 215
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "Save_BottomBar_Apps"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static insertDefaultBottomAppsToDB(Landroid/content/Context;Lcom/htc/home/personalize/scene/FavoriteData;)V
    .locals 4
    .parameter "context"
    .parameter "favorite"

    .prologue
    .line 71
    invoke-static {p1}, Lcom/htc/home/personalize/scene/FavoriteData;->IsFavoriteDataValid(Lcom/htc/home/personalize/scene/FavoriteData;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 75
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 76
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "packageName"

    iget-object v3, p1, Lcom/htc/home/personalize/scene/FavoriteData;->m_strPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v2, "className"

    iget-object v3, p1, Lcom/htc/home/personalize/scene/FavoriteData;->m_strClassName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v2, "screen"

    iget v3, p1, Lcom/htc/home/personalize/scene/FavoriteData;->m_nScreen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string v2, "x"

    iget v3, p1, Lcom/htc/home/personalize/scene/FavoriteData;->m_nX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v2, "y"

    iget v3, p1, Lcom/htc/home/personalize/scene/FavoriteData;->m_nY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v2, "container"

    iget v3, p1, Lcom/htc/home/personalize/scene/FavoriteData;->m_nContainer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    sget-object v2, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->DEFAULT_BOTTOM_APP_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private static saveBottomBarApps(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 17
    .parameter "context"
    .parameter "moduleBundle"

    .prologue
    .line 169
    if-nez p1, :cond_1

    .line 170
    const-string v7, "DefaultBottomApps"

    const-string v15, "getBottomBarApps moduleBundle is null"

    invoke-static {v7, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const-string v13, "default_quicklaunch"

    .line 174
    .local v13, strKeyShortcuts:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 175
    .local v11, shortcutsBundle:Landroid/os/Bundle;
    if-eqz v11, :cond_5

    .line 177
    invoke-virtual {v11}, Landroid/os/Bundle;->size()I

    move-result v10

    .line 178
    .local v10, nSize:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v10, :cond_0

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "plenty_set"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v15, v9, 0x1

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 180
    .local v12, strKey:Ljava/lang/String;
    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 181
    .local v8, childBundle:Landroid/os/Bundle;
    if-eqz v8, :cond_4

    .line 182
    const-string v7, "screen"

    invoke-virtual {v8, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 183
    .local v14, strScreen:Ljava/lang/String;
    if-eqz v14, :cond_2

    const-string v7, "0"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 178
    .end local v14           #strScreen:Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 186
    .restart local v14       #strScreen:Ljava/lang/String;
    :cond_3
    const-string v7, "package"

    invoke-virtual {v8, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, strPackage:Ljava/lang/String;
    const-string v7, "class"

    invoke-virtual {v8, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, strClass:Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 189
    .local v4, nScreen:I
    const-string v7, "x"

    invoke-virtual {v8, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 190
    .local v5, nX:I
    const-string v7, "y"

    invoke-virtual {v8, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 192
    .local v6, nY:I
    new-instance v1, Lcom/htc/home/personalize/scene/FavoriteData;

    const/16 v7, -0x65

    invoke-direct/range {v1 .. v7}, Lcom/htc/home/personalize/scene/FavoriteData;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 193
    .local v1, favorite:Lcom/htc/home/personalize/scene/FavoriteData;
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/htc/home/personalize/SceneProvider/DefaultBottomApps;->insertDefaultBottomAppsToDB(Landroid/content/Context;Lcom/htc/home/personalize/scene/FavoriteData;)V

    .line 194
    const-string v7, "DefaultBottomApps"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FavoriteData "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, v9, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v7, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 196
    .end local v1           #favorite:Lcom/htc/home/personalize/scene/FavoriteData;
    .end local v2           #strPackage:Ljava/lang/String;
    .end local v3           #strClass:Ljava/lang/String;
    .end local v4           #nScreen:I
    .end local v5           #nX:I
    .end local v6           #nY:I
    .end local v14           #strScreen:Ljava/lang/String;
    :cond_4
    const-string v7, "DefaultBottomApps"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getBottomBarApps childBundle "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, v9, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is null"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v7, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 200
    .end local v8           #childBundle:Landroid/os/Bundle;
    .end local v9           #i:I
    .end local v10           #nSize:I
    .end local v12           #strKey:Ljava/lang/String;
    :cond_5
    const-string v7, "DefaultBottomApps"

    const-string v15, "getBottomBarApps shortcutsBundle is null"

    invoke-static {v7, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static saveDefaultBottomBarApps(Landroid/content/Context;Lcom/htc/htcSceneManager/scene/SceneManager;)V
    .locals 2
    .parameter "context"
    .parameter "manager"

    .prologue
    .line 155
    invoke-virtual {p1, p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 157
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {p0}, Lcom/htc/home/personalize/SceneProvider/DefaultBottomApps;->clearDefaultBottomAppsFromDB(Landroid/content/Context;)V

    .line 159
    invoke-static {p0, v0}, Lcom/htc/home/personalize/SceneProvider/DefaultBottomApps;->saveBottomBarApps(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 160
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/htc/home/personalize/SceneProvider/DefaultBottomApps;->setIsSaveBottomBarApps(Landroid/content/Context;Z)V

    .line 161
    return-void
.end method

.method private static setIsSaveBottomBarApps(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "isSave"

    .prologue
    .line 205
    const-string v2, "PersonalizeSummary"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 207
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 208
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "Save_BottomBar_Apps"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 210
    return-void
.end method

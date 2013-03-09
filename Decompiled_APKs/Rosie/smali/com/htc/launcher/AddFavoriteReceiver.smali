.class public Lcom/htc/launcher/AddFavoriteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AddFavoriteReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/AddFavoriteReceiver$AddFavoritesThread;
    }
.end annotation


# static fields
.field private static final CELL_X:Ljava/lang/String; = "cell_x"

.field private static final CELL_Y:Ljava/lang/String; = "cell_y"

.field private static final CLASS_NAME:Ljava/lang/String; = "className"

.field private static final CONTAINER:Ljava/lang/String; = "container"

.field private static final FAVORITE_CONTENT_URI:Landroid/net/Uri; = null

.field private static final HOMESCREEN:Ljava/lang/String; = "homeScreen"

.field private static final INSERTSCENE:Ljava/lang/String; = "insertScene"

.field private static final INVALIDATE_SCENE_ID:I = -0x64

.field private static final ITEM_TYPE:Ljava/lang/String; = "itemType"

.field private static final KEY_SCENE_ID:Ljava/lang/String; = "scene_id"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final PREFIX_PROPERTY:Ljava/lang/String; = "property."

.field private static final PROVIDER_NAME:Ljava/lang/String; = "providerName"

.field private static final SCREEN:Ljava/lang/String; = "screen"

.field private static final SPAN_X:Ljava/lang/String; = "span_x"

.field private static final SPAN_Y:Ljava/lang/String; = "span_y"

.field private static final TAG:Ljava/lang/String; = null

.field private static final WIDGET_NAME:Ljava/lang/String; = "widgetName"

.field private static final localLOGD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/htc/launcher/AddFavoriteReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/AddFavoriteReceiver;->TAG:Ljava/lang/String;

    .line 53
    const-string v0, "content://com.htc.launcher.settings/favorites?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/AddFavoriteReceiver;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 319
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/htc/launcher/AddFavoriteReceiver;->saveFavoritesIntoDB(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static declared-synchronized createApplicationValues(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 17
    .parameter "context"
    .parameter "info"
    .parameter "workspaceId"

    .prologue
    .line 131
    const-class v16, Lcom/htc/launcher/AddFavoriteReceiver;

    monitor-enter v16

    :try_start_0
    const-string v1, "packageName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 132
    .local v14, packageName:Ljava/lang/String;
    const-string v1, "className"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 133
    .local v11, className:Ljava/lang/String;
    const-string v1, "screen"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 134
    .local v15, screen:Ljava/lang/String;
    const-string v1, "cell_x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, cell_x:Ljava/lang/String;
    const-string v1, "cell_y"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 136
    .local v10, cell_y:Ljava/lang/String;
    const-string v1, "container"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 139
    .local v12, container:Ljava/lang/String;
    new-instance v13, Lcom/htc/launcher/config/FavoriteData;

    invoke-direct {v13}, Lcom/htc/launcher/config/FavoriteData;-><init>()V

    .line 143
    .local v13, favdata:Lcom/htc/launcher/config/FavoriteData;
    iput-object v14, v13, Lcom/htc/launcher/config/FavoriteData;->packageName:Ljava/lang/String;

    .line 144
    iput-object v11, v13, Lcom/htc/launcher/config/FavoriteData;->className:Ljava/lang/String;

    .line 145
    move/from16 v0, p2

    iput v0, v13, Lcom/htc/launcher/config/FavoriteData;->workspaceId:I

    .line 146
    const/4 v1, 0x0

    iput v1, v13, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    .line 147
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v13, Lcom/htc/launcher/config/FavoriteData;->screen:I

    .line 148
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v13, Lcom/htc/launcher/config/FavoriteData;->x:I

    .line 149
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v13, Lcom/htc/launcher/config/FavoriteData;->y:I

    .line 150
    if-eqz v12, :cond_0

    .line 151
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v13, Lcom/htc/launcher/config/FavoriteData;->container:I

    .line 157
    :goto_0
    move-object/from16 v0, p0

    invoke-static {v13, v0}, Lcom/htc/launcher/LauncherModel;->getApplication(Lcom/htc/launcher/config/FavoriteData;Landroid/content/Context;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v2

    .line 159
    .local v2, app:Lcom/htc/launcher/ApplicationInfo;
    if-eqz v2, :cond_1

    .line 161
    iget-wide v3, v2, Lcom/htc/launcher/ApplicationInfo;->container:J

    iget v5, v2, Lcom/htc/launcher/ApplicationInfo;->screen:I

    iget v6, v2, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    iget v7, v2, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :goto_1
    monitor-exit v16

    return-void

    .line 153
    .end local v2           #app:Lcom/htc/launcher/ApplicationInfo;
    :cond_0
    const/16 v1, -0x64

    :try_start_1
    iput v1, v13, Lcom/htc/launcher/config/FavoriteData;->container:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    .end local v9           #cell_x:Ljava/lang/String;
    .end local v10           #cell_y:Ljava/lang/String;
    .end local v11           #className:Ljava/lang/String;
    .end local v12           #container:Ljava/lang/String;
    .end local v13           #favdata:Lcom/htc/launcher/config/FavoriteData;
    .end local v14           #packageName:Ljava/lang/String;
    .end local v15           #screen:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v16

    throw v1

    .line 164
    .restart local v2       #app:Lcom/htc/launcher/ApplicationInfo;
    .restart local v9       #cell_x:Ljava/lang/String;
    .restart local v10       #cell_y:Ljava/lang/String;
    .restart local v11       #className:Ljava/lang/String;
    .restart local v12       #container:Ljava/lang/String;
    .restart local v13       #favdata:Lcom/htc/launcher/config/FavoriteData;
    .restart local v14       #packageName:Ljava/lang/String;
    .restart local v15       #screen:Ljava/lang/String;
    :cond_1
    :try_start_2
    sget-object v1, Lcom/htc/launcher/AddFavoriteReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Application: getApplication fail"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static declared-synchronized createAppwidgetValues(Landroid/os/Bundle;ILandroid/content/Context;)V
    .locals 18
    .parameter "info"
    .parameter "workspaceId"
    .parameter "ctx"

    .prologue
    .line 278
    const-class v15, Lcom/htc/launcher/AddFavoriteReceiver;

    monitor-enter v15

    :try_start_0
    const-string v14, "packageName"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 279
    .local v8, packageName:Ljava/lang/String;
    const-string v14, "className"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, className:Ljava/lang/String;
    const-string v14, "screen"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 281
    .local v9, screen:Ljava/lang/String;
    const-string v14, "cell_x"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, cell_x:Ljava/lang/String;
    const-string v14, "cell_y"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, cell_y:Ljava/lang/String;
    const-string v14, "span_x"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 284
    .local v11, span_x:Ljava/lang/String;
    const-string v14, "span_y"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 286
    .local v12, span_y:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/htc/launcher/Launcher;->getDefaultAppWidgetHostInstance(Landroid/content/Context;)Lcom/htc/launcher/LauncherAppWidgetHost;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 289
    .local v1, appwidgetId:I
    :try_start_1
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 290
    .local v13, values:Landroid/content/ContentValues;
    const-string v14, "container"

    const/16 v16, -0x64

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    const-string v14, "screen"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    const-string v14, "cellX"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    const-string v14, "cellY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    const-string v14, "spanX"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 295
    const-string v14, "spanY"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    const-string v14, "itemType"

    const/16 v16, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    const-string v14, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    const-string v14, "workspace_id"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    const-string v14, "intent"

    new-instance v16, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    invoke-direct {v0, v8, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 303
    .local v6, cr:Landroid/content/ContentResolver;
    sget-object v14, Lcom/htc/launcher/AddFavoriteReceiver;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v14, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 305
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v2, bindTarget:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v14, Landroid/content/ComponentName;

    invoke-direct {v14, v8, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    const/4 v14, 0x1

    new-array v10, v14, [I

    .line 309
    .local v10, sourceArray:[I
    const/4 v14, 0x0

    aput v1, v10, v14

    .line 311
    move-object/from16 v0, p2

    invoke-static {v0, v10, v2}, Lcom/htc/launcher/WidgetPackageManager;->launchAppWidgetBinder(Landroid/content/Context;[ILjava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 317
    .end local v2           #bindTarget:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v10           #sourceArray:[I
    .end local v13           #values:Landroid/content/ContentValues;
    :goto_0
    monitor-exit v15

    return-void

    .line 313
    :catch_0
    move-exception v7

    .line 314
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v14, Lcom/htc/launcher/AddFavoriteReceiver;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "package/widget fail to added : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget-object v14, Lcom/htc/launcher/AddFavoriteReceiver;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 278
    .end local v1           #appwidgetId:I
    .end local v3           #cell_x:Ljava/lang/String;
    .end local v4           #cell_y:Ljava/lang/String;
    .end local v5           #className:Ljava/lang/String;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #screen:Ljava/lang/String;
    .end local v11           #span_x:Ljava/lang/String;
    .end local v12           #span_y:Ljava/lang/String;
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14
.end method

.method private static declared-synchronized createHtcFxWidgetValues(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 29
    .parameter "context"
    .parameter "info"
    .parameter "workspaceId"

    .prologue
    .line 224
    const-class v28, Lcom/htc/launcher/AddFavoriteReceiver;

    monitor-enter v28

    :try_start_0
    const-string v3, "packageName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 225
    .local v19, packageName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "providerName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 226
    .local v21, providerName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "widgetName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 227
    .local v27, widgetName:Ljava/lang/String;
    const-string v3, "screen"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 228
    .local v23, screen:Ljava/lang/String;
    const-string v3, "cell_x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 229
    .local v11, cell_x:Ljava/lang/String;
    const-string v3, "cell_y"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 230
    .local v12, cell_y:Ljava/lang/String;
    const-string v3, "span_x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 231
    .local v24, span_x:Ljava/lang/String;
    const-string v3, "span_y"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v25

    .line 237
    .local v25, span_y:Ljava/lang/String;
    :try_start_1
    new-instance v4, Lcom/htc/launcher/FxItemInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-direct {v4, v0, v1}, Lcom/htc/launcher/FxItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .local v4, fxInfo:Lcom/htc/launcher/FxItemInfo;
    invoke-static/range {p0 .. p0}, Lcom/htc/launcher/LauncherModel;->getNextHostWidgetManagerId(Landroid/content/Context;)I

    move-result v3

    iput v3, v4, Lcom/htc/launcher/FxItemInfo;->widgetId:I

    .line 239
    const/4 v3, 0x0

    iput-object v3, v4, Lcom/htc/launcher/FxItemInfo;->data:[B

    .line 240
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/htc/launcher/FxItemInfo;->screen:I

    .line 241
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/htc/launcher/FxItemInfo;->cellX:I

    .line 242
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/htc/launcher/FxItemInfo;->cellY:I

    .line 243
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/htc/launcher/FxItemInfo;->spanX:I

    .line 244
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/htc/launcher/FxItemInfo;->spanY:I

    .line 245
    move/from16 v0, p2

    iput v0, v4, Lcom/htc/launcher/FxItemInfo;->workspaceId:I

    .line 247
    const/16 v20, 0x0

    .line 248
    .local v20, props:Ljava/util/Properties;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 249
    .local v15, ketSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 250
    .local v16, key:Ljava/lang/String;
    if-eqz v16, :cond_0

    const-string v3, "property."

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    if-nez v20, :cond_1

    .line 252
    new-instance v20, Ljava/util/Properties;

    .end local v20           #props:Ljava/util/Properties;
    invoke-direct/range {v20 .. v20}, Ljava/util/Properties;-><init>()V

    .line 254
    .restart local v20       #props:Ljava/util/Properties;
    :cond_1
    const-string v3, "property."

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 255
    .local v22, realKey:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 258
    .local v26, value:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 272
    .end local v4           #fxInfo:Lcom/htc/launcher/FxItemInfo;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #ketSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16           #key:Ljava/lang/String;
    .end local v20           #props:Ljava/util/Properties;
    .end local v22           #realKey:Ljava/lang/String;
    .end local v26           #value:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 273
    .local v13, ex:Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/htc/launcher/AddFavoriteReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package/widget fail to added : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    .end local v13           #ex:Ljava/lang/Exception;
    :goto_1
    monitor-exit v28

    return-void

    .line 262
    .restart local v4       #fxInfo:Lcom/htc/launcher/FxItemInfo;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v15       #ketSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20       #props:Ljava/util/Properties;
    :cond_2
    if-eqz v20, :cond_3

    .line 263
    :try_start_3
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 264
    .local v17, out:Ljava/io/ByteArrayOutputStream;
    new-instance v18, Ljava/io/ObjectOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 265
    .local v18, out2:Ljava/io/ObjectOutputStream;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 266
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v4, Lcom/htc/launcher/FxItemInfo;->data:[B

    .line 269
    .end local v17           #out:Ljava/io/ByteArrayOutputStream;
    .end local v18           #out2:Ljava/io/ObjectOutputStream;
    :cond_3
    const-wide/16 v5, -0x64

    iget v7, v4, Lcom/htc/launcher/FxItemInfo;->screen:I

    iget v8, v4, Lcom/htc/launcher/FxItemInfo;->cellX:I

    iget v9, v4, Lcom/htc/launcher/FxItemInfo;->cellY:I

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v10}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 224
    .end local v4           #fxInfo:Lcom/htc/launcher/FxItemInfo;
    .end local v11           #cell_x:Ljava/lang/String;
    .end local v12           #cell_y:Ljava/lang/String;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #ketSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19           #packageName:Ljava/lang/String;
    .end local v20           #props:Ljava/util/Properties;
    .end local v21           #providerName:Ljava/lang/String;
    .end local v23           #screen:Ljava/lang/String;
    .end local v24           #span_x:Ljava/lang/String;
    .end local v25           #span_y:Ljava/lang/String;
    .end local v27           #widgetName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v28

    throw v3
.end method

.method private static declared-synchronized createHtcWidgetValues(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 28
    .parameter "context"
    .parameter "info"
    .parameter "workspaceId"

    .prologue
    .line 169
    const-class v27, Lcom/htc/launcher/AddFavoriteReceiver;

    monitor-enter v27

    :try_start_0
    const-string v3, "packageName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 170
    .local v20, packageName:Ljava/lang/String;
    const-string v3, "widgetName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 171
    .local v25, widgetName:Ljava/lang/String;
    const-string v3, "screen"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 172
    .local v23, screen:Ljava/lang/String;
    const-string v3, "cell_x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 173
    .local v11, cell_x:Ljava/lang/String;
    const-string v3, "cell_y"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 176
    .local v12, cell_y:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/htc/launcher/WidgetPackageManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/WidgetPackageManager;

    move-result-object v26

    .line 177
    .local v26, widgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;
    move-object/from16 v0, v26

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/WidgetPackageManager;->getWidgetItem(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/launcher/WidgetItem;

    move-result-object v15

    .line 178
    .local v15, item:Lcom/htc/launcher/WidgetItem;
    if-nez v15, :cond_0

    .line 179
    sget-object v3, Lcom/htc/launcher/AddFavoriteReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package/widget not found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :goto_0
    monitor-exit v27

    return-void

    .line 184
    :cond_0
    :try_start_1
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 185
    .local v7, intScreen:I
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 186
    .local v8, intCellX:I
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 188
    .local v9, intCellY:I
    invoke-virtual {v15}, Lcom/htc/launcher/WidgetItem;->newWidget()Lcom/htc/launcher/WidgetProxy;

    move-result-object v4

    .line 189
    .local v4, widget:Lcom/htc/launcher/Widget;
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/htc/launcher/Widget;->setWorkspaceId(I)V

    .line 192
    const/16 v21, 0x0

    .line 193
    .local v21, props:Ljava/util/Properties;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 194
    .local v16, ketSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 195
    .local v17, key:Ljava/lang/String;
    if-eqz v17, :cond_1

    const-string v3, "property."

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    if-nez v21, :cond_2

    .line 197
    new-instance v21, Ljava/util/Properties;

    .end local v21           #props:Ljava/util/Properties;
    invoke-direct/range {v21 .. v21}, Ljava/util/Properties;-><init>()V

    .line 199
    .restart local v21       #props:Ljava/util/Properties;
    :cond_2
    const-string v3, "property."

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 200
    .local v22, realKey:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 203
    .local v24, value:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 218
    .end local v4           #widget:Lcom/htc/launcher/Widget;
    .end local v7           #intScreen:I
    .end local v8           #intCellX:I
    .end local v9           #intCellY:I
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #ketSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17           #key:Ljava/lang/String;
    .end local v21           #props:Ljava/util/Properties;
    .end local v22           #realKey:Ljava/lang/String;
    .end local v24           #value:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 219
    .local v13, ex:Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/htc/launcher/AddFavoriteReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package/widget fail to added : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 169
    .end local v11           #cell_x:Ljava/lang/String;
    .end local v12           #cell_y:Ljava/lang/String;
    .end local v13           #ex:Ljava/lang/Exception;
    .end local v15           #item:Lcom/htc/launcher/WidgetItem;
    .end local v20           #packageName:Ljava/lang/String;
    .end local v23           #screen:Ljava/lang/String;
    .end local v25           #widgetName:Ljava/lang/String;
    .end local v26           #widgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;
    :catchall_0
    move-exception v3

    monitor-exit v27

    throw v3

    .line 207
    .restart local v4       #widget:Lcom/htc/launcher/Widget;
    .restart local v7       #intScreen:I
    .restart local v8       #intCellX:I
    .restart local v9       #intCellY:I
    .restart local v11       #cell_x:Ljava/lang/String;
    .restart local v12       #cell_y:Ljava/lang/String;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v15       #item:Lcom/htc/launcher/WidgetItem;
    .restart local v16       #ketSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20       #packageName:Ljava/lang/String;
    .restart local v21       #props:Ljava/util/Properties;
    .restart local v23       #screen:Ljava/lang/String;
    .restart local v25       #widgetName:Ljava/lang/String;
    .restart local v26       #widgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;
    :cond_3
    if-eqz v21, :cond_4

    .line 208
    :try_start_3
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 209
    .local v18, out:Ljava/io/ByteArrayOutputStream;
    new-instance v19, Ljava/io/ObjectOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 210
    .local v19, out2:Ljava/io/ObjectOutputStream;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 211
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v4, Lcom/htc/launcher/Widget;->props:[B

    .line 216
    .end local v18           #out:Ljava/io/ByteArrayOutputStream;
    .end local v19           #out2:Ljava/io/ObjectOutputStream;
    :cond_4
    const-wide/16 v5, -0x64

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v10}, Lcom/htc/launcher/LauncherModel;->initAddItemToDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private static saveFavoritesIntoDB(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 68
    const-string v14, "scene_id"

    const/16 v15, -0x64

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 69
    .local v12, sceneId:I
    invoke-static/range {p0 .. p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentScene(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v14

    invoke-virtual {v14}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v2

    .line 70
    .local v2, currentSceneId:I
    const-string v14, "homeScreen"

    const/4 v15, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 71
    .local v4, homeScreen:I
    const-string v14, "insertScene"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 72
    .local v7, isInsert:Z
    if-nez v7, :cond_0

    if-ne v2, v12, :cond_0

    const/4 v6, 0x1

    .line 73
    .local v6, isCurrentScene:Z
    :goto_0
    const/16 v14, -0x64

    if-ne v12, v14, :cond_1

    .line 74
    sget-object v14, Lcom/htc/launcher/AddFavoriteReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Receive invalidate scene id = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_1
    return-void

    .line 72
    .end local v6           #isCurrentScene:Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 78
    .restart local v6       #isCurrentScene:Z
    :cond_1
    if-nez v7, :cond_2

    .line 79
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/htc/launcher/LauncherModel;->deleteScene(Landroid/content/Context;I)V

    .line 80
    if-eqz v6, :cond_2

    .line 81
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/htc/launcher/LauncherModel;->deleteScene(Landroid/content/Context;I)V

    .line 84
    :cond_2
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    const/16 v14, 0xc8

    if-ge v5, v14, :cond_3

    .line 85
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 86
    .local v3, favoBundle:Landroid/os/Bundle;
    if-nez v3, :cond_5

    .line 102
    .end local v3           #favoBundle:Landroid/os/Bundle;
    :cond_3
    if-eqz v6, :cond_4

    .line 103
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v14}, Lcom/htc/launcher/LauncherModel;->duplicateAllItems(Landroid/content/Context;II)V

    .line 104
    sget-object v14, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/launcher/Launcher;

    .line 105
    .local v9, launcher:Lcom/htc/launcher/Launcher;
    if-eqz v9, :cond_4

    .line 106
    invoke-virtual {v9}, Lcom/htc/launcher/Launcher;->reloadDesktopItems()V

    .line 112
    .end local v9           #launcher:Lcom/htc/launcher/Launcher;
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneById(I)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v11

    .line 113
    .local v11, scene:Lcom/htc/htcSceneManager/scene/Scene;
    invoke-virtual {v11}, Lcom/htc/htcSceneManager/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v10

    .line 116
    .local v10, newSceneName:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/htc/launcher/PagesManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/PagesManager;

    move-result-object v14

    invoke-virtual {v14, v12, v10}, Lcom/htc/launcher/PagesManager;->newScene(ILjava/lang/String;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 120
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 122
    .local v13, values:Landroid/content/ContentValues;
    const-string v14, "_id"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    const-string v14, "scene_name"

    invoke-virtual {v13, v14, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v14, "pages_count"

    const/4 v15, 0x7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string v14, "home_index"

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    sget-object v14, Lcom/htc/launcher/LauncherSettings$ScenePagesInfo;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    invoke-virtual {v1, v14, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    .line 89
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v10           #newSceneName:Ljava/lang/String;
    .end local v11           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    .end local v13           #values:Landroid/content/ContentValues;
    .restart local v3       #favoBundle:Landroid/os/Bundle;
    :cond_5
    const-string v14, "itemType"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, itemType:Ljava/lang/String;
    const-string v14, "application"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 92
    move-object/from16 v0, p0

    invoke-static {v0, v3, v12}, Lcom/htc/launcher/AddFavoriteReceiver;->createApplicationValues(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 84
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 93
    :cond_7
    const-string v14, "htc_widget"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 94
    move-object/from16 v0, p0

    invoke-static {v0, v3, v12}, Lcom/htc/launcher/AddFavoriteReceiver;->createHtcWidgetValues(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_3

    .line 95
    :cond_8
    const-string v14, "htc_fx_widget"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 96
    move-object/from16 v0, p0

    invoke-static {v0, v3, v12}, Lcom/htc/launcher/AddFavoriteReceiver;->createHtcFxWidgetValues(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_3

    .line 97
    :cond_9
    const-string v14, "app_widget"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 98
    move-object/from16 v0, p0

    invoke-static {v3, v12, v0}, Lcom/htc/launcher/AddFavoriteReceiver;->createAppwidgetValues(Landroid/os/Bundle;ILandroid/content/Context;)V

    goto :goto_3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 62
    new-instance v0, Lcom/htc/launcher/AddFavoriteReceiver$AddFavoritesThread;

    invoke-direct {v0, p1, p2}, Lcom/htc/launcher/AddFavoriteReceiver$AddFavoritesThread;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 63
    .local v0, addFavoritesThread:Lcom/htc/launcher/AddFavoriteReceiver$AddFavoritesThread;
    invoke-virtual {v0}, Lcom/htc/launcher/AddFavoriteReceiver$AddFavoritesThread;->start()V

    .line 64
    return-void
.end method

.class public Lcom/htc/home/RosieScenesAPI;
.super Ljava/lang/Object;
.source "RosieScenesAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/RosieScenesAPI$FavoritesColumns;,
        Lcom/htc/home/RosieScenesAPI$SceneColumns;
    }
.end annotation


# static fields
.field public static final ACTION_CHANGE_RESTRICTSCENE:Ljava/lang/String; = "com.htc.launcher.ThemeChooser.action.restrict_theme_change"

.field public static final ACTION_CHANGE_SCENE:Ljava/lang/String; = "com.htc.launcher.ThemeChooser.action.theme_change"

.field public static final ACTION_COPY_SCENE:Ljava/lang/String; = "com.htc.launcher.ThemeChooser.action.theme_copy"

.field public static final ACTION_DELETE_SCENE:Ljava/lang/String; = "com.htc.launcher.ThemeChooser.action.theme_delete"

.field public static final ACTION_NEW_SCENE:Ljava/lang/String; = "com.htc.launcher.ThemeChooser.action.theme_new"

.field public static final ACTION_RENAME_SCENE:Ljava/lang/String; = "com.htc.launcher.ThemeChooser.action.theme_rename"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final EXTRA_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final EXTRA_NEW_WORKSPACE_ID:Ljava/lang/String; = "new_workspace_id"

.field public static final EXTRA_WORKSPACE_ID:Ljava/lang/String; = "workspace_id"

.field public static final FAVORITES_URI:Landroid/net/Uri; = null

.field private static final MAX_SHORCUT_COUNT:I = 0x10

.field public static final NEW_CONTENT_URI:Landroid/net/Uri; = null

.field public static final TAG:Ljava/lang/String; = "RosieScenesAPI"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "content://com.htc.launcher.settings/widget_workspaces"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/home/RosieScenesAPI;->CONTENT_URI:Landroid/net/Uri;

    .line 35
    const-string v0, "content://com.htc.launcher.settings/favorites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/home/RosieScenesAPI;->FAVORITES_URI:Landroid/net/Uri;

    .line 38
    const-string v0, "content://com.htc.launcher.settings/widget_workspaces?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/home/RosieScenesAPI;->NEW_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static addRestrictApp(Landroid/content/Context;ILjava/lang/String;)I
    .locals 21
    .parameter "context"
    .parameter "scene_id"
    .parameter "packageName"

    .prologue
    .line 192
    invoke-static/range {p0 .. p1}, Lcom/htc/home/RosieScenesAPI;->isRestrictSceneId(Landroid/content/Context;I)Z

    move-result v18

    if-nez v18, :cond_0

    .line 193
    new-instance v18, Ljava/lang/RuntimeException;

    const-string v19, "Invalid Scene Id in addRestrictApp function!"

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 194
    :cond_0
    const/4 v11, -0x1

    .line 195
    .local v11, id:I
    const/4 v7, 0x0

    .line 196
    .local v7, count:I
    invoke-static/range {p0 .. p1}, Lcom/htc/home/RosieScenesAPI;->listRestrictApps(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v8

    .line 197
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 199
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 200
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 201
    const/4 v8, 0x0

    .line 204
    :cond_1
    const/16 v18, 0x10

    move/from16 v0, v18

    if-ge v7, v0, :cond_2

    .line 207
    const/16 v18, 0x0

    const-string v19, "/"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 208
    .local v10, iconPackage:Ljava/lang/String;
    const-string v18, "."

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 209
    .local v14, title:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ";end"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 213
    .local v12, intent:Ljava/lang/String;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 215
    .local v17, values:Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 216
    .local v13, mPm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 217
    .local v3, activityInfo:Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x0

    .line 218
    .local v4, activityName:Ljava/lang/String;
    const-string v18, "/"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_3

    .line 220
    const-string v18, "/"

    const-string v19, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 225
    :goto_0
    :try_start_0
    new-instance v18, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    invoke-direct {v0, v10, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 226
    invoke-virtual {v3, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 227
    .local v5, cS:Ljava/lang/CharSequence;
    const-string v18, "title"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v5           #cS:Ljava/lang/CharSequence;
    :goto_1
    const-string v18, "intent"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v18, "iconPackage"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v18, "workspace_id"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v18, "container"

    const/16 v19, -0x64

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const-string v18, "screen"

    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v6, v0, [I

    .line 239
    .local v6, cell:[I
    invoke-static/range {p0 .. p1}, Lcom/htc/home/RosieScenesAPI;->findEmptyCell(Landroid/content/Context;I)[I

    move-result-object v6

    .line 240
    const-string v18, "cellX"

    const/16 v19, 0x0

    aget v19, v6, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    const-string v18, "cellY"

    const/16 v19, 0x1

    aget v19, v6, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    const-string v18, "spanX"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    const-string v18, "spanY"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    const-string v18, "itemType"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const/16 v16, 0x0

    .line 247
    .local v16, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/htc/home/RosieScenesAPI;->FAVORITES_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 248
    if-eqz v16, :cond_2

    .line 249
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    .line 250
    .local v15, tmp:Ljava/lang/String;
    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 254
    .end local v3           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v4           #activityName:Ljava/lang/String;
    .end local v6           #cell:[I
    .end local v10           #iconPackage:Ljava/lang/String;
    .end local v12           #intent:Ljava/lang/String;
    .end local v13           #mPm:Landroid/content/pm/PackageManager;
    .end local v14           #title:Ljava/lang/String;
    .end local v15           #tmp:Ljava/lang/String;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_2
    const-string v18, "RosieScenesAPI"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "addRestrictApp id = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", scene_id = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", packageName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return v11

    .line 222
    .restart local v3       #activityInfo:Landroid/content/pm/ActivityInfo;
    .restart local v4       #activityName:Ljava/lang/String;
    .restart local v10       #iconPackage:Ljava/lang/String;
    .restart local v12       #intent:Ljava/lang/String;
    .restart local v13       #mPm:Landroid/content/pm/PackageManager;
    .restart local v14       #title:Ljava/lang/String;
    .restart local v17       #values:Landroid/content/ContentValues;
    :cond_3
    const-string v18, "/"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 228
    :catch_0
    move-exception v9

    .line 230
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 231
    const-string v18, "title"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static changeScene(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "sceneId"

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "workspace_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    invoke-static {p0, p1}, Lcom/htc/home/RosieScenesAPI;->isRestrictSceneId(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string v1, "com.htc.launcher.ThemeChooser.action.restrict_theme_change"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    return-void

    .line 92
    :cond_0
    const-string v1, "com.htc.launcher.ThemeChooser.action.theme_change"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static deleteRestrictApp(Landroid/content/Context;II)Z
    .locals 6
    .parameter "context"
    .parameter "scene_id"
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 270
    invoke-static {p0, p1}, Lcom/htc/home/RosieScenesAPI;->isRestrictSceneId(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid Scene Id in deleteRestrictApp function!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/home/RosieScenesAPI;->FAVORITES_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "workspace_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 277
    .local v0, numRowDeleted:I
    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deleteScene(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "sceneId"

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.launcher.ThemeChooser.action.theme_delete"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v1, "workspace_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 150
    return-void
.end method

.method private static findEmptyCell(Landroid/content/Context;I)[I
    .locals 23
    .parameter "context"
    .parameter "scene_id"

    .prologue
    .line 334
    const/16 v20, 0x4

    .line 335
    .local v20, xCount:I
    const/16 v22, 0x4

    .line 337
    .local v22, yCount:I
    const/4 v3, 0x4

    const/4 v4, 0x4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [[Z

    .line 339
    .local v18, occupied:[[Z
    const/4 v3, 0x2

    new-array v15, v3, [I

    .line 341
    .local v15, emptyCell:[I
    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v15, v3

    .line 342
    const/4 v3, 0x1

    const/4 v4, 0x3

    aput v4, v15, v3

    .line 344
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 345
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/htc/home/RosieScenesAPI;->FAVORITES_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "cellX"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "cellY"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screen=2 AND workspace_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 351
    .local v9, c:Landroid/database/Cursor;
    const-string v3, "cellX"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 352
    .local v11, cellXIndex:I
    const-string v3, "cellY"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 355
    .local v13, cellYIndex:I
    :cond_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 356
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 357
    .local v10, cellX:I
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 359
    .local v12, cellY:I
    move/from16 v19, v10

    .local v19, x:I
    :goto_0
    add-int/lit8 v3, v10, 0x1

    move/from16 v0, v19

    if-ge v0, v3, :cond_0

    const/4 v3, 0x4

    move/from16 v0, v19

    if-ge v0, v3, :cond_0

    .line 360
    move/from16 v21, v12

    .local v21, y:I
    :goto_1
    add-int/lit8 v3, v12, 0x1

    move/from16 v0, v21

    if-ge v0, v3, :cond_1

    const/4 v3, 0x4

    move/from16 v0, v21

    if-ge v0, v3, :cond_1

    .line 361
    aget-object v3, v18, v19

    const/4 v4, 0x1

    aput-boolean v4, v3, v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 359
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 368
    .end local v10           #cellX:I
    .end local v12           #cellY:I
    .end local v19           #x:I
    .end local v21           #y:I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 373
    const/16 v21, 0x3

    .restart local v21       #y:I
    :goto_2
    if-ltz v21, :cond_4

    .line 374
    const/16 v19, 0x0

    .restart local v19       #x:I
    :goto_3
    const/4 v3, 0x4

    move/from16 v0, v19

    if-ge v0, v3, :cond_a

    .line 375
    aget-object v3, v18, v19

    aget-boolean v3, v3, v21

    if-nez v3, :cond_5

    const/4 v8, 0x1

    .line 376
    .local v8, available:Z
    :goto_4
    move/from16 v16, v19

    .local v16, i:I
    :goto_5
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    const/4 v3, 0x4

    move/from16 v0, v19

    if-ge v0, v3, :cond_3

    .line 377
    move/from16 v17, v21

    .local v17, j:I
    :goto_6
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    const/4 v3, 0x4

    move/from16 v0, v21

    if-ge v0, v3, :cond_8

    .line 378
    if-eqz v8, :cond_6

    aget-object v3, v18, v16

    aget-boolean v3, v3, v17

    if-nez v3, :cond_6

    const/4 v8, 0x1

    .line 379
    :goto_7
    if-nez v8, :cond_7

    .line 383
    .end local v17           #j:I
    :cond_3
    if-eqz v8, :cond_9

    .line 384
    const/4 v3, 0x0

    aput v19, v15, v3

    .line 385
    const/4 v3, 0x1

    aput v21, v15, v3

    .line 391
    .end local v8           #available:Z
    .end local v16           #i:I
    .end local v19           #x:I
    .end local v21           #y:I
    :cond_4
    :goto_8
    return-object v15

    .line 365
    :catch_0
    move-exception v14

    .line 368
    .local v14, e:Ljava/lang/Exception;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .end local v14           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    .line 375
    .restart local v19       #x:I
    .restart local v21       #y:I
    :cond_5
    const/4 v8, 0x0

    goto :goto_4

    .line 378
    .restart local v8       #available:Z
    .restart local v16       #i:I
    .restart local v17       #j:I
    :cond_6
    const/4 v8, 0x0

    goto :goto_7

    .line 377
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 376
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 374
    .end local v17           #j:I
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 373
    .end local v8           #available:Z
    .end local v16           #i:I
    :cond_a
    add-int/lit8 v21, v21, -0x1

    goto :goto_2
.end method

.method public static getActiveScene(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/home/RosieScenesAPI;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "selected=1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static isRestrictSceneId(Landroid/content/Context;I)Z
    .locals 8
    .parameter "context"
    .parameter "scene_id"

    .prologue
    const/4 v2, 0x0

    .line 318
    const/4 v7, 0x0

    .line 319
    .local v7, isValid:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/home/RosieScenesAPI;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "isRestrictScene"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 323
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 324
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 325
    const/4 v7, 0x1

    .line 326
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 327
    const/4 v6, 0x0

    .line 330
    :cond_1
    return v7
.end method

.method public static listReadOnlyScenes(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/home/RosieScenesAPI;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "status=2"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static listRestrictApps(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "scene_id"

    .prologue
    const/4 v4, 0x0

    .line 168
    invoke-static {p0, p1}, Lcom/htc/home/RosieScenesAPI;->isRestrictSceneId(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid Scene Id in listRestrictApps function!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    const/4 v6, 0x0

    .line 172
    .local v6, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/home/RosieScenesAPI;->FAVORITES_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "title"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "intent"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "icon"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, "iconPackage"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "workspace_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 177
    return-object v6
.end method

.method public static listWritableScenes(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/home/RosieScenesAPI;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "status=0"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static makeUri(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 68
    sget-object v0, Lcom/htc/home/RosieScenesAPI;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static newSceneByCopy(Landroid/content/Context;ILandroid/content/BroadcastReceiver;)V
    .locals 8
    .parameter "context"
    .parameter "readOnlySceneId"
    .parameter "resultReceiver"

    .prologue
    const/4 v2, 0x0

    .line 97
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "com.htc.launcher.ThemeChooser.action.theme_copy"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v0, "workspace_id"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    const/4 v5, -0x1

    move-object v0, p0

    move-object v3, p2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method public static renameScene(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "sceneId"
    .parameter "newSceneName"

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.launcher.ThemeChooser.action.theme_rename"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v1, "workspace_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const-string v1, "display_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    return-void
.end method

.method public static syncNewSceneByCopy(Landroid/content/Context;I)I
    .locals 6
    .parameter "context"
    .parameter "readOnlySceneId"

    .prologue
    .line 116
    const/4 v1, -0x1

    .line 119
    .local v1, newSceneId:I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 120
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "display_name"

    const-string v5, "unUpdate"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/home/RosieScenesAPI;->NEW_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 123
    .local v2, result:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 127
    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "com.htc.launcher.ThemeChooser.action.theme_new"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v4, "workspace_id"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string v4, "new_workspace_id"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 134
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return v1
.end method

.method public static updateRestrictApp(Landroid/content/Context;IILjava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "scene_id"
    .parameter "id"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 293
    invoke-static {p0, p1}, Lcom/htc/home/RosieScenesAPI;->isRestrictSceneId(Landroid/content/Context;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 294
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid Scene Id in updateRestrictApp function!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 297
    :cond_0
    const-string v7, "/"

    invoke-virtual {p3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, iconPackage:Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, title:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";end"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, intent:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 304
    .local v4, values:Landroid/content/ContentValues;
    const-string v7, "title"

    invoke-virtual {v4, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v7, "intent"

    invoke-virtual {v4, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v7, "iconPackage"

    invoke-virtual {v4, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v7, "workspace_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/htc/home/RosieScenesAPI;->FAVORITES_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "workspace_id"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v4, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 314
    .local v2, numRowUpdated:I
    if-ne v2, v5, :cond_1

    :goto_0
    return v5

    :cond_1
    move v5, v6

    goto :goto_0
.end method

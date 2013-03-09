.class public Lcom/htc/home/RosieItemUtility;
.super Ljava/lang/Object;
.source "RosieItemUtility.java"


# static fields
.field public static final ACTION_ITEM_ADDED:Ljava/lang/String; = "com.htc.launcher.action.ACTION_ITEM_ADDED"

.field public static final ACTION_ITEM_REMOVED:Ljava/lang/String; = "com.htc.launcher.action.ACTION_ITEM_REMOVED"

.field public static final ACTION_UPDATE_ICON:Ljava/lang/String; = "com.htc.launcher.action.UPDATE_SHORTCUT"

.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.launcher.settings"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final EXTRA_ICON:Ljava/lang/String; = "favorite_icon"

.field public static final EXTRA_INTENT:Ljava/lang/String; = "favorite_intent"

.field public static final EXTRA_ITEM_ID:Ljava/lang/String; = "favorite_item_id"

.field public static final EXTRA_NEWSTYLE:Ljava/lang/String; = "newStyle"

.field public static final EXTRA_PACKAGENAME:Ljava/lang/String; = "packagename"

.field public static final EXTRA_PRIORITY:Ljava/lang/String; = "priority"

.field public static final EXTRA_SELECT:Ljava/lang/String; = "select"

.field public static final EXTRA_SELECT_ARGS:Ljava/lang/String; = "selectArgs"

.field public static final EXTRA_TITEL:Ljava/lang/String; = "favorite_title"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INTENT:Ljava/lang/String; = "intent"

.field public static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field public static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "content://com.htc.launcher.settings/favorites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/home/RosieItemUtility;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;)V
    .locals 3
    .parameter "context"
    .parameter "itemId"
    .parameter "bitmap"

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "favorite_item_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 56
    const-string v1, "favorite_icon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 58
    const-string v1, "packagename"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method public static updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "itemId"
    .parameter "bitmap"
    .parameter "intent"
    .parameter "title"

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "favorite_item_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 73
    const-string v1, "favorite_icon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    const-string v1, "favorite_title"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "favorite_intent"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    const-string v1, "packagename"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method public static updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;ZI)V
    .locals 3
    .parameter "context"
    .parameter "itemId"
    .parameter "bitmap"
    .parameter "intent"
    .parameter "title"
    .parameter "newStyle"
    .parameter "priority"

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "favorite_item_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 96
    const-string v1, "favorite_icon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    const-string v1, "favorite_title"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v1, "favorite_intent"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 100
    const-string v1, "packagename"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v1, "newStyle"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    const-string v1, "priority"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method public static updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "map"
    .parameter "intent"
    .parameter "title"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 158
    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)V

    .line 160
    return-void
.end method

.method public static updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)V
    .locals 13
    .parameter "context"
    .parameter "map"
    .parameter "intent"
    .parameter "title"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "newStyle"
    .parameter "priority"

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 181
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/home/RosieItemUtility;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "intent"

    aput-object v5, v2, v4

    const/4 v5, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 185
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 187
    :try_start_0
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 188
    .local v12, idIndex:I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 190
    .local v2, _id:J
    if-eqz p6, :cond_1

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p6

    move/from16 v8, p7

    .line 191
    invoke-static/range {v1 .. v8}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    .end local v2           #_id:J
    .end local v12           #idIndex:I
    :catch_0
    move-exception v11

    .line 196
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "RosieItemUtility"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 199
    const/4 v10, 0x0

    .end local v11           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    move-object v4, p0

    move-object v5, p2

    move-object/from16 v6, p3

    move-object v7, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 202
    invoke-static/range {v4 .. v9}, Lcom/htc/home/RosieItemUtility;->updateIconForAllApps(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;[Ljava/lang/String;)V

    .line 203
    return-void

    .restart local v2       #_id:J
    .restart local v12       #idIndex:I
    :cond_1
    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    .line 193
    :try_start_2
    invoke-static/range {v1 .. v6}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 198
    .end local v2           #_id:J
    .end local v12           #idIndex:I
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 199
    const/4 v10, 0x0

    throw v1

    .line 198
    .restart local v12       #idIndex:I
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 199
    const/4 v10, 0x0

    .line 200
    goto :goto_1
.end method

.method public static updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "map"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 120
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/home/RosieItemUtility;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "intent"

    aput-object v4, v2, v3

    const/4 v5, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 124
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 126
    :try_start_0
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 127
    .local v11, idIndex:I
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 129
    .local v7, _id:J
    invoke-static {p0, v7, v8, p1}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v7           #_id:J
    .end local v11           #idIndex:I
    :catch_0
    move-exception v10

    .line 132
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "RosieItemUtility"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 135
    const/4 v9, 0x0

    .line 138
    .end local v10           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/htc/home/RosieItemUtility;->updateIconForAllApps(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;[Ljava/lang/String;)V

    .line 139
    return-void

    .line 134
    .restart local v11       #idIndex:I
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 135
    const/4 v9, 0x0

    .line 136
    goto :goto_1

    .line 134
    .end local v11           #idIndex:I
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 135
    const/4 v9, 0x0

    throw v1
.end method

.method private static updateIconForAllApps(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "ctx"
    .parameter "intent"
    .parameter "title"
    .parameter "icon"
    .parameter "select"
    .parameter "selectArgs"

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "favorite_item_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 215
    const-string v1, "favorite_icon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 216
    const-string v1, "favorite_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v1, "favorite_intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 218
    const-string v1, "packagename"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v1, "select"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v1, "selectArgs"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 222
    return-void
.end method

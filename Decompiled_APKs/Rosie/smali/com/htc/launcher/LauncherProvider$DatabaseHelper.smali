.class Lcom/htc/launcher/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final TAG_CLOCK:Ljava/lang/String; = "clock"

.field private static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_SEARCH:Ljava/lang/String; = "search"


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 677
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 678
    iput-object p1, p0, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 679
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x270f

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 680
    return-void
.end method

.method private convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 9
    .parameter "db"

    .prologue
    const/4 v8, 0x0

    .line 783
    const/4 v6, 0x0

    .line 785
    .local v6, converted:Z
    const-string v2, "content://settings/old_favorites?notify=true"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 787
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 788
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 791
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 797
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 799
    :try_start_1
    invoke-direct {p0, p1, v7}, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-lez v2, :cond_2

    const/4 v6, 0x1

    .line 801
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 804
    if-eqz v6, :cond_0

    .line 805
    invoke-virtual {v0, v1, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 809
    :cond_0
    if-eqz v6, :cond_1

    .line 814
    invoke-direct {p0, p1}, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 817
    :cond_1
    return v6

    .line 799
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 801
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    .line 792
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 21
    .parameter "db"

    .prologue
    .line 1173
    const/4 v3, 0x2

    new-array v13, v3, [I

    fill-array-data v13, :array_0

    .line 1178
    .local v13, bindSources:[I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1179
    .local v14, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.alarmclock"

    const-string v5, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.camera"

    const-string v5, "com.android.camera.PhotoAppWidgetProvider"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    const-string v3, "itemType"

    invoke-static {v3, v13}, Lcom/htc/launcher/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v6

    .line 1186
    .local v6, selectWhere:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1187
    .local v15, c:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 1189
    .local v11, allocatedAppWidgets:Z
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1192
    :try_start_0
    const-string v4, "favorites"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1199
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 1200
    .local v20, values:Landroid/content/ContentValues;
    :goto_0
    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1201
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v17

    .line 1205
    .local v17, favoriteId:J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v12

    .line 1211
    .local v12, appWidgetId:I
    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->clear()V

    .line 1212
    const-string v3, "appWidgetId"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1215
    const-string v3, "spanX"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1216
    const-string v3, "spanY"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1219
    .local v19, updateWhere:Ljava/lang/String;
    const-string v3, "favorites"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1221
    const/4 v11, 0x1

    goto :goto_0

    .line 1222
    .end local v12           #appWidgetId:I
    .end local v19           #updateWhere:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1223
    .local v16, ex:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v3, "LauncherProvider"

    const-string v4, "Problem allocating appWidgetId"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1228
    .end local v16           #ex:Ljava/lang/RuntimeException;
    .end local v17           #favoriteId:J
    .end local v20           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v16

    .line 1229
    .local v16, ex:Landroid/database/SQLException;
    :try_start_3
    const-string v3, "LauncherProvider"

    const-string v4, "Problem while allocating appWidgetIds for existing widgets"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1231
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1232
    if-eqz v15, :cond_0

    .line 1233
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1238
    .end local v16           #ex:Landroid/database/SQLException;
    :cond_0
    :goto_1
    if-eqz v11, :cond_1

    .line 1239
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->launchAppWidgetBinder([ILjava/util/ArrayList;)V

    .line 1241
    :cond_1
    return-void

    .line 1227
    .restart local v20       #values:Landroid/content/ContentValues;
    :cond_2
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1231
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1232
    if-eqz v15, :cond_0

    .line 1233
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1231
    .end local v20           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1232
    if-eqz v15, :cond_3

    .line 1233
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3

    .line 1173
    :array_0
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xeat 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 28
    .parameter "db"
    .parameter "c"

    .prologue
    .line 821
    const-string v24, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 822
    .local v14, idIndex:I
    const-string v24, "intent"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 823
    .local v15, intentIndex:I
    const-string v24, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 824
    .local v20, titleIndex:I
    const-string v24, "iconType"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 825
    .local v13, iconTypeIndex:I
    const-string v24, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 826
    .local v10, iconIndex:I
    const-string v24, "iconPackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 827
    .local v11, iconPackageIndex:I
    const-string v24, "iconResource"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 828
    .local v12, iconResourceIndex:I
    const-string v24, "container"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 829
    .local v6, containerIndex:I
    const-string v24, "itemType"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 830
    .local v16, itemTypeIndex:I
    const-string v24, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 831
    .local v19, screenIndex:I
    const-string v24, "cellX"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 832
    .local v4, cellXIndex:I
    const-string v24, "cellY"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 833
    .local v5, cellYIndex:I
    const-string v24, "uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 834
    .local v22, uriIndex:I
    const-string v24, "displayMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 836
    .local v7, displayModeIndex:I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v18, v0

    .line 837
    .local v18, rows:[Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 838
    .local v8, i:I
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 839
    new-instance v23, Landroid/content/ContentValues;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/content/ContentValues;-><init>(I)V

    .line 840
    .local v23, values:Landroid/content/ContentValues;
    const-string v24, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 841
    const-string v24, "intent"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const-string v24, "title"

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const-string v24, "iconType"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 844
    const-string v24, "icon"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 845
    const-string v24, "iconPackage"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v24, "iconResource"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string v24, "container"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 848
    const-string v24, "itemType"

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 849
    const-string v24, "appWidgetId"

    const/16 v25, -0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 850
    const-string v24, "screen"

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 851
    const-string v24, "cellX"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 852
    const-string v24, "cellY"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 853
    const-string v24, "uri"

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v24, "displayMode"

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 855
    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    aput-object v23, v18, v8

    move v8, v9

    .line 856
    .end local v9           #i:I
    .restart local v8       #i:I
    goto/16 :goto_0

    .line 858
    .end local v23           #values:Landroid/content/ContentValues;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 859
    const/16 v21, 0x0

    .line 861
    .local v21, total:I
    :try_start_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v17, v0

    .line 862
    .local v17, numValues:I
    const/4 v8, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v8, v0, :cond_2

    .line 863
    const-string v24, "favorites"

    const/16 v25, 0x0

    aget-object v26, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-gez v24, :cond_1

    .line 864
    const/16 v21, 0x0

    .line 871
    .end local v21           #total:I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 874
    :goto_2
    return v21

    .line 866
    .restart local v21       #total:I
    :cond_1
    add-int/lit8 v21, v21, 0x1

    .line 862
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 869
    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 871
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    .end local v17           #numValues:I
    :catchall_0
    move-exception v24

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v24
.end method

.method public static initAddItemToDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V
    .locals 3
    .parameter "db"
    .parameter "context"
    .parameter "item"
    .parameter "lContainer"
    .parameter "nScreen"
    .parameter "nCellX"
    .parameter "nCellY"
    .parameter "bNotify"

    .prologue
    .line 1098
    iput-wide p3, p2, Lcom/htc/launcher/ItemInfo;->container:J

    .line 1099
    iput p5, p2, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 1100
    iput p6, p2, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 1101
    iput p7, p2, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 1103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1105
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {p2, v0}, Lcom/htc/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 1107
    const-string v1, "favorites"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1108
    return-void
.end method

.method private static invalidLaunchBarFavorites(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 981
    const-string v2, "WidgetPackageManager"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 982
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 983
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "init_launch_bar"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 984
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 985
    return-void
.end method

.method private launchAppWidgetBinder([ILjava/util/ArrayList;)V
    .locals 5
    .parameter "bindSources"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1250
    .local p2, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1251
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.LauncherAppWidgetBinder"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1253
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1255
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1256
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "com.android.launcher.settings.bindsources"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1257
    const-string v2, "com.android.launcher.settings.bindtargets"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1258
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1260
    iget-object v2, p0, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1261
    return-void
.end method

.method private static loadDefaultQuickLaunch(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 12
    .parameter "quickLaunchsBundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/config/FavoriteData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1010
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1013
    .local v1, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/config/FavoriteData;>;"
    if-eqz p0, :cond_4

    .line 1014
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v4

    .line 1017
    .local v4, nSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 1018
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "plenty_set"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1020
    .local v5, strKey:Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1022
    .local v0, childBundle:Landroid/os/Bundle;
    new-instance v2, Lcom/htc/launcher/config/FavoriteData;

    invoke-direct {v2}, Lcom/htc/launcher/config/FavoriteData;-><init>()V

    .line 1026
    .local v2, favdata:Lcom/htc/launcher/config/FavoriteData;
    const-string v10, "package"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/htc/launcher/config/FavoriteData;->packageName:Ljava/lang/String;

    .line 1027
    const-string v10, "class"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/htc/launcher/config/FavoriteData;->className:Ljava/lang/String;

    .line 1028
    const-string v10, "url"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/htc/launcher/config/FavoriteData;->url:Ljava/lang/String;

    .line 1029
    const-string v10, "title"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/htc/launcher/config/FavoriteData;->title:Ljava/lang/String;

    .line 1030
    const-string v10, "icon"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/htc/launcher/config/FavoriteData;->icon:Ljava/lang/String;

    .line 1031
    const-string v10, "removable"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v2, Lcom/htc/launcher/config/FavoriteData;->removable:I

    .line 1033
    const-string v10, "itemtype"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1034
    .local v6, strShortcutItemType:Ljava/lang/String;
    const-string v10, "screen"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1035
    .local v7, strShortcutScreen:Ljava/lang/String;
    const-string v10, "x"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1036
    .local v8, strShortcutX:Ljava/lang/String;
    const-string v10, "y"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1038
    .local v9, strShortcutY:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v2, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    .line 1039
    :cond_0
    if-eqz v7, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v2, Lcom/htc/launcher/config/FavoriteData;->screen:I

    .line 1040
    :cond_1
    if-eqz v8, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v2, Lcom/htc/launcher/config/FavoriteData;->x:I

    .line 1041
    :cond_2
    if-eqz v9, :cond_3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v2, Lcom/htc/launcher/config/FavoriteData;->y:I

    .line 1043
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1046
    .end local v0           #childBundle:Landroid/os/Bundle;
    .end local v2           #favdata:Lcom/htc/launcher/config/FavoriteData;
    .end local v3           #i:I
    .end local v4           #nSize:I
    .end local v5           #strKey:Ljava/lang/String;
    .end local v6           #strShortcutItemType:Ljava/lang/String;
    .end local v7           #strShortcutScreen:Ljava/lang/String;
    .end local v8           #strShortcutX:Ljava/lang/String;
    .end local v9           #strShortcutY:Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method private loadLaunchBarFavorites(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 9
    .parameter "db"
    .parameter "lFilterContainerId"

    .prologue
    .line 994
    iget-object v6, p0, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v5

    .line 995
    .local v5, sm:Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-virtual {v5}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneList()Ljava/util/ArrayList;

    move-result-object v4

    .line 996
    .local v4, scenes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htcSceneManager/scene/Scene;>;"
    if-eqz v4, :cond_0

    .line 997
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 998
    .local v2, nSize:I
    if-lez v2, :cond_0

    .line 999
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htcSceneManager/scene/Scene;

    .line 1000
    .local v3, scene:Lcom/htc/htcSceneManager/scene/Scene;
    invoke-virtual {v3}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v1

    .line 1001
    .local v1, nSceneId:I
    iget-object v6, p0, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v7, "default_quicklaunch"

    invoke-static {p1, v6, v1, v7}, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->loadLaunchBarFavoritesByScene(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 1006
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #nSceneId:I
    .end local v2           #nSize:I
    .end local v3           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    :cond_0
    iget-object v6, p0, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const-string v8, "default_quicklaunch"

    invoke-static {p1, v6, v7, v8}, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->loadLaunchBarFavoritesByScene(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;ILjava/lang/String;)V

    .line 1007
    return-void
.end method

.method private static loadLaunchBarFavoritesByScene(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;ILjava/lang/String;)V
    .locals 16
    .parameter "db"
    .parameter "context"
    .parameter "nWorkspaceId"
    .parameter "strKey"

    .prologue
    .line 1052
    invoke-static/range {p1 .. p1}, Lcom/htc/launcher/WidgetPackageManager;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v13

    .line 1053
    .local v13, moduleBundle:Landroid/os/Bundle;
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    .line 1054
    .local v15, quickLaunchsBundle:Landroid/os/Bundle;
    if-nez v15, :cond_0

    .line 1055
    invoke-static {}, Lcom/htc/launcher/WidgetPackageManager;->getPresetDefaultQuickLaunchKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    .line 1057
    :cond_0
    move/from16 v14, p2

    .line 1059
    .local v14, nIdx:I
    invoke-static {v15}, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->loadDefaultQuickLaunch(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1061
    .local v10, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/config/FavoriteData;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/launcher/config/FavoriteData;

    .line 1062
    .local v11, favdata:Lcom/htc/launcher/config/FavoriteData;
    iput v14, v11, Lcom/htc/launcher/config/FavoriteData;->workspaceId:I

    .line 1063
    iget v1, v11, Lcom/htc/launcher/config/FavoriteData;->itemtype:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1065
    :pswitch_0
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/htc/launcher/LauncherModel;->getApplication(Lcom/htc/launcher/config/FavoriteData;Landroid/content/Context;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v3

    .line 1067
    .local v3, app:Lcom/htc/launcher/ApplicationInfo;
    if-eqz v3, :cond_1

    .line 1069
    const-wide/16 v4, -0x65

    iget v6, v3, Lcom/htc/launcher/ApplicationInfo;->screen:I

    iget v7, v3, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    iget v8, v3, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v9}, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->initAddItemToDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V

    goto :goto_0

    .line 1073
    :cond_1
    const-string v1, "LauncherProvider"

    const-string v2, "Application: getApplication fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1077
    .end local v3           #app:Lcom/htc/launcher/ApplicationInfo;
    :pswitch_1
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/htc/launcher/LauncherModel;->getShortcut(Lcom/htc/launcher/config/FavoriteData;Landroid/content/Context;)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v3

    .line 1079
    .restart local v3       #app:Lcom/htc/launcher/ApplicationInfo;
    if-eqz v3, :cond_2

    .line 1081
    const-wide/16 v4, -0x65

    iget v6, v3, Lcom/htc/launcher/ApplicationInfo;->screen:I

    iget v7, v3, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    iget v8, v3, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v9}, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->initAddItemToDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIIIZ)V

    goto :goto_0

    .line 1085
    :cond_2
    const-string v1, "LauncherProvider"

    const-string v2, "Shortcut: getShortcut fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1090
    .end local v3           #app:Lcom/htc/launcher/ApplicationInfo;
    .end local v11           #favdata:Lcom/htc/launcher/config/FavoriteData;
    :cond_3
    return-void

    .line 1063
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    .line 1113
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1114
    const/4 v2, 0x0

    .line 1115
    .local v2, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 1117
    .local v10, update:Landroid/database/sqlite/SQLiteStatement;
    const/4 v0, 0x0

    .line 1118
    .local v0, bLogged:Z
    :try_start_0
    const-string v11, "UPDATE favorites SET icon=? WHERE _id=?"

    invoke-virtual {p1, v11}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 1121
    const-string v11, "SELECT _id, icon FROM favorites WHERE iconType=1"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1124
    const-string v11, "_id"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1125
    .local v9, nIdIndex:I
    const-string v11, "icon"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1127
    .local v6, nIconIndex:I
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1128
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1129
    .local v7, nId:J
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1131
    .local v3, data:[B
    const/4 v11, 0x0

    :try_start_1
    array-length v12, v3

    invoke-static {v3, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/htc/launcher/Utilities;->resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1134
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 1135
    const/4 v11, 0x1

    invoke-virtual {v10, v11, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1136
    invoke-static {v1}, Lcom/htc/launcher/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    .line 1137
    if-eqz v3, :cond_1

    .line 1138
    const/4 v11, 0x2

    invoke-virtual {v10, v11, v3}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 1139
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1141
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1143
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 1144
    .local v4, e:Ljava/lang/Exception;
    if-nez v0, :cond_2

    .line 1145
    :try_start_2
    const-string v11, "LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed normalizing icon "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1149
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1147
    :cond_2
    const-string v11, "LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Also failed normalizing icon "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1153
    .end local v3           #data:[B
    .end local v4           #e:Ljava/lang/Exception;
    .end local v6           #nIconIndex:I
    .end local v7           #nId:J
    .end local v9           #nIdIndex:I
    :catch_1
    move-exception v5

    .line 1154
    .local v5, ex:Landroid/database/SQLException;
    :try_start_3
    const-string v11, "LauncherProvider"

    const-string v12, "Problem while allocating appWidgetIds for existing widgets"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1156
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1157
    if-eqz v10, :cond_3

    .line 1158
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1160
    :cond_3
    if-eqz v2, :cond_4

    .line 1161
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1165
    .end local v5           #ex:Landroid/database/SQLException;
    :cond_4
    :goto_2
    return-void

    .line 1152
    .restart local v6       #nIconIndex:I
    .restart local v9       #nIdIndex:I
    :cond_5
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1156
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1157
    if-eqz v10, :cond_6

    .line 1158
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1160
    :cond_6
    if-eqz v2, :cond_4

    .line 1161
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1156
    .end local v6           #nIconIndex:I
    .end local v9           #nIdIndex:I
    :catchall_0
    move-exception v11

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1157
    if-eqz v10, :cond_7

    .line 1158
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1160
    :cond_7
    if-eqz v2, :cond_8

    .line 1161
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v11
.end method

.method private sendAppWidgetResetNotify()V
    .locals 3

    .prologue
    .line 689
    iget-object v1, p0, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 690
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 691
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 699
    const-string v0, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,props BLOB,workspace_id INTEGER,orig_id INTEGER,uri TEXT,displayMode INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 722
    const-string v0, "CREATE INDEX IDX_workspace_id on favorites (workspace_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 727
    invoke-direct {p0}, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 732
    :cond_0
    const-string v0, "CREATE TABLE widget_item_types (_id INTEGER PRIMARY KEY,package_name TEXT,widget_name TEXT,plugin_classname TEXT,item_category INTEGER,parent_id INTEGER,text_resource INTEGER,icon_resource INTEGER,span_x INTEGER,span_y INTEGER,layout_resource INTEGER,extra_properties BLOB,CONSTRAINT uc_widget_naming UNIQUE (package_name,widget_name));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 747
    const-string v0, "CREATE INDEX IDX_ITEM_TYPE_PARENT_ID on widget_item_types (parent_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 748
    const-string v0, "CREATE TABLE widget_workspaces (_id INTEGER PRIMARY KEY, display_name TEXT, created LONG, status TEXT, ancestor_id INTEGER, translate_id INTEGER, lockscreen_wallpaper TEXT, wallpaper_component TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 759
    const-string v0, "CREATE TABLE scene_pages (_id INTEGER PRIMARY KEY, scene_name TEXT, pages_count INTEGER, home_index INTEGER );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/htc/launcher/LauncherProvider;->initWorkspaces(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 769
    invoke-direct {p0, p1}, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 777
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x3

    .line 883
    move v1, p2

    .line 884
    .local v1, nVersion:I
    if-ge v1, v4, :cond_0

    .line 886
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 889
    :try_start_0
    const-string v2, "ALTER TABLE favorites ADD COLUMN appWidgetId INTEGER NOT NULL DEFAULT -1;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    const/4 v1, 0x3

    .line 897
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 901
    :goto_0
    if-ne v1, v4, :cond_0

    .line 902
    invoke-direct {p0, p1}, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 906
    :cond_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 907
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 910
    :try_start_1
    const-string v2, "ALTER TABLE widget_workspaces ADD COLUMN wallpaper_component TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 913
    const/4 v1, 0x4

    .line 918
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 922
    :cond_1
    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_3

    .line 926
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-eq v2, v3, :cond_2

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe

    if-eq v2, v3, :cond_2

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xf

    if-eq v2, v3, :cond_2

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x8a

    if-ne v2, v3, :cond_8

    .line 931
    :cond_2
    const/4 v1, 0x5

    .line 954
    :cond_3
    :goto_2
    const/4 v2, 0x7

    if-ge v1, v2, :cond_4

    .line 956
    invoke-direct {p0, p1}, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 957
    const/4 v1, 0x7

    .line 960
    :cond_4
    const/16 v2, 0x8

    if-ge v1, v2, :cond_5

    .line 964
    invoke-direct {p0, p1}, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 965
    const/16 v1, 0x8

    .line 968
    :cond_5
    if-ge v1, v5, :cond_6

    .line 969
    iget-object v2, p0, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->invalidLaunchBarFavorites(Landroid/content/Context;)V

    .line 970
    const/16 v1, 0x9

    .line 973
    :cond_6
    if-eq v1, v5, :cond_7

    .line 974
    const-string v2, "LauncherProvider"

    const-string v3, "Destroying all old data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const-string v2, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p0, p1}, Lcom/htc/launcher/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 978
    :cond_7
    return-void

    .line 893
    :catch_0
    move-exception v0

    .line 895
    .local v0, ex:Landroid/database/SQLException;
    :try_start_2
    const-string v2, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 897
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 914
    :catch_1
    move-exception v0

    .line 916
    .restart local v0       #ex:Landroid/database/SQLException;
    :try_start_3
    const-string v2, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 918
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_1
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 934
    :cond_8
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 936
    const-string v2, "drop table if exists scene_pages"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 938
    const-string v2, "CREATE TABLE scene_pages (_id INTEGER PRIMARY KEY, scene_name TEXT, pages_count INTEGER, home_index INTEGER );"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 945
    const/4 v1, 0x5

    .line 949
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    .line 946
    :catch_2
    move-exception v0

    .line 947
    .local v0, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_5
    const-string v2, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 949
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    .end local v0           #ex:Landroid/database/sqlite/SQLiteException;
    :catchall_2
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.class public Lcom/htc/home/personalize/LauncherAppWidgetBinder;
.super Landroid/app/Activity;
.source "LauncherAppWidgetBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/LauncherAppWidgetBinder$LauncherProvider;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.htc.launcher.settings"

.field static final BIND_PHOTO_APPWIDGET:Landroid/content/ComponentName; = null

.field static final BIND_PROJECTION:[Ljava/lang/String; = null

.field static final EXTRA_APPWIDGET_BITMAPS:Ljava/lang/String; = "com.android.camera.appwidgetbitmaps"

.field static final EXTRA_BIND_SOURCES:Ljava/lang/String; = "com.android.launcher.settings.bindsources"

.field static final EXTRA_BIND_TARGETS:Ljava/lang/String; = "com.android.launcher.settings.bindtargets"

.field static final INDEX_APPWIDGET_ID:I = 0x2

.field static final INDEX_ICON:I = 0x3

.field static final INDEX_ID:I = 0x0

.field static final INDEX_ITEM_TYPE:I = 0x1

.field private static final LOGD:Z = true

.field static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG:Ljava/lang/String; = "HtcLauncherAppWidgetBinder"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "itemType"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "appWidgetId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "icon"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/home/personalize/LauncherAppWidgetBinder;->BIND_PROJECTION:[Ljava/lang/String;

    .line 79
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.camera"

    const-string v2, "com.android.camera.PhotoAppWidgetBind"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/home/personalize/LauncherAppWidgetBinder;->BIND_PHOTO_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    return-void
.end method

.method static buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4
    .parameter "column"
    .parameter "values"

    .prologue
    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v1, selectWhere:Ljava/lang/StringBuilder;
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 245
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    if-lez v0, :cond_0

    .line 247
    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 34
    .parameter "icicle"

    .prologue
    .line 84
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/LauncherAppWidgetBinder;->finish()V

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/LauncherAppWidgetBinder;->getIntent()Landroid/content/Intent;

    move-result-object v27

    .line 93
    .local v27, intent:Landroid/content/Intent;
    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    .line 95
    .local v20, extras:Landroid/os/Bundle;
    const/4 v13, 0x0

    .line 96
    .local v13, bindSources:[I
    const/4 v15, 0x0

    .line 97
    .local v15, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/16 v19, 0x0

    .line 100
    .local v19, exception:Ljava/lang/Exception;
    :try_start_0
    const-string v3, "com.android.launcher.settings.bindsources"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v13

    .line 101
    const-string v3, "com.android.launcher.settings.bindtargets"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 107
    :goto_0
    if-nez v19, :cond_0

    if-eqz v13, :cond_0

    if-eqz v15, :cond_0

    array-length v3, v13

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 109
    :cond_0
    const-string v3, "HtcLauncherAppWidgetBinder"

    const-string v4, "Problem reading incoming bind request, or invalid request"

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    :goto_1
    return-void

    .line 103
    :catch_0
    move-exception v18

    .line 104
    .local v18, ex:Ljava/lang/ClassCastException;
    move-object/from16 v19, v18

    goto :goto_0

    .line 117
    .end local v18           #ex:Ljava/lang/ClassCastException;
    :cond_1
    const-string v3, "appWidgetId"

    invoke-static {v3, v13}, Lcom/htc/home/personalize/LauncherAppWidgetBinder;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, selectWhere:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/LauncherAppWidgetBinder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 121
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    .line 124
    .local v10, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/16 v24, 0x0

    .line 125
    .local v24, foundPhotoAppWidgets:Z
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v29, photoAppWidgetIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v31, photoBitmaps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/16 v17, 0x0

    .line 131
    .local v17, c:Landroid/database/Cursor;
    :try_start_1
    sget-object v3, Lcom/htc/home/personalize/LauncherAppWidgetBinder$LauncherProvider;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    sget-object v4, Lcom/htc/home/personalize/LauncherAppWidgetBinder;->BIND_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 135
    const-string v3, "HtcLauncherAppWidgetBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectWhere="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v4, "HtcLauncherAppWidgetBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found bind cursor count="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v17, :cond_8

    const-string v3, "null"

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 141
    .local v33, values:Landroid/content/ContentValues;
    :cond_2
    :goto_3
    if-eqz v17, :cond_e

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 142
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 143
    .local v21, favoriteId:J
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 144
    .local v28, itemType:I
    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 145
    .local v9, appWidgetId:I
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v26

    .line 148
    .local v26, iconData:[B
    const/16 v32, 0x0

    .line 149
    .local v32, targetAppWidget:Landroid/content/ComponentName;
    const/16 v25, 0x0

    .local v25, i:I
    :goto_4
    array-length v3, v13

    move/from16 v0, v25

    if-ge v0, v3, :cond_3

    .line 150
    aget v3, v13, v25

    if-ne v3, v9, :cond_9

    .line 151
    move/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    .end local v32           #targetAppWidget:Landroid/content/ComponentName;
    check-cast v32, Landroid/content/ComponentName;

    .line 156
    .restart local v32       #targetAppWidget:Landroid/content/ComponentName;
    :cond_3
    if-eqz v32, :cond_4

    .line 157
    const-string v3, "HtcLauncherAppWidgetBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found matching targetAppWidget="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for favoriteId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v21

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    :cond_4
    const/4 v14, 0x0

    .line 163
    .local v14, bindSuccess:Z
    :try_start_2
    move-object/from16 v0, v32

    invoke-virtual {v10, v9, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 165
    const/4 v14, 0x1

    .line 172
    :goto_5
    if-eqz v14, :cond_5

    if-eqz v26, :cond_5

    const/16 v3, 0x3ea

    move/from16 v0, v28

    if-ne v0, v3, :cond_5

    .line 175
    const/4 v3, 0x0

    :try_start_3
    move-object/from16 v0, v26

    array-length v4, v0

    move-object/from16 v0, v26

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 178
    .local v16, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    const/16 v24, 0x1

    .line 184
    .end local v16           #bitmap:Landroid/graphics/Bitmap;
    :cond_5
    const-string v3, "HtcLauncherAppWidgetBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after finished, success="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v3, Lcom/htc/home/personalize/LauncherAppWidgetBinder$LauncherProvider;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    move-wide/from16 v0, v21

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 189
    .local v23, favoritesUri:Landroid/net/Uri;
    if-nez v14, :cond_2

    .line 198
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 202
    .end local v9           #appWidgetId:I
    .end local v14           #bindSuccess:Z
    .end local v21           #favoriteId:J
    .end local v23           #favoritesUri:Landroid/net/Uri;
    .end local v25           #i:I
    .end local v26           #iconData:[B
    .end local v28           #itemType:I
    .end local v32           #targetAppWidget:Landroid/content/ComponentName;
    .end local v33           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v18

    .line 203
    .local v18, ex:Landroid/database/SQLException;
    :try_start_4
    const-string v3, "HtcLauncherAppWidgetBinder"

    const-string v4, "Problem while binding appWidgetIds for Launcher"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    if-eqz v17, :cond_7

    .line 206
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 207
    .end local v18           #ex:Landroid/database/SQLException;
    :cond_6
    :goto_6
    const/16 v17, 0x0

    .line 211
    :cond_7
    if-eqz v24, :cond_d

    .line 213
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 214
    .local v8, N:I
    new-array v0, v8, [I

    move-object/from16 v30, v0

    .line 215
    .local v30, photoAppWidgetIdsArray:[I
    const/16 v25, 0x0

    .restart local v25       #i:I
    :goto_7
    move/from16 v0, v25

    if-ge v0, v8, :cond_c

    .line 216
    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v30, v25

    .line 215
    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    .line 138
    .end local v8           #N:I
    .end local v25           #i:I
    .end local v30           #photoAppWidgetIdsArray:[I
    :cond_8
    :try_start_5
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_2

    .line 149
    .restart local v9       #appWidgetId:I
    .restart local v21       #favoriteId:J
    .restart local v25       #i:I
    .restart local v26       #iconData:[B
    .restart local v28       #itemType:I
    .restart local v32       #targetAppWidget:Landroid/content/ComponentName;
    .restart local v33       #values:Landroid/content/ContentValues;
    :cond_9
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_4

    .line 166
    .restart local v14       #bindSuccess:Z
    :catch_2
    move-exception v18

    .line 167
    .local v18, ex:Ljava/lang/RuntimeException;
    const-string v3, "HtcLauncherAppWidgetBinder"

    const-string v4, "Problem binding widget"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_5

    .line 205
    .end local v9           #appWidgetId:I
    .end local v14           #bindSuccess:Z
    .end local v18           #ex:Ljava/lang/RuntimeException;
    .end local v21           #favoriteId:J
    .end local v25           #i:I
    .end local v26           #iconData:[B
    .end local v28           #itemType:I
    .end local v32           #targetAppWidget:Landroid/content/ComponentName;
    .end local v33           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    if-eqz v17, :cond_b

    .line 206
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_a
    const/16 v17, 0x0

    .line 205
    :cond_b
    throw v3

    .line 221
    .restart local v8       #N:I
    .restart local v25       #i:I
    .restart local v30       #photoAppWidgetIdsArray:[I
    :cond_c
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v12, bindIntent:Landroid/content/Intent;
    sget-object v3, Lcom/htc/home/personalize/LauncherAppWidgetBinder;->BIND_PHOTO_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 224
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 225
    .local v11, bindExtras:Landroid/os/Bundle;
    const-string v3, "appWidgetIds"

    move-object/from16 v0, v30

    invoke-virtual {v11, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 227
    const-string v3, "com.android.camera.appwidgetbitmaps"

    move-object/from16 v0, v31

    invoke-virtual {v11, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 229
    invoke-virtual {v12, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 231
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/home/personalize/LauncherAppWidgetBinder;->startActivity(Landroid/content/Intent;)V

    .line 235
    .end local v8           #N:I
    .end local v11           #bindExtras:Landroid/os/Bundle;
    .end local v12           #bindIntent:Landroid/content/Intent;
    .end local v25           #i:I
    .end local v30           #photoAppWidgetIdsArray:[I
    :cond_d
    const-string v3, "HtcLauncherAppWidgetBinder"

    const-string v4, "completely finished with binding for Launcher"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 205
    .restart local v33       #values:Landroid/content/ContentValues;
    :cond_e
    if-eqz v17, :cond_7

    .line 206
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6
.end method

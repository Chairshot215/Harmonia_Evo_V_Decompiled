.class public Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;
.super Ljava/lang/Object;
.source "MyWidgetInfo1.java"

# interfaces
.implements Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final WIDGET_CATEGORY_SETTINGS:I = 0xc8


# instance fields
.field private final ctx:Landroid/content/Context;

.field private name:Ljava/lang/String;

.field parent:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

.field private parentId:I

.field preview:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final styleIndex:I

.field final widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/htc/home/personalize/widgetpicker/WidgetItem;Lcom/htc/home/personalize/widgetpicker/WidgetItem;Landroid/content/Context;I)V
    .locals 3
    .parameter "widget"
    .parameter "parent"
    .parameter "ctx"
    .parameter "styleIndex"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->parentId:I

    .line 51
    iput-object p1, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    .line 52
    iput-object p2, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->parent:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    .line 53
    iput-object p3, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->ctx:Landroid/content/Context;

    .line 54
    if-eqz p2, :cond_0

    .line 55
    iget v0, p2, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mItemType:I

    iput v0, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->parentId:I

    .line 58
    :cond_0
    iput p4, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->styleIndex:I

    .line 59
    sget-object v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyWidgetInfo1: widget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " styleIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public static collectSettingWidgetInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 30
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v28, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;>;"
    sget-object v5, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->TAG:Ljava/lang/String;

    const-string v6, "collectSettingWidgetInfo:"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 254
    .local v4, cr:Landroid/content/ContentResolver;
    const-string v7, "item_category=2"

    .line 256
    .local v7, where:Ljava/lang/String;
    sget-object v5, Lcom/htc/home/personalize/widgetpicker/LauncherSettings$WidgetItemTypes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v9, "parent_id ASC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 260
    .local v10, cursor:Landroid/database/Cursor;
    const-string v5, "_id"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 261
    .local v14, idxId:I
    const-string v5, "package_name"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 263
    .local v17, idxPackageName:I
    const-string v5, "plugin_classname"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 265
    .local v19, idxPluginClassname:I
    const-string v5, "widget_name"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 267
    .local v23, idxWidgetName:I
    const-string v5, "item_category"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 269
    .local v15, idxItemCategory:I
    const-string v5, "parent_id"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 271
    .local v18, idxParentId:I
    const-string v5, "text_resource"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 273
    .local v22, idxTextResource:I
    const-string v5, "icon_resource"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 275
    .local v13, idxIconResource:I
    const-string v5, "span_x"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 277
    .local v20, idxSpanX:I
    const-string v5, "span_y"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 279
    .local v21, idxSpanY:I
    const-string v5, "layout_resource"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 281
    .local v16, idxLayoutResource:I
    const-string v5, "extra_properties"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 286
    .local v12, idxExtraProperties:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 287
    new-instance v26, Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/widgetpicker/WidgetItem;-><init>(Landroid/content/Context;)V

    .line 288
    .local v26, item:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v26

    iput v5, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mItemType:I

    .line 289
    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    iput-object v5, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPackageName:Ljava/lang/String;

    .line 290
    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    iput-object v5, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPluginClassname:Ljava/lang/String;

    .line 291
    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    iput-object v5, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mWidgetName:Ljava/lang/String;

    .line 292
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v26

    iput v5, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mItemCategory:I

    .line 293
    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v26

    iput v5, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mTextResource:I

    .line 294
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v26

    iput v5, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mIconResource:I

    .line 295
    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v26

    iput v5, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mSpanX:I

    .line 296
    move/from16 v0, v21

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v26

    iput v5, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mSpanY:I

    .line 297
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v26

    iput v5, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mLayoutResource:I

    .line 298
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v26

    iput v5, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mParentId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :try_start_1
    new-instance v24, Ljava/io/ByteArrayInputStream;

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 302
    .local v24, in:Ljava/io/ByteArrayInputStream;
    new-instance v25, Ljava/io/ObjectInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 303
    .local v25, in2:Ljava/io/ObjectInputStream;
    invoke-virtual/range {v25 .. v25}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Properties;

    move-object/from16 v0, v26

    iput-object v5, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mProps:Ljava/util/Properties;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 318
    const/16 v27, 0x0

    .line 353
    .local v27, p:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    const/16 v5, 0xc8

    :try_start_2
    invoke-virtual/range {v26 .. v26}, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->getCategoryId()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 355
    new-instance v29, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;

    const/4 v5, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;-><init>(Lcom/htc/home/personalize/widgetpicker/WidgetItem;Lcom/htc/home/personalize/widgetpicker/WidgetItem;Landroid/content/Context;I)V

    .line 357
    .local v29, tmp:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;
    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 362
    .end local v24           #in:Ljava/io/ByteArrayInputStream;
    .end local v25           #in2:Ljava/io/ObjectInputStream;
    .end local v26           #item:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    .end local v27           #p:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    .end local v29           #tmp:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;
    :catchall_0
    move-exception v5

    if-eqz v10, :cond_2

    .line 363
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 364
    :cond_1
    const/4 v10, 0x0

    .line 362
    :cond_2
    throw v5

    .line 307
    .restart local v26       #item:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    :catch_0
    move-exception v11

    .line 308
    .local v11, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->TAG:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 362
    .end local v11           #e:Ljava/lang/Exception;
    .end local v26           #item:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    :cond_3
    if-eqz v10, :cond_5

    .line 363
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 364
    :cond_4
    const/4 v10, 0x0

    .line 367
    :cond_5
    return-object v28
.end method

.method public static collectWidgetInfo(Landroid/content/Context;ILjava/util/ArrayList;)Ljava/util/List;
    .locals 37
    .parameter "ctx"
    .parameter "itemType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/widgetpicker/WidgetItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    .local p2, widgetGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/widgetpicker/WidgetItem;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v33, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;>;"
    sget-object v6, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->TAG:Ljava/lang/String;

    const-string v7, "collectWidgetInfo:"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v13, groupItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/widgetpicker/WidgetItem;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 379
    .local v5, cr:Landroid/content/ContentResolver;
    const-string v8, "item_category!=0"

    .line 380
    .local v8, where:Ljava/lang/String;
    const/4 v6, -0x1

    move/from16 v0, p1

    if-eq v6, v0, :cond_0

    .line 381
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND (parent_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 384
    :cond_0
    sget-object v6, Lcom/htc/home/personalize/widgetpicker/LauncherSettings$WidgetItemTypes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v10, "parent_id ASC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 388
    .local v11, cursor:Landroid/database/Cursor;
    const-string v6, "_id"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 389
    .local v18, idxId:I
    const-string v6, "package_name"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 391
    .local v21, idxPackageName:I
    const-string v6, "plugin_classname"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 393
    .local v23, idxPluginClassname:I
    const-string v6, "widget_name"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 395
    .local v27, idxWidgetName:I
    const-string v6, "item_category"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 397
    .local v19, idxItemCategory:I
    const-string v6, "parent_id"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 399
    .local v22, idxParentId:I
    const-string v6, "text_resource"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 401
    .local v26, idxTextResource:I
    const-string v6, "icon_resource"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 403
    .local v17, idxIconResource:I
    const-string v6, "span_x"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 405
    .local v24, idxSpanX:I
    const-string v6, "span_y"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 407
    .local v25, idxSpanY:I
    const-string v6, "layout_resource"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 409
    .local v20, idxLayoutResource:I
    const-string v6, "extra_properties"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 413
    .local v16, idxExtraProperties:I
    const/16 v31, 0x0

    .line 414
    .local v31, lastParent:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 415
    new-instance v30, Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/widgetpicker/WidgetItem;-><init>(Landroid/content/Context;)V

    .line 416
    .local v30, item:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mItemType:I

    .line 417
    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPackageName:Ljava/lang/String;

    .line 418
    move/from16 v0, v23

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPluginClassname:Ljava/lang/String;

    .line 419
    move/from16 v0, v27

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mWidgetName:Ljava/lang/String;

    .line 420
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mItemCategory:I

    .line 421
    move/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mTextResource:I

    .line 422
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mIconResource:I

    .line 423
    move/from16 v0, v24

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mSpanX:I

    .line 424
    move/from16 v0, v25

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mSpanY:I

    .line 425
    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mLayoutResource:I

    .line 426
    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mParentId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :try_start_1
    new-instance v28, Ljava/io/ByteArrayInputStream;

    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 430
    .local v28, in:Ljava/io/ByteArrayInputStream;
    new-instance v29, Ljava/io/ObjectInputStream;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 431
    .local v29, in2:Ljava/io/ObjectInputStream;
    invoke-virtual/range {v29 .. v29}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Properties;

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mProps:Ljava/util/Properties;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 441
    :try_start_2
    sget v6, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->ITEM_CAT_GROUP:I

    move-object/from16 v0, v30

    iget v7, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mItemCategory:I

    if-ne v6, v7, :cond_3

    .line 442
    sget-object v6, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parent "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v30

    iget-object v9, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 486
    .end local v28           #in:Ljava/io/ByteArrayInputStream;
    .end local v29           #in2:Ljava/io/ObjectInputStream;
    .end local v30           #item:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    :catchall_0
    move-exception v6

    if-eqz v11, :cond_2

    .line 487
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 488
    :cond_1
    const/4 v11, 0x0

    .line 486
    :cond_2
    throw v6

    .line 435
    .restart local v30       #item:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    :catch_0
    move-exception v12

    .line 436
    .local v12, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v6, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->TAG:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 446
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v28       #in:Ljava/io/ByteArrayInputStream;
    .restart local v29       #in2:Ljava/io/ObjectInputStream;
    :cond_3
    const/16 v32, 0x0

    .line 447
    .local v32, p:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    const/16 v34, 0x0

    .line 449
    .local v34, styleIndex:I
    const/4 v6, -0x1

    move-object/from16 v0, v30

    iget v7, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mParentId:I

    if-ne v6, v7, :cond_5

    .line 451
    sget-object v6, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no parent "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v30

    iget-object v9, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_4
    :goto_1
    new-instance v35, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    move-object/from16 v3, p0

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;-><init>(Lcom/htc/home/personalize/widgetpicker/WidgetItem;Lcom/htc/home/personalize/widgetpicker/WidgetItem;Landroid/content/Context;I)V

    .line 482
    .local v35, tmp:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;
    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 455
    .end local v35           #tmp:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;
    :cond_5
    if-eqz v31, :cond_7

    move-object/from16 v0, v31

    iget v6, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mItemType:I

    move-object/from16 v0, v30

    iget v7, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mParentId:I

    if-ne v6, v7, :cond_7

    .line 457
    move-object/from16 v32, v31

    .line 467
    :cond_6
    :goto_2
    if-nez v32, :cond_9

    .line 468
    sget-object v6, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "orphan "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v30

    iget-object v9, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :goto_3
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v14, v6, -0x1

    .local v14, i:I
    :goto_4
    if-ltz v14, :cond_4

    .line 474
    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;

    iget-object v6, v6, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->parent:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    move-object/from16 v0, v32

    if-ne v6, v0, :cond_a

    .line 475
    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    invoke-interface {v6}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getStyleIndex()I

    move-result v6

    add-int/lit8 v34, v6, 0x1

    .line 476
    goto :goto_1

    .line 459
    .end local v14           #i:I
    :cond_7
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    .line 460
    .local v36, w:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    move-object/from16 v0, v36

    iget v6, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mItemType:I

    move-object/from16 v0, v30

    iget v7, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mParentId:I

    if-ne v6, v7, :cond_8

    .line 461
    move-object/from16 v32, v36

    .line 462
    move-object/from16 v31, v32

    .line 463
    goto :goto_2

    .line 470
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v36           #w:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    :cond_9
    sget-object v6, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "widget "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v30

    iget-object v9, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 473
    .restart local v14       #i:I
    :cond_a
    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    .line 486
    .end local v14           #i:I
    .end local v28           #in:Ljava/io/ByteArrayInputStream;
    .end local v29           #in2:Ljava/io/ObjectInputStream;
    .end local v30           #item:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    .end local v32           #p:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    .end local v34           #styleIndex:I
    :cond_b
    if-eqz v11, :cond_d

    .line 487
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 488
    :cond_c
    const/4 v11, 0x0

    .line 491
    :cond_d
    if-eqz p2, :cond_e

    .line 492
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 494
    :cond_e
    return-object v33
.end method


# virtual methods
.method public compareTo(Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;)I
    .locals 9
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    .line 501
    const/4 v1, -0x1

    .line 502
    .local v1, BEFORE:I
    const/4 v2, 0x0

    .line 503
    .local v2, EQUAL:I
    const/4 v0, 0x1

    .line 505
    .local v0, AFTER:I
    if-ne p0, p1, :cond_1

    .line 522
    :cond_0
    :goto_0
    return v6

    .line 509
    :cond_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->getLocalizedName()Ljava/lang/String;

    move-result-object v5

    .line 510
    .local v5, thisName:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getLocalizedName()Ljava/lang/String;

    move-result-object v4

    .line 511
    .local v4, thatName:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 512
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v3

    .line 513
    .local v3, collator:Ljava/text/Collator;
    invoke-virtual {v3, v5, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 517
    .end local v3           #collator:Ljava/text/Collator;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->getStyleIndex()I

    move-result v7

    invoke-interface {p1}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getStyleIndex()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->getStyleIndex()I

    move-result v6

    invoke-interface {p1}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getStyleIndex()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 520
    const/4 v6, -0x1

    goto :goto_0

    .line 522
    :cond_3
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    check-cast p1, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->compareTo(Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    iget-object v0, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPluginClassname:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    iget v0, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mItemType:I

    return v0
.end method

.method public getLocalizedName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 96
    iget-object v2, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->name:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->parent:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    .line 104
    .local v1, tmp:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v1, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v1, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mTextResource:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->name:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    const/16 v2, 0xc8

    invoke-virtual {v1}, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->getCategoryId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->ctx:Landroid/content/Context;

    const v4, 0x7f09000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->name:Ljava/lang/String;

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    iget v2, v2, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mIconResource:I

    if-lez v2, :cond_1

    .line 121
    sget-object v2, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->TAG:Ljava/lang/String;

    const-string v3, "getLocalizedName: release resource \'parent\'"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v1           #tmp:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    :cond_1
    iget-object v2, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->name:Ljava/lang/String;

    return-object v2

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->parent:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    goto :goto_0

    .line 107
    .restart local v1       #tmp:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    iget-object v0, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->parentId:I

    return v0
.end method

.method public getPreviewImage()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 130
    iget-object v4, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->preview:Ljava/lang/ref/SoftReference;

    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 132
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_1

    .line 133
    sget-object v4, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->TAG:Ljava/lang/String;

    const-string v5, "getPreviewImage: preview cache hit"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_1
    return-object v0

    .line 130
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v4, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->preview:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    move-object v0, v4

    goto :goto_0

    .line 135
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    sget-object v4, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->TAG:Ljava/lang/String;

    const-string v5, "getPreviewImage: no preview cache"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v4, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    iget v2, v4, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mIconResource:I

    .line 139
    .local v2, resId:I
    if-lez v2, :cond_3

    .line 142
    :try_start_0
    iget-object v4, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    iget-object v5, v5, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 192
    :goto_2
    if-nez v0, :cond_2

    .line 193
    sget-object v4, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPreviewImage: d=null name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->getLocalizedName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_2
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->preview:Ljava/lang/ref/SoftReference;

    goto :goto_1

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 154
    sget-object v4, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPreviewImage: shit happends! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    iget-object v6, v6, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 158
    iget-object v4, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    iget-object v5, v5, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_2

    .line 162
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 163
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_2

    .line 164
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v1

    .line 165
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 169
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->getProperties()Lcom/htc/home/WidgetItemProperties;

    move-result-object v3

    .line 172
    .local v3, tempProperties:Lcom/htc/home/WidgetItemProperties;
    :try_start_2
    invoke-virtual {v3, v2}, Lcom/htc/home/WidgetItemProperties;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    goto/16 :goto_2

    .line 173
    :catch_3
    move-exception v1

    .line 174
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 182
    sget-object v4, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPreviewImage: shit happends! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    iget-object v6, v6, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v3, v2}, Lcom/htc/home/WidgetItemProperties;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public getProperties()Lcom/htc/home/WidgetItemProperties;
    .locals 17

    .prologue
    .line 207
    const/4 v11, 0x0

    .line 209
    .local v11, tempProperties:Lcom/htc/home/WidgetItemProperties;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->parent:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    if-eqz v14, :cond_1

    .line 210
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->parent:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    iget v15, v15, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mItemType:I

    invoke-static {v14, v15}, Lcom/htc/home/personalize/HtcWidgetScanner;->getWidgetGroupItem(Landroid/content/Context;I)Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;

    move-result-object v8

    .line 212
    .local v8, mWidgetGroup:Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;
    iget-object v14, v8, Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;->mGroupItem:Lcom/htc/home/WidgetGroupItemInterface;

    invoke-interface {v14}, Lcom/htc/home/WidgetGroupItemInterface;->listSubItems()[Lcom/htc/home/WidgetItemInterface;

    move-result-object v10

    .line 214
    .local v10, tempItems:[Lcom/htc/home/WidgetItemInterface;
    move-object v1, v10

    .local v1, arr$:[Lcom/htc/home/WidgetItemInterface;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v12, v1, v6

    .line 215
    .local v12, w:Lcom/htc/home/WidgetItemInterface;
    invoke-interface {v12}, Lcom/htc/home/WidgetItemInterface;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    iget-object v15, v15, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 216
    invoke-interface {v12}, Lcom/htc/home/WidgetItemInterface;->getExtraProperties()Lcom/htc/home/WidgetItemProperties;

    move-result-object v11

    .line 214
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 222
    .end local v1           #arr$:[Lcom/htc/home/WidgetItemInterface;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #mWidgetGroup:Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;
    .end local v10           #tempItems:[Lcom/htc/home/WidgetItemInterface;
    .end local v12           #w:Lcom/htc/home/WidgetItemInterface;
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    iget-object v15, v15, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPackageName:Ljava/lang/String;

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 224
    .local v5, context:Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 225
    .local v2, classLoader:Ljava/lang/ClassLoader;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    iget-object v14, v14, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPluginClassname:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-static {v14, v15, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 226
    .local v3, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v14, 0x0

    check-cast v14, [Ljava/lang/Class;

    invoke-virtual {v3, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 227
    .local v4, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v14, 0x0

    check-cast v14, [Ljava/lang/Object;

    invoke-virtual {v4, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 228
    .local v9, object:Ljava/lang/Object;
    instance-of v14, v9, Lcom/htc/home/WidgetItemInterface;

    if-eqz v14, :cond_2

    .line 229
    move-object v0, v9

    check-cast v0, Lcom/htc/home/WidgetItemInterface;

    move-object v13, v0

    .line 230
    .local v13, wgtItem:Lcom/htc/home/WidgetItemInterface;
    invoke-interface {v13}, Lcom/htc/home/WidgetItemInterface;->getExtraProperties()Lcom/htc/home/WidgetItemProperties;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 244
    .end local v2           #classLoader:Ljava/lang/ClassLoader;
    .end local v3           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v5           #context:Landroid/content/Context;
    .end local v9           #object:Ljava/lang/Object;
    .end local v13           #wgtItem:Lcom/htc/home/WidgetItemInterface;
    :cond_2
    :goto_1
    return-object v11

    .line 240
    :catch_0
    move-exception v14

    goto :goto_1

    .line 239
    :catch_1
    move-exception v14

    goto :goto_1

    .line 238
    :catch_2
    move-exception v14

    goto :goto_1

    .line 237
    :catch_3
    move-exception v14

    goto :goto_1

    .line 236
    :catch_4
    move-exception v14

    goto :goto_1

    .line 235
    :catch_5
    move-exception v14

    goto :goto_1

    .line 234
    :catch_6
    move-exception v14

    goto :goto_1

    .line 232
    :catch_7
    move-exception v14

    goto :goto_1
.end method

.method public getSpanX()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    iget v0, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mSpanX:I

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    iget v0, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mSpanY:I

    return v0
.end method

.method public getStyleIndex()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->styleIndex:I

    return v0
.end method

.method public getWidgetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->widget:Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    iget-object v0, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mWidgetName:Ljava/lang/String;

    return-object v0
.end method

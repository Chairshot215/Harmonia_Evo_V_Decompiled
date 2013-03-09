.class public Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;
.super Ljava/lang/Object;
.source "MyWidgetInfo2.java"

# interfaces
.implements Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final id:I

.field private final localizedName:Ljava/lang/String;

.field private final parentId:I

.field private final pkgName:Ljava/lang/String;

.field private preview:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final previewRes:I

.field private final styleIndex:I

.field private final wgtName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->$assertionsDisabled:Z

    .line 24
    const-class v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->TAG:Ljava/lang/String;

    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .parameter "ctx"
    .parameter "id"
    .parameter "wgtName"
    .parameter "pkgName"
    .parameter "previewRes"
    .parameter "parentId"
    .parameter "styleIndex"
    .parameter "localizedName"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->ctx:Landroid/content/Context;

    .line 40
    iput p2, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->id:I

    .line 41
    iput-object p3, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->wgtName:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->pkgName:Ljava/lang/String;

    .line 43
    iput p5, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->previewRes:I

    .line 44
    iput p6, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->parentId:I

    .line 45
    iput p7, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->styleIndex:I

    .line 46
    iput-object p8, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->localizedName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static collectWidgetInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 38
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
    .line 143
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v34, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;>;"
    sget-object v4, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->TAG:Ljava/lang/String;

    const-string v5, "collectWidgetInfo:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v33, parents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/widgetpicker/WidgetItem;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 148
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/htc/home/personalize/widgetpicker/LauncherSettings$WidgetItemTypes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "item_category!=0"

    const/4 v6, 0x0

    const-string v7, "parent_id ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 152
    .local v12, cursor:Landroid/database/Cursor;
    const-string v4, "_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 153
    .local v18, idxId:I
    const-string v4, "package_name"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 155
    .local v21, idxPackageName:I
    const-string v4, "plugin_classname"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 157
    .local v23, idxPluginClassname:I
    const-string v4, "widget_name"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 159
    .local v27, idxWidgetName:I
    const-string v4, "item_category"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 161
    .local v19, idxItemCategory:I
    const-string v4, "parent_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 163
    .local v22, idxParentId:I
    const-string v4, "text_resource"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 165
    .local v26, idxTextResource:I
    const-string v4, "icon_resource"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 167
    .local v17, idxIconResource:I
    const-string v4, "span_x"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 169
    .local v24, idxSpanX:I
    const-string v4, "span_y"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 171
    .local v25, idxSpanY:I
    const-string v4, "layout_resource"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 173
    .local v20, idxLayoutResource:I
    const-string v4, "extra_properties"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 177
    .local v16, idxExtraProperties:I
    const/16 v31, 0x0

    .line 179
    .local v31, lastParent:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 180
    new-instance v30, Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/widgetpicker/WidgetItem;-><init>(Landroid/content/Context;)V

    .line 181
    .local v30, item:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v30

    iput v4, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mItemType:I

    .line 182
    move/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    iput-object v4, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPackageName:Ljava/lang/String;

    .line 183
    move/from16 v0, v23

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    iput-object v4, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPluginClassname:Ljava/lang/String;

    .line 184
    move/from16 v0, v27

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    iput-object v4, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mWidgetName:Ljava/lang/String;

    .line 185
    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v30

    iput v4, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mItemCategory:I

    .line 186
    move/from16 v0, v26

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v30

    iput v4, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mTextResource:I

    .line 187
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v30

    iput v4, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mIconResource:I

    .line 188
    move/from16 v0, v24

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v30

    iput v4, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mSpanX:I

    .line 189
    move/from16 v0, v25

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v30

    iput v4, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mSpanY:I

    .line 190
    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v30

    iput v4, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mLayoutResource:I

    .line 191
    move/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v30

    iput v4, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mParentId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :try_start_1
    new-instance v28, Ljava/io/ByteArrayInputStream;

    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 195
    .local v28, in:Ljava/io/ByteArrayInputStream;
    new-instance v29, Ljava/io/ObjectInputStream;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 196
    .local v29, in2:Ljava/io/ObjectInputStream;
    invoke-virtual/range {v29 .. v29}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Properties;

    move-object/from16 v0, v30

    iput-object v4, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mProps:Ljava/util/Properties;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    :try_start_2
    sget v4, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->ITEM_CAT_GROUP:I

    move-object/from16 v0, v30

    iget v5, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mItemCategory:I

    if-ne v4, v5, :cond_2

    .line 204
    sget-object v4, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 270
    .end local v28           #in:Ljava/io/ByteArrayInputStream;
    .end local v29           #in2:Ljava/io/ObjectInputStream;
    .end local v30           #item:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    :catchall_0
    move-exception v4

    if-eqz v12, :cond_1

    .line 271
    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_0
    const/4 v12, 0x0

    .line 270
    :cond_1
    throw v4

    .line 197
    .restart local v30       #item:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    :catch_0
    move-exception v13

    .line 198
    .local v13, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v4, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->TAG:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 209
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v28       #in:Ljava/io/ByteArrayInputStream;
    .restart local v29       #in2:Ljava/io/ObjectInputStream;
    :cond_2
    const/16 v32, 0x0

    .line 210
    .local v32, p:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    const/4 v10, 0x1

    .line 212
    .local v10, styleIndex:I
    const/4 v4, -0x1

    move-object/from16 v0, v30

    iget v5, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mParentId:I

    if-ne v4, v5, :cond_4

    .line 214
    sget-object v4, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SunWuKong "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_3
    :goto_1
    if-nez v32, :cond_a

    .line 248
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v35, v0

    .line 249
    .local v35, tmpPkgName:Ljava/lang/String;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mTextResource:I

    move/from16 v36, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    .local v36, tmpTextRes:I
    :goto_2
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v11

    .line 262
    .local v11, localizedName:Ljava/lang/String;
    :try_start_5
    new-instance v3, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;

    move-object/from16 v0, v30

    iget v5, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mItemType:I

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mWidgetName:Ljava/lang/String;

    move-object/from16 v0, v30

    iget-object v7, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v30

    iget v8, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mIconResource:I

    move-object/from16 v0, v30

    iget v9, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mParentId:I

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 266
    .local v3, tmp:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;
    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 218
    .end local v3           #tmp:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;
    .end local v11           #localizedName:Ljava/lang/String;
    .end local v35           #tmpPkgName:Ljava/lang/String;
    .end local v36           #tmpTextRes:I
    :cond_4
    if-eqz v31, :cond_6

    move-object/from16 v0, v31

    iget v4, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mItemType:I

    move-object/from16 v0, v30

    iget v5, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mParentId:I

    if-ne v4, v5, :cond_6

    .line 220
    move-object/from16 v32, v31

    .line 230
    :cond_5
    :goto_3
    if-nez v32, :cond_8

    .line 231
    sget-object v4, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orphan "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_4
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v14, v4, -0x1

    .local v14, i:I
    :goto_5
    if-ltz v14, :cond_3

    .line 237
    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;

    iget v4, v4, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->parentId:I

    move-object/from16 v0, v32

    iget v5, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mItemType:I

    if-ne v4, v5, :cond_9

    .line 238
    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    invoke-interface {v4}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getStyleIndex()I

    move-result v4

    add-int/lit8 v10, v4, 0x1

    .line 239
    goto/16 :goto_1

    .line 222
    .end local v14           #i:I
    :cond_6
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/htc/home/personalize/widgetpicker/WidgetItem;

    .line 223
    .local v37, w:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    move-object/from16 v0, v37

    iget v4, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mItemType:I

    move-object/from16 v0, v30

    iget v5, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mParentId:I

    if-ne v4, v5, :cond_7

    .line 224
    move-object/from16 v32, v37

    .line 225
    move-object/from16 v31, v32

    .line 226
    goto :goto_3

    .line 233
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v37           #w:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    :cond_8
    sget-object v4, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "widget "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 236
    .restart local v14       #i:I
    :cond_9
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 251
    .end local v14           #i:I
    :cond_a
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mPackageName:Ljava/lang/String;

    move-object/from16 v35, v0

    .line 252
    .restart local v35       #tmpPkgName:Ljava/lang/String;
    move-object/from16 v0, v32

    iget v0, v0, Lcom/htc/home/personalize/widgetpicker/WidgetItem;->mTextResource:I

    move/from16 v36, v0

    .restart local v36       #tmpTextRes:I
    goto/16 :goto_2

    .line 258
    :catch_1
    move-exception v13

    .line 259
    .local v13, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 270
    .end local v10           #styleIndex:I
    .end local v13           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v28           #in:Ljava/io/ByteArrayInputStream;
    .end local v29           #in2:Ljava/io/ObjectInputStream;
    .end local v30           #item:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    .end local v32           #p:Lcom/htc/home/personalize/widgetpicker/WidgetItem;
    .end local v35           #tmpPkgName:Ljava/lang/String;
    .end local v36           #tmpTextRes:I
    :cond_b
    if-eqz v12, :cond_d

    .line 271
    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_c
    const/4 v12, 0x0

    .line 275
    :cond_d
    return-object v34
.end method


# virtual methods
.method public compareTo(Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;)I
    .locals 2
    .parameter "arg0"

    .prologue
    .line 293
    sget-boolean v0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "compareTo not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 294
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->compareTo(Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->id:I

    return v0
.end method

.method public getLocalizedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->localizedName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentId()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->parentId:I

    return v0
.end method

.method public getPreviewImage()Landroid/graphics/drawable/Drawable;
    .locals 11

    .prologue
    .line 74
    iget-object v8, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->preview:Ljava/lang/ref/SoftReference;

    if-nez v8, :cond_2

    const/4 v1, 0x0

    .line 76
    .local v1, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-nez v1, :cond_1

    .line 77
    sget-object v8, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->TAG:Ljava/lang/String;

    const-string v9, "getView: no cache"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget v8, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->previewRes:I

    if-lez v8, :cond_3

    .line 82
    :try_start_0
    iget-object v8, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->ctx:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->previewRes:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 129
    :cond_0
    :goto_1
    if-nez v1, :cond_5

    .line 130
    sget-object v8, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getView: d=null name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->getLocalizedName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_2
    new-instance v8, Ljava/lang/ref/SoftReference;

    invoke-direct {v8, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->preview:Ljava/lang/ref/SoftReference;

    .line 139
    :cond_1
    return-object v1

    .line 74
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v8, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->preview:Ljava/lang/ref/SoftReference;

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    move-object v1, v8

    goto :goto_0

    .line 84
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    .line 85
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 91
    sget-object v8, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getView: shit happends! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->wgtName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 94
    iget-object v8, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->ctx:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->previewRes:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    goto :goto_1

    .line 97
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 98
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1

    .line 99
    .end local v2           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v2

    .line 100
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 104
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    iget-object v8, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->ctx:Landroid/content/Context;

    iget v9, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->parentId:I

    invoke-static {v8, v9}, Lcom/htc/home/personalize/HtcWidgetScanner;->getWidgetGroupItem(Landroid/content/Context;I)Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;

    move-result-object v5

    .line 106
    .local v5, mWidgetGroup:Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;
    iget-object v8, v5, Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;->mGroupItem:Lcom/htc/home/WidgetGroupItemInterface;

    invoke-interface {v8}, Lcom/htc/home/WidgetGroupItemInterface;->listSubItems()[Lcom/htc/home/WidgetItemInterface;

    move-result-object v6

    .line 108
    .local v6, tempItems:[Lcom/htc/home/WidgetItemInterface;
    move-object v0, v6

    .local v0, arr$:[Lcom/htc/home/WidgetItemInterface;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3
    if-ge v3, v4, :cond_0

    aget-object v7, v0, v3

    .line 109
    .local v7, w:Lcom/htc/home/WidgetItemInterface;
    invoke-interface {v7}, Lcom/htc/home/WidgetItemInterface;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->wgtName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 111
    :try_start_2
    invoke-interface {v7}, Lcom/htc/home/WidgetItemInterface;->getExtraProperties()Lcom/htc/home/WidgetItemProperties;

    move-result-object v8

    iget v9, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->previewRes:I

    invoke-virtual {v8, v9}, Lcom/htc/home/WidgetItemProperties;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v1

    .line 108
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 113
    :catch_3
    move-exception v2

    .line 114
    .local v2, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 120
    sget-object v8, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getView: shit happends! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->wgtName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 123
    invoke-interface {v7}, Lcom/htc/home/WidgetItemInterface;->getExtraProperties()Lcom/htc/home/WidgetItemProperties;

    move-result-object v8

    iget v9, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->previewRes:I

    invoke-virtual {v8, v9}, Lcom/htc/home/WidgetItemProperties;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_4

    .line 134
    .end local v0           #arr$:[Lcom/htc/home/WidgetItemInterface;
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #mWidgetGroup:Lcom/htc/home/personalize/HtcWidgetScanner$WidgetGroupItem;
    .end local v6           #tempItems:[Lcom/htc/home/WidgetItemInterface;
    .end local v7           #w:Lcom/htc/home/WidgetItemInterface;
    :cond_5
    sget-object v8, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getView: d.hight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " d.width="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public getSpanX()I
    .locals 1

    .prologue
    .line 281
    const/4 v0, -0x1

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .prologue
    .line 287
    const/4 v0, -0x1

    return v0
.end method

.method public getStyleIndex()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo2;->styleIndex:I

    return v0
.end method

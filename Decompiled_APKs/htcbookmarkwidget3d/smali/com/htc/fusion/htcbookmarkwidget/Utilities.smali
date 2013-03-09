.class public Lcom/htc/fusion/htcbookmarkwidget/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field public static final INTENT_WIDGET:Ljava/lang/String; = "intent_widget"

.field private static final LOGTAG:Ljava/lang/String; = "HtcBookmarkWidget"

.field public static final WIDGET_APPLICATION_ID:Ljava/lang/String; = "com.htc.htcinternetwidget"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBookmarkItemListByCursor(Landroid/database/Cursor;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 155
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 156
    :cond_0
    const-string v0, "HtcBookmarkWidget"

    const-string v1, "Null cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_0
    return-object v8

    .line 160
    :cond_1
    if-nez p1, :cond_2

    .line 161
    new-instance p1, Ljava/util/ArrayList;

    .end local p1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .restart local p1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 165
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 166
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 167
    const/4 v7, 0x0

    .line 169
    .local v7, data:[B
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 172
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v7, :cond_3

    move-object v4, v8

    :goto_2
    const/4 v5, 0x4

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 172
    :cond_3
    array-length v4, v7

    invoke-static {v7, v9, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_2

    .end local v7           #data:[B
    :cond_4
    move-object v8, p1

    .line 188
    goto :goto_0
.end method

.method public static loadUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "url"

    .prologue
    .line 225
    const/4 v1, 0x0

    .line 227
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    const-string v3, "com.android.browser.application_id"

    const-string v4, "com.htc.htcinternetwidget"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 237
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string v3, "HtcBookmarkWidget"

    const-string v4, "Activity not found, abort loading url"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 234
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1
.end method

.method public static saveBookmark(Lcom/htc/android/rosie/widget/Widget$Host;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "widgetHost"
    .parameter "title"
    .parameter "url"

    .prologue
    .line 209
    const/4 v1, 0x0

    .line 212
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :try_start_1
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v3, "intent_widget"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    invoke-interface {p0, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 220
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string v3, "HtcBookmarkWidget"

    const-string v4, "Activity not found, abort insert bookmark"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1
.end method

.method public static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;
    .locals 28
    .parameter "scaler"
    .parameter "source"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "scaleUp"
    .parameter "recycle"

    .prologue
    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v16, v3, p2

    .line 306
    .local v16, deltaX:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v18, v3, p3

    .line 307
    .local v18, deltaY:I
    if-nez p4, :cond_2

    if-ltz v16, :cond_0

    if-gez v18, :cond_2

    .line 312
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 314
    .local v11, b2:Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 316
    .local v15, c:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    div-int/lit8 v4, v16, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 317
    .local v17, deltaXHalf:I
    const/4 v3, 0x0

    div-int/lit8 v4, v18, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 318
    .local v19, deltaYHalf:I
    new-instance v25, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v3, v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v19

    move-object/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 323
    .local v25, src:Landroid/graphics/Rect;
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, p2, v3

    div-int/lit8 v21, v3, 0x2

    .line 324
    .local v21, dstX:I
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v22, v3, 0x2

    .line 325
    .local v22, dstY:I
    new-instance v20, Landroid/graphics/Rect;

    sub-int v3, p2, v21

    sub-int v4, p3, v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 330
    .local v20, dst:Landroid/graphics/Rect;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 331
    if-eqz p5, :cond_1

    .line 332
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 405
    .end local v15           #c:Landroid/graphics/Canvas;
    .end local v17           #deltaXHalf:I
    .end local v19           #deltaYHalf:I
    .end local v20           #dst:Landroid/graphics/Rect;
    .end local v21           #dstX:I
    .end local v22           #dstY:I
    .end local v25           #src:Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return-object v11

    .line 336
    .end local v11           #b2:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v14, v3

    .line 337
    .local v14, bitmapWidthF:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    .line 339
    .local v13, bitmapHeightF:F
    div-float v12, v14, v13

    .line 340
    .local v12, bitmapAspect:F
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v27, v3, v4

    .line 342
    .local v27, viewAspect:F
    const v23, 0x3f666666

    .line 343
    .local v23, lowerBound:F
    const/high16 v26, 0x3f80

    .line 345
    .local v26, upperBound:F
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xc

    if-ne v3, v4, :cond_3

    .line 346
    const v23, 0x3f4ccccd

    .line 349
    :cond_3
    const/high16 v24, 0x3f80

    .line 350
    .local v24, scale:F
    cmpl-float v3, v12, v27

    if-lez v3, :cond_9

    .line 351
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v24, v3, v13

    .line 352
    cmpg-float v3, v24, v23

    if-ltz v3, :cond_4

    cmpl-float v3, v24, v26

    if-lez v3, :cond_8

    .line 353
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 366
    :goto_1
    if-eqz p0, :cond_5

    .line 367
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 371
    :cond_5
    if-eqz p0, :cond_c

    .line 373
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v8, p0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 379
    .local v10, b1:Landroid/graphics/Bitmap;
    :goto_2
    if-eqz p5, :cond_6

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_6

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 392
    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 399
    .restart local v11       #b2:Landroid/graphics/Bitmap;
    if-eq v11, v10, :cond_1

    .line 400
    if-nez p5, :cond_7

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_1

    .line 401
    :cond_7
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 355
    .end local v10           #b1:Landroid/graphics/Bitmap;
    .end local v11           #b2:Landroid/graphics/Bitmap;
    :cond_8
    const/16 p0, 0x0

    goto :goto_1

    .line 358
    :cond_9
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v24, v3, v14

    .line 359
    cmpg-float v3, v24, v23

    if-ltz v3, :cond_a

    cmpl-float v3, v24, v26

    if-lez v3, :cond_b

    .line 360
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1

    .line 362
    :cond_b
    const/16 p0, 0x0

    goto :goto_1

    .line 376
    :cond_c
    move-object/from16 v10, p1

    .restart local v10       #b1:Landroid/graphics/Bitmap;
    goto :goto_2
.end method

.class public final Lcom/htc/home/personalize/util/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/util/Utilities$1;,
        Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;
    }
.end annotation


# static fields
.field public static final ALL_PROGRAM_LIST_DEFAULT_PRIORITY:I = 0xc8

.field public static final AndroidCurrentVersion:Ljava/lang/String; = "AndroidCurrentVersion"

.field private static final CUSTOMIZATION_URI_STRING:Ljava/lang/String; = "content://customization_settings/SettingTable/application_Launcher"

.field private static final NULL:Ljava/lang/String; = "null"

.field public static final NeedRedrawScenePreivewImage:Ljava/lang/String; = "NeedRedrawScenePreivewImage"

.field private static final RomCurrentVersion:Ljava/lang/String; = "RomCurrentVersion"

.field private static final SenseCurrentVersion:Ljava/lang/String; = "SenseCurrentVersion"

.field private static final TAG:Ljava/lang/String; = "Utilities"

.field private static final sBounds:Landroid/graphics/Rect;

.field private static sCanvas:Landroid/graphics/Canvas;

.field public static sCollator:Ljava/text/Collator;

.field private static sIconHeight:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static sOrientation:I

.field private static final sPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 67
    sput v1, Lcom/htc/home/personalize/util/Utilities;->sIconWidth:I

    .line 68
    sput v1, Lcom/htc/home/personalize/util/Utilities;->sIconHeight:I

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/util/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/util/Utilities;->sBounds:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/util/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/util/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 75
    sput v1, Lcom/htc/home/personalize/util/Utilities;->sOrientation:I

    .line 85
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/util/Utilities;->sCollator:Ljava/text/Collator;

    .line 88
    sget-object v0, Lcom/htc/home/personalize/util/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    return-void
.end method

.method public static byteArrayToBundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 333
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 334
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 335
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 337
    return-object v0
.end method

.method static centerToFit(Landroid/graphics/Bitmap;IILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"
    .parameter "context"

    .prologue
    const/high16 v8, 0x4000

    .line 93
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 94
    .local v1, bitmapWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 96
    .local v0, bitmapHeight:I
    if-lt v1, p1, :cond_0

    if-ge v0, p2, :cond_1

    .line 97
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f06

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 99
    .local v4, color:I
    if-ge v1, p1, :cond_2

    move v6, p1

    :goto_0
    if-ge v0, p2, :cond_3

    move v5, p2

    :goto_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 101
    .local v3, centered:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 102
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 103
    sub-int v5, p1, v1

    int-to-float v5, v5

    div-float/2addr v5, v8

    sub-int v6, p2, v0

    int-to-float v6, v6

    div-float/2addr v6, v8

    const/4 v7, 0x0

    invoke-virtual {v2, p0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 106
    move-object p0, v3

    .line 109
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #centered:Landroid/graphics/Bitmap;
    .end local v4           #color:I
    :cond_1
    return-object p0

    .restart local v4       #color:I
    :cond_2
    move v6, v1

    .line 99
    goto :goto_0

    :cond_3
    move v5, v0

    goto :goto_1
.end method

.method static createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "bitmap"
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    .line 282
    invoke-static {p1}, Lcom/htc/home/personalize/util/Utilities;->getIconWidthHeight(Landroid/content/Context;)V

    .line 284
    sget v8, Lcom/htc/home/personalize/util/Utilities;->sIconWidth:I

    .line 285
    .local v8, width:I
    sget v4, Lcom/htc/home/personalize/util/Utilities;->sIconHeight:I

    .line 287
    .local v4, height:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 288
    .local v1, bitmapWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 290
    .local v0, bitmapHeight:I
    if-lez v8, :cond_4

    if-lez v4, :cond_4

    if-lt v8, v1, :cond_0

    if-ge v4, v0, :cond_4

    .line 291
    :cond_0
    int-to-float v9, v1

    int-to-float v10, v0

    div-float v6, v9, v10

    .line 293
    .local v6, ratio:F
    if-le v1, v0, :cond_2

    .line 294
    int-to-float v9, v8

    div-float/2addr v9, v6

    float-to-int v4, v9

    .line 299
    :cond_1
    :goto_0
    sget v9, Lcom/htc/home/personalize/util/Utilities;->sIconWidth:I

    if-ne v8, v9, :cond_3

    sget v9, Lcom/htc/home/personalize/util/Utilities;->sIconHeight:I

    if-ne v4, v9, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 301
    .local v2, c:Landroid/graphics/Bitmap$Config;
    :goto_1
    sget v9, Lcom/htc/home/personalize/util/Utilities;->sIconWidth:I

    sget v10, Lcom/htc/home/personalize/util/Utilities;->sIconHeight:I

    invoke-static {v9, v10, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 302
    .local v7, thumb:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/htc/home/personalize/util/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 303
    .local v3, canvas:Landroid/graphics/Canvas;
    sget-object v5, Lcom/htc/home/personalize/util/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 304
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 305
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setDither(Z)V

    .line 306
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 307
    sget-object v9, Lcom/htc/home/personalize/util/Utilities;->sBounds:Landroid/graphics/Rect;

    sget v10, Lcom/htc/home/personalize/util/Utilities;->sIconWidth:I

    sub-int/2addr v10, v8

    div-int/lit8 v10, v10, 0x2

    sget v11, Lcom/htc/home/personalize/util/Utilities;->sIconHeight:I

    sub-int/2addr v11, v4

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v9, v10, v11, v8, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 308
    sget-object v9, Lcom/htc/home/personalize/util/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v12, v12, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 309
    sget-object v9, Lcom/htc/home/personalize/util/Utilities;->sOldBounds:Landroid/graphics/Rect;

    sget-object v10, Lcom/htc/home/personalize/util/Utilities;->sBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p0, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 312
    .end local v2           #c:Landroid/graphics/Bitmap$Config;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v6           #ratio:F
    .end local v7           #thumb:Landroid/graphics/Bitmap;
    :goto_2
    return-object v7

    .line 295
    .restart local v6       #ratio:F
    :cond_2
    if-le v0, v1, :cond_1

    .line 296
    int-to-float v9, v4

    mul-float/2addr v9, v6

    float-to-int v8, v9

    goto :goto_0

    .line 299
    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .end local v6           #ratio:F
    :cond_4
    move-object v7, p0

    .line 312
    goto :goto_2
.end method

.method public static createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 22
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 127
    if-nez p0, :cond_1

    .line 128
    const/16 p0, 0x0

    .line 195
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 131
    .restart local p0
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/htc/home/personalize/util/Utilities;->getIconWidthHeight(Landroid/content/Context;)V

    .line 133
    sget v16, Lcom/htc/home/personalize/util/Utilities;->sIconWidth:I

    .line 134
    .local v16, width:I
    sget v9, Lcom/htc/home/personalize/util/Utilities;->sIconHeight:I

    .line 136
    .local v9, height:I
    const/high16 v14, 0x3f80

    .line 137
    .local v14, scale:F
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v12, p0

    .line 138
    check-cast v12, Landroid/graphics/drawable/PaintDrawable;

    .line 139
    .local v12, painter:Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 140
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 150
    .end local v12           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 151
    .local v11, iconWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 152
    .local v10, iconHeight:I
    const-string v19, "Utilities"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createIconThumbnail # iconWidth: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",iconHeight: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",width: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",height: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    if-lez v16, :cond_0

    if-lez v9, :cond_0

    .line 154
    move/from16 v0, v16

    if-lt v0, v11, :cond_3

    if-lt v9, v10, :cond_3

    const/high16 v19, 0x3f80

    cmpl-float v19, v14, v19

    if-eqz v19, :cond_8

    .line 155
    :cond_3
    int-to-float v0, v11

    move/from16 v19, v0

    int-to-float v0, v10

    move/from16 v20, v0

    div-float v13, v19, v20

    .line 157
    .local v13, ratio:F
    if-le v11, v10, :cond_6

    .line 158
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v13

    move/from16 v0, v19

    float-to-int v9, v0

    .line 163
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 165
    .local v7, c:Landroid/graphics/Bitmap$Config;
    :goto_3
    sget v19, Lcom/htc/home/personalize/util/Utilities;->sIconWidth:I

    sget v20, Lcom/htc/home/personalize/util/Utilities;->sIconHeight:I

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 166
    .local v15, thumb:Landroid/graphics/Bitmap;
    sget-object v8, Lcom/htc/home/personalize/util/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 167
    .local v8, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 173
    sget-object v19, Lcom/htc/home/personalize/util/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 174
    sget v19, Lcom/htc/home/personalize/util/Utilities;->sIconWidth:I

    sub-int v19, v19, v16

    div-int/lit8 v17, v19, 0x2

    .line 175
    .local v17, x:I
    sget v19, Lcom/htc/home/personalize/util/Utilities;->sIconHeight:I

    sub-int v19, v19, v9

    div-int/lit8 v18, v19, 0x2

    .line 176
    .local v18, y:I
    add-int v19, v17, v16

    add-int v20, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 177
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 178
    sget-object v19, Lcom/htc/home/personalize/util/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 179
    new-instance p0, Lcom/htc/home/personalize/util/FastBitmapDrawable;

    .end local p0
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/home/personalize/util/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 180
    .restart local p0
    goto/16 :goto_0

    .line 141
    .end local v7           #c:Landroid/graphics/Bitmap$Config;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v10           #iconHeight:I
    .end local v11           #iconWidth:I
    .end local v13           #ratio:F
    .end local v15           #thumb:Landroid/graphics/Bitmap;
    .end local v17           #x:I
    .end local v18           #y:I
    :cond_5
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v6, p0

    .line 143
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 144
    .local v6, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 146
    .local v5, bitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v19

    if-nez v19, :cond_2

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_1

    .line 159
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v10       #iconHeight:I
    .restart local v11       #iconWidth:I
    .restart local v13       #ratio:F
    :cond_6
    if-le v10, v11, :cond_4

    .line 160
    int-to-float v0, v9

    move/from16 v19, v0

    mul-float v19, v19, v13

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_2

    .line 163
    :cond_7
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_3

    .line 180
    .end local v13           #ratio:F
    :cond_8
    move/from16 v0, v16

    if-ge v11, v0, :cond_0

    if-ge v10, v9, :cond_0

    .line 181
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 182
    .restart local v7       #c:Landroid/graphics/Bitmap$Config;
    sget v19, Lcom/htc/home/personalize/util/Utilities;->sIconWidth:I

    sget v20, Lcom/htc/home/personalize/util/Utilities;->sIconHeight:I

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 183
    .restart local v15       #thumb:Landroid/graphics/Bitmap;
    sget-object v8, Lcom/htc/home/personalize/util/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 184
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 185
    sget-object v19, Lcom/htc/home/personalize/util/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 186
    sub-int v19, v16, v11

    div-int/lit8 v17, v19, 0x2

    .line 187
    .restart local v17       #x:I
    sub-int v19, v9, v10

    div-int/lit8 v18, v19, 0x2

    .line 188
    .restart local v18       #y:I
    add-int v19, v17, v11

    add-int v20, v18, v10

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 189
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 190
    sget-object v19, Lcom/htc/home/personalize/util/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 191
    new-instance p0, Lcom/htc/home/personalize/util/FastBitmapDrawable;

    .end local p0
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/home/personalize/util/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local p0
    goto/16 :goto_0
.end method

.method public static createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 18
    .parameter "icon"
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 200
    if-nez p0, :cond_1

    .line 201
    const/16 p0, 0x0

    .line 265
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 204
    .restart local p0
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/htc/home/personalize/util/Utilities;->getIconWidthHeight(Landroid/content/Context;)V

    .line 206
    const/high16 v10, 0x3f80

    .line 207
    .local v10, scale:F
    move-object/from16 v0, p0

    instance-of v15, v0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v15, :cond_5

    move-object/from16 v8, p0

    .line 208
    check-cast v8, Landroid/graphics/drawable/PaintDrawable;

    .line 209
    .local v8, painter:Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 210
    move/from16 v0, p3

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 220
    .end local v8           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 221
    .local v7, iconWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 222
    .local v6, iconHeight:I
    const-string v15, "Utilities"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "createIconThumbnail # iconWidth: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",iconHeight: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",width: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",height: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 224
    move/from16 v0, p2

    if-lt v0, v7, :cond_3

    move/from16 v0, p3

    if-lt v0, v6, :cond_3

    const/high16 v15, 0x3f80

    cmpl-float v15, v10, v15

    if-eqz v15, :cond_8

    .line 225
    :cond_3
    int-to-float v15, v7

    int-to-float v0, v6

    move/from16 v16, v0

    div-float v9, v15, v16

    .line 227
    .local v9, ratio:F
    if-le v7, v6, :cond_6

    .line 228
    move/from16 v0, p2

    int-to-float v15, v0

    div-float/2addr v15, v9

    float-to-int v0, v15

    move/from16 p3, v0

    .line 233
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_7

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 235
    .local v4, c:Landroid/graphics/Bitmap$Config;
    :goto_3
    invoke-static {v7, v6, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 236
    .local v12, thumb:Landroid/graphics/Bitmap;
    sget-object v5, Lcom/htc/home/personalize/util/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 237
    .local v5, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v5, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 243
    sget-object v15, Lcom/htc/home/personalize/util/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 244
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 245
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 246
    sget-object v15, Lcom/htc/home/personalize/util/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 247
    const/4 v15, 0x1

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v12, v0, v1, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 248
    .local v11, scaleIcon:Landroid/graphics/Bitmap;
    new-instance p0, Lcom/htc/home/personalize/util/FastBitmapDrawable;

    .end local p0
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/home/personalize/util/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 249
    .restart local p0
    goto/16 :goto_0

    .line 211
    .end local v4           #c:Landroid/graphics/Bitmap$Config;
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v6           #iconHeight:I
    .end local v7           #iconWidth:I
    .end local v9           #ratio:F
    .end local v11           #scaleIcon:Landroid/graphics/Bitmap;
    .end local v12           #thumb:Landroid/graphics/Bitmap;
    :cond_5
    move-object/from16 v0, p0

    instance-of v15, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v15, :cond_2

    move-object/from16 v3, p0

    .line 213
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 214
    .local v3, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 216
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v15

    if-nez v15, :cond_2

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_1

    .line 229
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v6       #iconHeight:I
    .restart local v7       #iconWidth:I
    .restart local v9       #ratio:F
    :cond_6
    if-le v6, v7, :cond_4

    .line 230
    move/from16 v0, p3

    int-to-float v15, v0

    mul-float/2addr v15, v9

    float-to-int v0, v15

    move/from16 p2, v0

    goto :goto_2

    .line 233
    :cond_7
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    .line 249
    .end local v9           #ratio:F
    :cond_8
    move/from16 v0, p2

    if-ge v7, v0, :cond_0

    move/from16 v0, p3

    if-ge v6, v0, :cond_0

    .line 250
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 251
    .restart local v4       #c:Landroid/graphics/Bitmap$Config;
    invoke-static {v7, v6, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 252
    .restart local v12       #thumb:Landroid/graphics/Bitmap;
    sget-object v5, Lcom/htc/home/personalize/util/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 253
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    invoke-virtual {v5, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 254
    sget-object v15, Lcom/htc/home/personalize/util/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 255
    sub-int v15, p2, v7

    div-int/lit8 v13, v15, 0x2

    .line 256
    .local v13, x:I
    sub-int v15, p3, v6

    div-int/lit8 v14, v15, 0x2

    .line 257
    .local v14, y:I
    add-int v15, v13, v7

    add-int v16, v14, v6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 258
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 259
    sget-object v15, Lcom/htc/home/personalize/util/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 260
    const/4 v15, 0x1

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v12, v0, v1, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 261
    .restart local v11       #scaleIcon:Landroid/graphics/Bitmap;
    new-instance p0, Lcom/htc/home/personalize/util/FastBitmapDrawable;

    .end local p0
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/home/personalize/util/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local p0
    goto/16 :goto_0
.end method

.method public static editReDrawFlag(Landroid/content/SharedPreferences;Z)V
    .locals 5
    .parameter "preferences"
    .parameter "b_redraw"

    .prologue
    .line 526
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 527
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "NeedRedrawScenePreivewImage"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 529
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_0
    return-void

    .line 530
    :catch_0
    move-exception v1

    .line 531
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "Utilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply SharedPreferences fail Exception ex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static editVersion(Landroid/content/SharedPreferences;Ljava/lang/String;II)V
    .locals 5
    .parameter "preferences"
    .parameter "preferenceCurrentVersion"
    .parameter "previousVer"
    .parameter "verGetFromSystem"

    .prologue
    .line 505
    const-string v2, "Utilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferenceCurrentVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",previousVer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",verGetFromSystem = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    if-ne p2, p3, :cond_0

    .line 508
    const-string v2, "Utilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Don\'t edit because previousVer == verGetFromSystem , preferenceCurrentVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",previousVer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 514
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 515
    const-string v2, "Utilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edit preferenceCurrentVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",verGetFromSystem = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 518
    :catch_0
    move-exception v1

    .line 519
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "Utilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply SharedPreferences fail Exception ex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static editVersion(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "preferences"
    .parameter "preferenceCurrentVersion"
    .parameter "previousVer"
    .parameter "verGetFromSystem"
    .parameter "bIsLog"

    .prologue
    .line 479
    if-eqz p4, :cond_0

    .line 480
    const-string v2, "Utilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferenceCurrentVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",previousVer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",verGetFromSystem = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 483
    if-eqz p4, :cond_1

    .line 484
    const-string v2, "Utilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Don\'t edit because previousVer == verGetFromSystem , preferenceCurrentVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",previousVer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_1
    :goto_0
    return-void

    .line 489
    :cond_2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 490
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 491
    if-eqz p4, :cond_3

    .line 492
    const-string v2, "Utilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edit preferenceCurrentVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",verGetFromSystem = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_3
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 495
    :catch_0
    move-exception v1

    .line 496
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "Utilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply SharedPreferences fail Exception ex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static filter2D(Landroid/content/Context;Ljava/util/List;)V
    .locals 13
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;>;"
    invoke-static {p0}, Lcom/htc/home/personalize/util/Utilities;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "htc_widgets_hide"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 396
    .local v3, htcWidgetHideBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/htc/home/personalize/util/Utilities;->initList(Landroid/os/Bundle;)[Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;

    move-result-object v7

    .line 398
    .local v7, mHideHtcWidgetList:[Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;
    move-object v2, v7

    .local v2, arr$:[Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v1, v2, v5

    .line 400
    .local v1, appInfo:Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_1

    .line 401
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    .local v9, widget:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;
    move-object v10, v9

    .line 402
    check-cast v10, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;

    invoke-virtual {v10}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 403
    .local v8, packageName:Ljava/lang/String;
    check-cast v9, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;

    .end local v9           #widget:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;
    invoke-virtual {v9}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->getWidgetName()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, WidgetName:Ljava/lang/String;
    const-string v10, "Utilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "filter: package = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", widget = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v10, v1, Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;->packageName:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, v1, Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v1, Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, v1, Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    const-string v11, "null"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, v1, Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 408
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 398
    .end local v0           #WidgetName:Ljava/lang/String;
    .end local v8           #packageName:Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 400
    .restart local v0       #WidgetName:Ljava/lang/String;
    .restart local v8       #packageName:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 414
    .end local v0           #WidgetName:Ljava/lang/String;
    .end local v1           #appInfo:Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;
    .end local v4           #i:I
    .end local v8           #packageName:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public static filter3D(Landroid/content/Context;Ljava/util/List;)V
    .locals 13
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;>;"
    invoke-static {p0}, Lcom/htc/home/personalize/util/Utilities;->getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "htc_fusion_widgets_hide"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 418
    .local v3, htcFusionWidgetHideBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/htc/home/personalize/util/Utilities;->initList(Landroid/os/Bundle;)[Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;

    move-result-object v7

    .line 420
    .local v7, mHideHtcFusionWidgetList:[Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;
    move-object v1, v7

    .local v1, arr$:[Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v0, v1, v5

    .line 422
    .local v0, appInfo:Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_1

    .line 423
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    .line 424
    .local v9, widget:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    iget-object v10, v9, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->component:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 425
    .local v8, packageName:Ljava/lang/String;
    iget-object v10, v9, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->component:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, className:Ljava/lang/String;
    const-string v10, "Utilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "filter: package = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", class = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v10, v0, Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;->packageName:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, v0, Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v0, Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;->className:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, v0, Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;->className:Ljava/lang/String;

    const-string v11, "null"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, v0, Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;->className:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 430
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 420
    .end local v2           #className:Ljava/lang/String;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #widget:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 422
    .restart local v2       #className:Ljava/lang/String;
    .restart local v8       #packageName:Ljava/lang/String;
    .restart local v9       #widget:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 436
    .end local v0           #appInfo:Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;
    .end local v2           #className:Ljava/lang/String;
    .end local v4           #i:I
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #widget:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    :cond_3
    return-void
.end method

.method public static getIconWidthHeight()I
    .locals 1

    .prologue
    .line 323
    sget v0, Lcom/htc/home/personalize/util/Utilities;->sIconWidth:I

    return v0
.end method

.method private static getIconWidthHeight(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 318
    .local v0, resources:Landroid/content/res/Resources;
    sget v1, Lcom/htc/home/personalize/util/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 319
    const/high16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/htc/home/personalize/util/Utilities;->sIconHeight:I

    sput v1, Lcom/htc/home/personalize/util/Utilities;->sIconWidth:I

    .line 321
    :cond_0
    return-void
.end method

.method public static getModuleBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 341
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 342
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "content://customization_settings/SettingTable/application_Launcher"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 343
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 346
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    const-string v2, "value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 348
    .local v9, idValue:I
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 349
    .local v6, buffer:[B
    invoke-static {v6}, Lcom/htc/home/personalize/util/Utilities;->byteArrayToBundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 353
    .local v7, bundle:Landroid/os/Bundle;
    if-eqz v8, :cond_0

    .line 354
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 358
    .end local v6           #buffer:[B
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #idValue:I
    :cond_0
    :goto_0
    return-object v7

    .line 353
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_1

    .line 354
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 353
    :cond_1
    throw v2

    :cond_2
    if-eqz v8, :cond_3

    .line 354
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_3
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private static initList(Landroid/os/Bundle;)[Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;
    .locals 9
    .parameter "inputBundle"

    .prologue
    .line 369
    if-nez p0, :cond_1

    .line 370
    const/4 v6, 0x0

    new-array v5, v6, [Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;

    .line 391
    :cond_0
    return-object v5

    .line 373
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v4

    .line 375
    .local v4, size:I
    new-array v5, v4, [Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;

    .line 376
    .local v5, tempShowList:[Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;
    const-string v6, "Utilities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "show/hide bundle size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 378
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plenty_set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, key:Ljava/lang/String;
    const-string v6, "Utilities"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 381
    .local v0, childBundle:Landroid/os/Bundle;
    new-instance v6, Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;-><init>(Lcom/htc/home/personalize/util/Utilities$1;)V

    aput-object v6, v5, v1

    .line 382
    aget-object v6, v5, v1

    const-string v7, "package"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;->packageName:Ljava/lang/String;

    .line 383
    aget-object v6, v5, v1

    const-string v7, "class"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;->className:Ljava/lang/String;

    .line 384
    aget-object v6, v5, v1

    const-string v7, "widget_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;->widgetName:Ljava/lang/String;

    .line 385
    const-string v6, "priority"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, priority:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 387
    aget-object v6, v5, v1

    const/16 v7, 0xc8

    iput v7, v6, Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;->priority:I

    .line 377
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    :cond_2
    aget-object v6, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;->priority:I

    goto :goto_1
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 439
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 440
    .local v1, connect:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 442
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    .line 443
    .local v2, isAvailable:Z
    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    .line 448
    :cond_0
    return v2
.end method

.method public static logThreadInfo()V
    .locals 4

    .prologue
    .line 452
    const-string v0, "Utilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mainLooper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", myLooper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string v0, "Utilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current thread id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method public static recordVersion(Landroid/content/SharedPreferences;)V
    .locals 8
    .parameter "preferences"

    .prologue
    .line 458
    const-string v6, "SenseCurrentVersion"

    const-string v7, "-1"

    invoke-interface {p0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, SensePreviousVer:Ljava/lang/String;
    sget-object v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    .line 460
    .local v5, hTCSenseVersion:Ljava/lang/String;
    const-string v6, "SenseCurrentVersion"

    const/4 v7, 0x1

    invoke-static {p0, v6, v2, v5, v7}, Lcom/htc/home/personalize/util/Utilities;->editVersion(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 463
    const-string v6, "RomCurrentVersion"

    const-string v7, "-1"

    invoke-interface {p0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, RomPreviousVer:Ljava/lang/String;
    const-string v6, "ro.build.description"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, RomVersion:Ljava/lang/String;
    const-string v6, "RomCurrentVersion"

    const/4 v7, 0x0

    invoke-static {p0, v6, v0, v1, v7}, Lcom/htc/home/personalize/util/Utilities;->editVersion(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 469
    const-string v6, "AndroidCurrentVersion"

    const/4 v7, -0x1

    invoke-interface {p0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 470
    .local v3, androidPreviousVer:I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 471
    .local v4, androidVersion:I
    const-string v6, "AndroidCurrentVersion"

    invoke-static {p0, v6, v3, v4}, Lcom/htc/home/personalize/util/Utilities;->editVersion(Landroid/content/SharedPreferences;Ljava/lang/String;II)V

    .line 473
    return-void
.end method

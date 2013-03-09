.class public Lcom/android/browser/BookmarkUtils;
.super Ljava/lang/Object;
.source "BookmarkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BookmarkUtils$BookmarkIconType;
    }
.end annotation


# static fields
.field private static final INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final LOGTAG:Ljava/lang/String; = "BookmarkUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static createAddToHomeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/content/Intent;
    .locals 4
    .parameter "context"
    .parameter "url"
    .parameter "title"
    .parameter "touchIcon"
    .parameter "favicon"

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, i:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/browser/BookmarkUtils;->createShortcutIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 118
    .local v1, shortcutIntent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 119
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v2, "android.intent.extra.shortcut.ICON"

    sget-object v3, Lcom/android/browser/BookmarkUtils$BookmarkIconType;->ICON_HOME_SHORTCUT:Lcom/android/browser/BookmarkUtils$BookmarkIconType;

    invoke-static {p0, p3, p4, v3}, Lcom/android/browser/BookmarkUtils;->createIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/android/browser/BookmarkUtils$BookmarkIconType;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    const-string v2, "duplicate"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    return-object v0
.end method

.method static createIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/android/browser/BookmarkUtils$BookmarkIconType;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "touchIcon"
    .parameter "favicon"
    .parameter "type"

    .prologue
    .line 62
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 64
    .local v6, am:Landroid/app/ActivityManager;
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v4

    .line 65
    .local v4, iconDimension:I
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v5

    .local v5, iconDensity:I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 66
    invoke-static/range {v0 .. v5}, Lcom/android/browser/BookmarkUtils;->createIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/android/browser/BookmarkUtils$BookmarkIconType;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/android/browser/BookmarkUtils$BookmarkIconType;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "touchIcon"
    .parameter "favicon"
    .parameter "type"
    .parameter "iconDimension"
    .parameter "iconDensity"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 83
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 85
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 88
    .local v3, iconBounds:Landroid/graphics/Rect;
    if-eqz p1, :cond_1

    .line 89
    invoke-static {p1, v1, v3}, Lcom/android/browser/BookmarkUtils;->drawTouchIconToCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 107
    :cond_0
    :goto_0
    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    return-object v0

    .line 93
    :cond_1
    invoke-static {p0, p3, p5}, Lcom/android/browser/BookmarkUtils;->getIconBackground(Landroid/content/Context;Lcom/android/browser/BookmarkUtils$BookmarkIconType;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 95
    .local v2, icon:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 97
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 98
    .local v4, p:Landroid/graphics/Paint;
    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 103
    .end local v4           #p:Landroid/graphics/Paint;
    :cond_2
    if-eqz p2, :cond_0

    .line 104
    invoke-static {p0, p2, v1, v3, p3}, Lcom/android/browser/BookmarkUtils;->drawFaviconToCanvas(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/android/browser/BookmarkUtils$BookmarkIconType;)V

    goto :goto_0
.end method

.method static createListFaviconBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"

    .prologue
    .line 70
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 71
    .local v0, faviconBackground:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 72
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f0b001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 73
    .local v1, padding:I
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/drawable/PaintDrawable;->setPadding(IIII)V

    .line 74
    invoke-virtual {v0}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    const v3, 0x7f0b001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 78
    return-object v0
.end method

.method static createShortcutIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 9
    .parameter "url"

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 130
    .local v0, shortcutIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v3, v5

    .line 131
    .local v3, urlHash:J
    const/16 v5, 0x20

    shl-long v5, v3, v5

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    int-to-long v7, v7

    or-long v1, v5, v7

    .line 132
    .local v1, uniqueId:J
    const-string v5, "com.android.browser.application_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    return-object v0
.end method

.method static displayRemoveBookmarkDialog(JLjava/lang/String;Landroid/content/Context;Landroid/os/Message;)V
    .locals 4
    .parameter "id"
    .parameter "title"
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 236
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0047

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c004c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p3, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0012

    new-instance v2, Lcom/android/browser/BookmarkUtils$1;

    invoke-direct {v2, p4, p0, p1, p3}, Lcom/android/browser/BookmarkUtils$1;-><init>(Landroid/os/Message;JLandroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 262
    return-void
.end method

.method private static drawFaviconToCanvas(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/android/browser/BookmarkUtils$BookmarkIconType;)V
    .locals 11
    .parameter "context"
    .parameter "favicon"
    .parameter "canvas"
    .parameter "iconBounds"
    .parameter "type"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x4040

    .line 184
    new-instance v2, Landroid/graphics/Paint;

    const/4 v7, 0x3

    invoke-direct {v2, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 185
    .local v2, p:Landroid/graphics/Paint;
    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    sget-object v7, Lcom/android/browser/BookmarkUtils$BookmarkIconType;->ICON_WIDGET:Lcom/android/browser/BookmarkUtils$BookmarkIconType;

    if-ne p4, v7, :cond_1

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 196
    .local v0, faviconDimension:I
    sget-object v7, Lcom/android/browser/BookmarkUtils$BookmarkIconType;->ICON_WIDGET:Lcom/android/browser/BookmarkUtils$BookmarkIconType;

    if-ne p4, v7, :cond_2

    .line 197
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 202
    .local v1, faviconPaddedRectDimension:I
    :goto_1
    sub-int v7, v1, v0

    div-int/lit8 v7, v7, 0x2

    int-to-float v3, v7

    .line 203
    .local v3, padding:F
    invoke-virtual {p3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    div-int/lit8 v8, v1, 0x2

    int-to-float v8, v8

    sub-float v5, v7, v8

    .line 204
    .local v5, x:F
    invoke-virtual {p3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    div-int/lit8 v8, v1, 0x2

    int-to-float v8, v8

    sub-float v6, v7, v8

    .line 205
    .local v6, y:F
    sget-object v7, Lcom/android/browser/BookmarkUtils$BookmarkIconType;->ICON_WIDGET:Lcom/android/browser/BookmarkUtils$BookmarkIconType;

    if-eq p4, v7, :cond_0

    .line 209
    sub-float/2addr v6, v3

    .line 211
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v7, v1

    add-float/2addr v7, v5

    int-to-float v8, v1

    add-float/2addr v8, v6

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 213
    .local v4, r:Landroid/graphics/RectF;
    invoke-virtual {p2, v4, v9, v9, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 218
    invoke-virtual {v4, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 219
    invoke-virtual {p2, p1, v10, v4, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 220
    return-void

    .line 190
    .end local v0           #faviconDimension:I
    .end local v1           #faviconPaddedRectDimension:I
    .end local v3           #padding:F
    .end local v4           #r:Landroid/graphics/RectF;
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_1
    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 199
    .restart local v0       #faviconDimension:I
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .restart local v1       #faviconPaddedRectDimension:I
    goto :goto_1
.end method

.method private static drawTouchIconToCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "touchIcon"
    .parameter "canvas"
    .parameter "iconBounds"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x4100

    const/high16 v6, 0x3f80

    .line 160
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v8, v8, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 163
    .local v3, src:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 164
    .local v0, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 165
    invoke-virtual {p1, p0, v3, p2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 169
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 170
    .local v1, path:Landroid/graphics/Path;
    sget-object v4, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 171
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 172
    .local v2, rect:Landroid/graphics/RectF;
    invoke-virtual {v2, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 173
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v7, v7, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 176
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 177
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 178
    return-void
.end method

.method static getBookmarksUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter "context"

    .prologue
    .line 223
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private static getIconBackground(Landroid/content/Context;Lcom/android/browser/BookmarkUtils$BookmarkIconType;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "type"
    .parameter "density"

    .prologue
    .line 137
    sget-object v2, Lcom/android/browser/BookmarkUtils$BookmarkIconType;->ICON_HOME_SHORTCUT:Lcom/android/browser/BookmarkUtils$BookmarkIconType;

    if-ne p1, v2, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030001

    invoke-virtual {v2, v3, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 142
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 143
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 144
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 156
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 146
    :cond_0
    sget-object v2, Lcom/android/browser/BookmarkUtils$BookmarkIconType;->ICON_INSTALLABLE_WEB_APP:Lcom/android/browser/BookmarkUtils$BookmarkIconType;

    if-ne p1, v2, :cond_1

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f03

    invoke-virtual {v2, v3, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 151
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 152
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 153
    .restart local v0       #bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 156
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

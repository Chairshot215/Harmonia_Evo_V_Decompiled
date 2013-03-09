.class public Lcom/android/htcdialer/util/ContactsUtils;
.super Ljava/lang/Object;
.source "ContactsUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactsUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "res"
    .parameter "bmSrc"
    .parameter "nMaskID"

    .prologue
    const/4 v9, 0x0

    .line 164
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 165
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 167
    .local v2, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 168
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    invoke-virtual {v3, p1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 169
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 170
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 171
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 172
    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 175
    const/4 v1, 0x0

    .line 177
    :cond_0
    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 180
    const/4 v0, 0x0

    .line 182
    :cond_1
    return-object v2
.end method

.method public static getCenterCropBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bmSrc"
    .parameter "nSize"

    .prologue
    const/4 v6, 0x0

    .line 136
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    .local v1, bmDst:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 138
    .local v2, canvasDst:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 139
    .local v5, nSrcW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 140
    .local v4, nSrcH:I
    if-eq v5, v4, :cond_0

    if-nez p0, :cond_1

    .line 142
    :cond_0
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v6, v6, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6, v6, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 158
    :goto_0
    return-object v1

    .line 146
    :cond_1
    if-le v5, v4, :cond_2

    const/4 v0, 0x1

    .line 147
    .local v0, bSrcLandscape:Z
    :goto_1
    if-eqz v0, :cond_3

    .line 149
    sub-int v7, v5, v4

    div-int/lit8 v3, v7, 0x2

    .line 150
    .local v3, nOffset:I
    new-instance v7, Landroid/graphics/Rect;

    add-int v8, v3, v4

    invoke-direct {v7, v3, v6, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6, v6, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .end local v0           #bSrcLandscape:Z
    .end local v3           #nOffset:I
    :cond_2
    move v0, v6

    .line 146
    goto :goto_1

    .line 154
    .restart local v0       #bSrcLandscape:Z
    :cond_3
    sub-int v7, v4, v5

    div-int/lit8 v3, v7, 0x2

    .line 155
    .restart local v3       #nOffset:I
    new-instance v7, Landroid/graphics/Rect;

    add-int v8, v3, v5

    invoke-direct {v7, v6, v3, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6, v6, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static getCenterCropThumbnailBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bmSrc"

    .prologue
    .line 129
    sget v0, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->ICON_SIZE:I

    .line 130
    .local v0, nSize:I
    invoke-static {p0, v0}, Lcom/android/htcdialer/util/ContactsUtils;->getCenterCropBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getIntentToAddFavorite(JI)Landroid/content/Intent;
    .locals 1
    .parameter "userId"
    .parameter "type"

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/htc/provider/ContactsContract$Groups$Favorite;->getAddFavoriteIntent(J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneTypeString(Landroid/content/res/Resources;IZ)Ljava/lang/String;
    .locals 3
    .parameter "res"
    .parameter "type"
    .parameter "withColon"

    .prologue
    const/4 v1, 0x0

    .line 70
    if-nez p0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-object v1

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 74
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v0, p2}, Lcom/android/htcdialer/util/ContactsUtils;->getPhoneTypeString(Landroid/content/res/Resources;ILjava/lang/StringBuilder;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPhoneTypeString(Landroid/content/res/Resources;ILjava/lang/StringBuilder;Z)Z
    .locals 3
    .parameter "res"
    .parameter "type"
    .parameter "sb"
    .parameter "withColon"

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, result:Z
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 97
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    .line 98
    .local v1, typeRes:I
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 99
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const/4 v0, 0x1

    .line 102
    .end local v1           #typeRes:I
    :cond_0
    return v0
.end method

.method public static final isChineseCharacter(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 186
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 187
    .local v0, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 193
    :cond_0
    const/4 v1, 0x1

    .line 195
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static pauseEASSync(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 112
    const-string v0, "com.android.htcdialer"

    invoke-static {p0, v0}, Lcom/android/htcdialer/util/ContactsUtils;->pauseEASSyncWithTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static pauseEASSyncWithTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "tag"

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.eas.intent.pauseSync"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.eas.extra.tag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    return-void
.end method

.method public static resumeEASSync(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 123
    const-string v0, "com.android.htcdialer"

    const/16 v1, 0x2710

    invoke-static {p0, v0, v1}, Lcom/android/htcdialer/util/ContactsUtils;->resumeEASSyncWithTag(Landroid/content/Context;Ljava/lang/String;I)V

    .line 124
    return-void
.end method

.method public static resumeEASSyncWithTag(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "tag"
    .parameter "delay"

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.eas.intent.resumeSync"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.eas.extra.tag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v1, "com.htc.eas.extra.delayTime"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

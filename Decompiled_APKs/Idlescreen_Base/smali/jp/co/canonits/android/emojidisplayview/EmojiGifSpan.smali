.class public Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;
.super Landroid/text/style/ReplacementSpan;


# static fields
.field private static c:Ljava/util/HashMap;

.field private static d:Ljp/co/canonits/android/emojidisplayview/b;

.field private static e:I

.field private static f:J

.field private static g:I


# instance fields
.field private a:I

.field private b:Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

.field private h:I

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->c:Ljava/util/HashMap;

    new-instance v0, Ljp/co/canonits/android/emojidisplayview/b;

    invoke-direct {v0}, Ljp/co/canonits/android/emojidisplayview/b;-><init>()V

    sput-object v0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->d:Ljp/co/canonits/android/emojidisplayview/b;

    const/4 v0, 0x0

    sput v0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->e:I

    const-wide/16 v0, 0x0

    sput-wide v0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->f:J

    const/4 v0, 0x1

    sput v0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->g:I

    sget-object v0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->d:Ljp/co/canonits/android/emojidisplayview/b;

    invoke-virtual {v0}, Ljp/co/canonits/android/emojidisplayview/b;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 10

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v7

    iput v7, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->a:I

    invoke-virtual {p0, p3}, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->setEmojiSize(I)V

    sget-object v0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->c:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

    iput-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->b:Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->b:Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

    if-nez v0, :cond_0

    const-string v3, "mime_type = \"image/gif\" AND category_08=?"

    invoke-static {p1}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->canUseEmoji(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$Emoji;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "0x"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "_display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    if-eqz v6, :cond_0

    invoke-static {v6}, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager;->getData(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v7, v0}, Ljp/co/canonits/android/emojidisplayview/b;->a(ILjava/io/InputStream;)V

    sget-object v0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->d:Ljp/co/canonits/android/emojidisplayview/b;

    invoke-virtual {v0}, Ljp/co/canonits/android/emojidisplayview/b;->run()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_2
    :try_start_2
    const-string v1, "EmojiGifSpan"

    const-string v2, "Exception occurred during query"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->g:I

    return v0
.end method

.method static synthetic a(I)V
    .locals 0

    sput p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->g:I

    return-void
.end method

.method static synthetic b()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->c:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 6

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->b:Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

    if-nez v0, :cond_1

    sget-object v0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->c:Ljava/util/HashMap;

    iget v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

    iput-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->b:Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->b:Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->b:Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

    iget v3, v3, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a:I

    iget-object v4, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->b:Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

    iget v4, v4, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->i:Landroid/graphics/Rect;

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->f:J

    const-wide/16 v4, 0x258

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    sget v2, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->e:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->e:I

    sget v3, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->g:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_2

    const/4 v2, 0x0

    sput v2, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->e:I

    :cond_2
    sput-wide v0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->f:J

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->h:I

    int-to-float v0, v0

    invoke-virtual {p9, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->b:Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

    sget v1, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->e:I

    invoke-virtual {v0, v1}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v2

    int-to-float v0, p6

    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iget v1, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->h:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    iget v0, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    :goto_1
    add-float/2addr v1, v0

    :cond_4
    invoke-virtual {p1, p5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->i:Landroid/graphics/Rect;

    iget-object v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->j:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v0, v1, p9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->h:I

    const/16 v4, 0xe

    if-ge v0, v4, :cond_4

    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_6

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v3

    sub-float v0, v3, v0

    goto :goto_1

    :cond_6
    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_1
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->a:I

    const v2, 0xfeb4d

    if-ne v0, v2, :cond_1

    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->h:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    :goto_0
    if-eqz p5, :cond_0

    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int v2, v2

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-int v2, v2

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    float-to-int v2, v2

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    int-to-double v2, v0

    const-wide v4, 0x3fc999999999999aL

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_0
    return v0

    :cond_1
    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->a:I

    const v2, 0xfeb4e

    if-ne v0, v2, :cond_2

    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->h:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x3fd0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->h:I

    goto :goto_0
.end method

.method public setEmojiSize(I)V
    .locals 6

    const/4 v5, 0x0

    iput p1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->h:I

    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->a:I

    const v1, 0xfeb4d

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    int-to-double v1, p1

    const-wide/high16 v3, 0x3fe0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-direct {v0, v5, v5, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->j:Landroid/graphics/Rect;

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->a:I

    const v1, 0xfeb4e

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    int-to-double v1, p1

    const-wide/high16 v3, 0x3fd0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-direct {v0, v5, v5, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->j:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5, v5, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->j:Landroid/graphics/Rect;

    goto :goto_0
.end method

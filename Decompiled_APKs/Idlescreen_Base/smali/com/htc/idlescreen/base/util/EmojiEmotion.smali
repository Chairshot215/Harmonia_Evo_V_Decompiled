.class public Lcom/htc/idlescreen/base/util/EmojiEmotion;
.super Ljava/lang/Object;
.source "EmojiEmotion.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmojiData:Ljp/co/canonits/android/emojidatamanager/EmojiData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/htc/idlescreen/base/util/EmojiEmotion;->mContext:Landroid/content/Context;

    .line 21
    new-instance v0, Ljp/co/canonits/android/emojidatamanager/EmojiData;

    invoke-direct {v0, p1}, Ljp/co/canonits/android/emojidatamanager/EmojiData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/util/EmojiEmotion;->mEmojiData:Ljp/co/canonits/android/emojidatamanager/EmojiData;

    .line 22
    return-void
.end method

.method private cnv_unicode_from_surrgote_pair([C)I
    .locals 7
    .parameter "pair"

    .prologue
    const v6, 0xdc00

    const v5, 0xd800

    const/4 v3, 0x0

    .line 66
    const/4 v2, 0x0

    .line 68
    .local v2, result:I
    aget-char v0, p1, v3

    .line 69
    .local v0, hi_char:C
    const/4 v4, 0x1

    aget-char v1, p1, v4

    .line 71
    .local v1, lo_char:C
    if-lt v0, v5, :cond_0

    const v4, 0xdbff

    if-le v0, v4, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v3

    .line 75
    :cond_1
    if-lt v1, v6, :cond_0

    const v4, 0xdfff

    if-gt v1, v4, :cond_0

    .line 79
    sub-int v3, v0, v5

    mul-int/lit16 v3, v3, 0x400

    sub-int v4, v1, v6

    add-int/2addr v3, v4

    const/high16 v4, 0x1

    add-int v2, v3, v4

    .line 80
    const-string v3, "[KDDIEMOJI]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "************** Result= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 82
    goto :goto_0
.end method


# virtual methods
.method public getImojiEmotion(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 16
    .parameter "text"

    .prologue
    .line 25
    new-instance v4, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 26
    .local v4, builder:Landroid/text/SpannableStringBuilder;
    const/4 v13, 0x2

    new-array v11, v13, [C

    .line 27
    .local v11, pair:[C
    const/4 v9, 0x0

    .line 28
    .local v9, is:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/idlescreen/base/util/EmojiEmotion;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f050001

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 29
    .local v6, height:I
    invoke-virtual/range {p1 .. p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    .line 31
    .local v10, length:I
    const/4 v12, 0x0

    .line 32
    .local v12, u32_result:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v7, v13, :cond_2

    .line 33
    const/4 v13, 0x0

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v14

    aput-char v14, v11, v13

    .line 34
    const/4 v13, 0x1

    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v14

    aput-char v14, v11, v13

    .line 35
    const/4 v9, 0x0

    .line 37
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/idlescreen/base/util/EmojiEmotion;->cnv_unicode_from_surrgote_pair([C)I

    move-result v13

    if-lez v13, :cond_0

    .line 38
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/idlescreen/base/util/EmojiEmotion;->cnv_unicode_from_surrgote_pair([C)I

    move-result v12

    .line 39
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/idlescreen/base/util/EmojiEmotion;->mEmojiData:Ljp/co/canonits/android/emojidatamanager/EmojiData;

    invoke-virtual {v13, v12}, Ljp/co/canonits/android/emojidatamanager/EmojiData;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v9

    .line 42
    :cond_0
    if-nez v9, :cond_1

    .line 43
    const-string v13, "[KDDIEMOJI]"

    const-string v14, "************** InputStream is disable!!!!!!!"

    invoke-static {v13, v14}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 46
    .local v1, availableSize:I
    const-string v13, "[KDDIEMOJI]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "************** InputStream is OK , size="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/idlescreen/base/util/EmojiEmotion;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-direct {v3, v13, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 48
    .local v3, bm:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v3, v6, v6}, Lcom/htc/idlescreen/base/util/ImageUtil;->getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 49
    .local v2, bitmap:Landroid/graphics/Bitmap;
    const-string v13, "[KDDIEMOJI]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "************** Drawable width="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  ,height="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v8, Landroid/text/style/ImageSpan;

    const/4 v13, 0x1

    invoke-direct {v8, v2, v13}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/Bitmap;I)V

    .line 52
    .local v8, img_span:Landroid/text/style/ImageSpan;
    add-int/lit8 v13, v7, 0x2

    const/16 v14, 0x11

    invoke-virtual {v4, v8, v7, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 54
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 56
    .end local v1           #availableSize:I
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #bm:Landroid/graphics/drawable/BitmapDrawable;
    .end local v8           #img_span:Landroid/text/style/ImageSpan;
    :catch_0
    move-exception v5

    .line 57
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 60
    .end local v5           #e:Ljava/lang/Exception;
    :cond_2
    return-object v4
.end method

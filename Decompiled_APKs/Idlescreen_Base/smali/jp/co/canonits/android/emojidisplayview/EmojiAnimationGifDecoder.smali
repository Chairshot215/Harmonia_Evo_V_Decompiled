.class public Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;
.super Ljava/lang/Object;


# static fields
.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2


# instance fields
.field private A:Landroid/graphics/Bitmap;

.field private B:Landroid/graphics/Bitmap;

.field private C:[B

.field private D:I

.field private E:I

.field private F:I

.field private G:Z

.field private H:I

.field private I:I

.field private J:[B

.field private K:Ljava/util/Vector;

.field private L:I

.field protected a:I

.field protected b:I

.field private c:Ljava/io/InputStream;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private i:I

.field private j:[I

.field private k:[I

.field private l:[I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a:I

    iput v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b:I

    iput v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->e:I

    iput v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->f:I

    const/4 v0, 0x1

    iput v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->i:I

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->C:[B

    iput v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->D:I

    iput v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->E:I

    iput v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->F:I

    iput-boolean v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->G:Z

    iput v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->H:I

    return-void
.end method

.method private a()Z
    .locals 1

    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)[I
    .locals 9

    const/4 v2, 0x0

    mul-int/lit8 v3, p1, 0x3

    const/4 v0, 0x0

    new-array v4, v3, [B

    :try_start_0
    iget-object v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->c:Ljava/io/InputStream;

    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-ge v1, v3, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->d:I

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0x100

    new-array v0, v0, [I

    move v1, v2

    :goto_1
    if-ge v1, p1, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v4, v2

    and-int/lit16 v5, v2, 0xff

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v4, v3

    and-int/lit16 v6, v3, 0xff

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v4, v2

    and-int/lit16 v7, v2, 0xff

    add-int/lit8 v2, v1, 0x1

    const/high16 v8, -0x100

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v8

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    or-int/2addr v5, v7

    aput v5, v0, v1

    move v1, v2

    move v2, v3

    goto :goto_1
.end method

.method private b()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->c:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/4 v1, 0x1

    iput v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->d:I

    goto :goto_0
.end method

.method private c()I
    .locals 4

    invoke-direct {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b()I

    move-result v0

    iput v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->D:I

    const/4 v0, 0x0

    iget v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->D:I

    if-lez v1, :cond_1

    :goto_0
    :try_start_0
    iget v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->D:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v1, :cond_2

    :cond_0
    :goto_1
    iget v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->D:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->d:I

    :cond_1
    return v0

    :cond_2
    :try_start_1
    iget-object v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->c:Ljava/io/InputStream;

    iget-object v2, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->C:[B

    iget v3, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->D:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private d()V
    .locals 27

    const/4 v1, 0x0

    move/from16 v16, v1

    :cond_0
    :goto_0
    if-nez v16, :cond_1

    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->d:I

    goto :goto_0

    :sswitch_0
    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->g()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->s:I

    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->g()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->t:I

    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->g()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->u:I

    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->g()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->v:I

    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b()I

    move-result v2

    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->p:Z

    const-wide/high16 v3, 0x4000

    and-int/lit8 v1, v2, 0x7

    add-int/lit8 v1, v1, 0x1

    int-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->r:I

    and-int/lit8 v1, v2, 0x40

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->q:Z

    move-object/from16 v0, p0

    iget-boolean v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->p:Z

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->r:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a(I)[I

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->k:[I

    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->k:[I

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->l:[I

    :cond_3
    :goto_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->G:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->l:[I

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->I:I

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->l:[I

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->I:I

    const/4 v4, 0x0

    aput v4, v2, v3

    :cond_4
    move v9, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->l:[I

    if-nez v1, :cond_5

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->d:I

    :cond_5
    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->u:I

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->v:I

    mul-int v17, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->J:[B

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->J:[B

    array-length v1, v1

    move/from16 v0, v17

    if-ge v1, v0, :cond_7

    :cond_6
    move/from16 v0, v17

    new-array v1, v0, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->J:[B

    :cond_7
    const/16 v1, 0x1000

    new-array v0, v1, [S

    move-object/from16 v18, v0

    const/16 v1, 0x1000

    new-array v0, v1, [B

    move-object/from16 v19, v0

    const/16 v1, 0x1001

    new-array v0, v1, [B

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b()I

    move-result v21

    const/4 v1, 0x1

    shl-int v22, v1, v21

    add-int/lit8 v23, v22, 0x1

    add-int/lit8 v11, v22, 0x2

    const/4 v10, -0x1

    add-int/lit8 v3, v21, 0x1

    const/4 v1, 0x1

    shl-int/2addr v1, v3

    add-int/lit8 v4, v1, -0x1

    const/4 v1, 0x0

    :goto_4
    move/from16 v0, v22

    if-lt v1, v0, :cond_10

    const/4 v13, 0x0

    const/4 v1, 0x0

    move v5, v13

    move v6, v13

    move v7, v13

    move v15, v1

    move v2, v13

    move v12, v13

    move v1, v13

    :goto_5
    move/from16 v0, v17

    if-lt v15, v0, :cond_11

    :cond_8
    move v1, v13

    :goto_6
    move/from16 v0, v17

    if-lt v1, v0, :cond_18

    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->h()V

    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->L:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->L:I

    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a:I

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->A:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a:I

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b:I

    mul-int/2addr v1, v2

    new-array v2, v1, [I

    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->F:I

    if-lez v1, :cond_b

    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->F:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->L:I

    add-int/lit8 v1, v1, -0x2

    if-lez v1, :cond_19

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->B:Landroid/graphics/Bitmap;

    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->B:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->B:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a:I

    move-object/from16 v0, p0

    iget v8, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->F:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_b

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->G:Z

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->o:I

    :cond_a
    const/4 v3, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v4, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->z:I

    if-lt v3, v4, :cond_1a

    :cond_b
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v6, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->v:I

    if-lt v1, v6, :cond_1c

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->J:[B

    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a:I

    move-object/from16 v0, p0

    iget v3, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->A:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->K:Ljava/util/Vector;

    new-instance v2, Ljp/co/canonits/android/emojidisplayview/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->A:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v4, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->H:I

    invoke-direct {v2, v3, v4}, Ljp/co/canonits/android/emojidisplayview/a;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->G:Z

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->l:[I

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->I:I

    aput v9, v1, v2

    :cond_c
    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->E:I

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->F:I

    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->s:I

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->w:I

    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->t:I

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->x:I

    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->u:I

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->y:I

    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->v:I

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->z:I

    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->A:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->B:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->n:I

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->o:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->E:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->G:Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->H:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->k:[I

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->j:[I

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->l:[I

    move-object/from16 v0, p0

    iget v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->m:I

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->I:I

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->n:I

    goto/16 :goto_3

    :cond_10
    const/4 v2, 0x0

    aput-short v2, v18, v1

    int-to-byte v2, v1

    aput-byte v2, v19, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_11
    if-nez v5, :cond_28

    if-ge v12, v3, :cond_13

    if-nez v2, :cond_12

    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->c()I

    move-result v2

    if-lez v2, :cond_8

    const/4 v1, 0x0

    :cond_12
    move-object/from16 v0, p0

    iget-object v8, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->C:[B

    aget-byte v8, v8, v1

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v12

    add-int/2addr v7, v8

    add-int/lit8 v12, v12, 0x8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_5

    :cond_13
    and-int v8, v7, v4

    shr-int/2addr v7, v3

    sub-int/2addr v12, v3

    if-gt v8, v11, :cond_8

    move/from16 v0, v23

    if-eq v8, v0, :cond_8

    move/from16 v0, v22

    if-ne v8, v0, :cond_14

    add-int/lit8 v3, v21, 0x1

    const/4 v4, 0x1

    shl-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v11, v22, 0x2

    const/4 v10, -0x1

    goto/16 :goto_5

    :cond_14
    const/4 v14, -0x1

    if-ne v10, v14, :cond_15

    add-int/lit8 v6, v5, 0x1

    aget-byte v10, v19, v8

    aput-byte v10, v20, v5

    move v5, v6

    move v10, v8

    move v6, v8

    goto/16 :goto_5

    :cond_15
    if-ne v8, v11, :cond_27

    add-int/lit8 v14, v5, 0x1

    int-to-byte v6, v6

    aput-byte v6, v20, v5

    move v6, v10

    :goto_a
    move/from16 v0, v22

    if-gt v6, v0, :cond_17

    aget-byte v5, v19, v6

    and-int/lit16 v6, v5, 0xff

    const/16 v5, 0x1000

    if-ge v11, v5, :cond_8

    add-int/lit8 v5, v14, 0x1

    int-to-byte v0, v6

    move/from16 v24, v0

    aput-byte v24, v20, v14

    int-to-short v10, v10

    aput-short v10, v18, v11

    int-to-byte v10, v6

    aput-byte v10, v19, v11

    add-int/lit8 v10, v11, 0x1

    and-int v11, v10, v4

    if-nez v11, :cond_16

    const/16 v11, 0x1000

    if-ge v10, v11, :cond_16

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v10

    :cond_16
    move v11, v12

    move/from16 v25, v6

    move v6, v8

    move v8, v4

    move/from16 v4, v25

    move/from16 v26, v3

    move v3, v5

    move v5, v7

    move/from16 v7, v26

    :goto_b
    add-int/lit8 v12, v3, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->J:[B

    add-int/lit8 v3, v13, 0x1

    aget-byte v24, v20, v12

    aput-byte v24, v14, v13

    add-int/lit8 v13, v15, 0x1

    move v15, v13

    move v13, v3

    move v3, v7

    move v7, v5

    move v5, v12

    move v12, v11

    move v11, v10

    move v10, v6

    move v6, v4

    move v4, v8

    goto/16 :goto_5

    :cond_17
    add-int/lit8 v5, v14, 0x1

    aget-byte v24, v19, v6

    aput-byte v24, v20, v14

    aget-short v6, v18, v6

    move v14, v5

    goto :goto_a

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->J:[B

    const/4 v3, 0x0

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_19
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->B:Landroid/graphics/Bitmap;

    goto/16 :goto_7

    :cond_1a
    move-object/from16 v0, p0

    iget v4, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->x:I

    add-int/2addr v4, v3

    move-object/from16 v0, p0

    iget v5, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a:I

    mul-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->w:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->y:I

    add-int/2addr v5, v4

    :goto_c
    if-lt v4, v5, :cond_1b

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    :cond_1b
    aput v1, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v6, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->q:Z

    if-eqz v6, :cond_26

    move-object/from16 v0, p0

    iget v6, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->v:I

    if-lt v3, v6, :cond_1d

    add-int/lit8 v5, v5, 0x1

    packed-switch v5, :pswitch_data_0

    :cond_1d
    :goto_d
    add-int v6, v3, v4

    move/from16 v25, v3

    move v3, v6

    move/from16 v6, v25

    :goto_e
    move-object/from16 v0, p0

    iget v7, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->t:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b:I

    if-ge v6, v7, :cond_1f

    move-object/from16 v0, p0

    iget v7, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a:I

    mul-int/2addr v7, v6

    move-object/from16 v0, p0

    iget v6, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->s:I

    add-int v8, v7, v6

    move-object/from16 v0, p0

    iget v6, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->u:I

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    iget v10, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a:I

    add-int/2addr v10, v7

    if-ge v10, v6, :cond_1e

    move-object/from16 v0, p0

    iget v6, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a:I

    add-int/2addr v6, v7

    :cond_1e
    move-object/from16 v0, p0

    iget v7, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->u:I

    mul-int/2addr v7, v1

    move v10, v8

    :goto_f
    if-lt v10, v6, :cond_20

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    :pswitch_0
    const/4 v3, 0x4

    goto :goto_d

    :pswitch_1
    const/4 v3, 0x2

    const/4 v4, 0x4

    goto :goto_d

    :pswitch_2
    const/4 v3, 0x1

    const/4 v4, 0x2

    goto :goto_d

    :cond_20
    move-object/from16 v0, p0

    iget-object v11, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->J:[B

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v11, v7

    and-int/lit16 v7, v7, 0xff

    move-object/from16 v0, p0

    iget-object v11, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->l:[I

    aget v7, v11, v7

    if-eqz v7, :cond_21

    aput v7, v2, v10

    :cond_21
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    move v7, v8

    goto :goto_f

    :sswitch_1
    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->h()V

    goto/16 :goto_0

    :sswitch_2
    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b()I

    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b()I

    move-result v1

    and-int/lit8 v2, v1, 0x1c

    shr-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->E:I

    move-object/from16 v0, p0

    iget v2, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->E:I

    if-nez v2, :cond_22

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->E:I

    :cond_22
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    :goto_10
    move-object/from16 v0, p0

    iput-boolean v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->G:Z

    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->g()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->H:I

    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->I:I

    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b()I

    goto/16 :goto_0

    :cond_23
    const/4 v1, 0x0

    goto :goto_10

    :sswitch_3
    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->c()I

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_11
    const/16 v3, 0xb

    if-lt v1, v3, :cond_24

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NETSCAPE2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->f()V

    goto/16 :goto_0

    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->C:[B

    aget-byte v3, v3, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_25
    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->h()V

    goto/16 :goto_0

    :sswitch_4
    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->h()V

    goto/16 :goto_0

    :sswitch_5
    invoke-direct/range {p0 .. p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->h()V

    goto/16 :goto_0

    :sswitch_6
    const/4 v1, 0x1

    move/from16 v16, v1

    goto/16 :goto_0

    :cond_26
    move v6, v1

    goto/16 :goto_e

    :cond_27
    move v14, v5

    move v6, v8

    goto/16 :goto_a

    :cond_28
    move v8, v4

    move v4, v6

    move v6, v10

    move v10, v11

    move v11, v12

    move/from16 v25, v5

    move v5, v7

    move v7, v3

    move/from16 v3, v25

    goto/16 :goto_b

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0xf9 -> :sswitch_2
        0xfe -> :sswitch_4
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method private e()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v1

    :goto_0
    const/4 v4, 0x6

    if-lt v2, v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GIF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iput v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->d:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b()I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a:I

    if-nez v2, :cond_3

    invoke-direct {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->g()I

    move-result v2

    iput v2, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a:I

    :cond_3
    iget v2, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b:I

    if-nez v2, :cond_4

    invoke-direct {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->g()I

    move-result v2

    iput v2, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b:I

    :cond_4
    invoke-direct {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b()I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_5

    :goto_2
    iput-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->g:Z

    const/4 v0, 0x2

    and-int/lit8 v1, v2, 0x7

    shl-int/2addr v0, v1

    iput v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->h:I

    invoke-direct {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b()I

    move-result v0

    iput v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->m:I

    invoke-direct {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b()I

    iget-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->h:I

    invoke-direct {p0, v0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a(I)[I

    move-result-object v0

    iput-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->j:[I

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->j:[I

    iget v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->m:I

    aget v0, v0, v1

    iput v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->n:I

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private f()V
    .locals 4

    const/4 v3, 0x1

    :cond_0
    invoke-direct {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->c()I

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->C:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->C:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->C:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->i:I

    :cond_1
    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->D:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private g()I
    .locals 2

    invoke-direct {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b()I

    move-result v0

    invoke-direct {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private h()V
    .locals 1

    :cond_0
    invoke-direct {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->c()I

    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->D:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDelay(I)I
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->H:I

    if-ltz p1, :cond_0

    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->L:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->K:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/canonits/android/emojidisplayview/a;

    iget v0, v0, Ljp/co/canonits/android/emojidisplayview/a;->b:I

    iput v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->H:I

    :cond_0
    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->H:I

    return v0
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->L:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->L:I

    rem-int v0, p1, v0

    iget v2, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->e:I

    if-eqz v2, :cond_1

    iget v2, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->f:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->K:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/canonits/android/emojidisplayview/a;

    iget-object v0, v0, Ljp/co/canonits/android/emojidisplayview/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v2, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->e:I

    int-to-float v2, v2

    int-to-float v5, v3

    div-float/2addr v2, v5

    iget v5, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->f:I

    int-to-float v5, v5

    int-to-float v6, v4

    div-float v6, v5, v6

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->K:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/canonits/android/emojidisplayview/a;

    iget-object v0, v0, Ljp/co/canonits/android/emojidisplayview/a;->a:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getFrameCount()I
    .locals 1

    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->L:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->i:I

    return v0
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->d:I

    iput v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->L:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->K:Ljava/util/Vector;

    iput-object v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->j:[I

    iput-object v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->k:[I

    if-eqz p1, :cond_2

    iput-object p1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->c:Ljava/io/InputStream;

    invoke-direct {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->e()V

    invoke-direct {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->d()V

    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->L:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->d:I

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->d:I

    return v0

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->d:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setNewHeight(I)V
    .locals 0

    iput p1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->f:I

    return-void
.end method

.method public setNewWidth(I)V
    .locals 0

    iput p1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->e:I

    return-void
.end method

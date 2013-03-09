.class public Lcom/htc/gl/Material;
.super Ljava/lang/Object;
.source "Material.java"


# instance fields
.field private final SIZE_TEXTURESTATE:I

.field private mHaveTexture:Z

.field private mRawHeight:I

.field private mRawId:I

.field private mRawWidth:I

.field private mRes:Landroid/content/res/Resources;

.field private mResId:I

.field private m_Name:Ljava/lang/String;

.field private m_TextureStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/gl/TextureStage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lcom/htc/gl/Material;->mResId:I

    .line 28
    iput v1, p0, Lcom/htc/gl/Material;->mRawId:I

    .line 29
    iput v3, p0, Lcom/htc/gl/Material;->mRawWidth:I

    iput v3, p0, Lcom/htc/gl/Material;->mRawHeight:I

    .line 31
    iput v4, p0, Lcom/htc/gl/Material;->SIZE_TEXTURESTATE:I

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    .line 35
    iput-boolean v3, p0, Lcom/htc/gl/Material;->mHaveTexture:Z

    .line 39
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 41
    iget-object v1, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/gl/TextureStage;

    invoke-direct {v2}, Lcom/htc/gl/TextureStage;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    const-string v1, "Material"

    iput-object v1, p0, Lcom/htc/gl/Material;->m_Name:Ljava/lang/String;

    .line 44
    iput-boolean v3, p0, Lcom/htc/gl/Material;->mHaveTexture:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lcom/htc/gl/Material;->mResId:I

    .line 28
    iput v1, p0, Lcom/htc/gl/Material;->mRawId:I

    .line 29
    iput v3, p0, Lcom/htc/gl/Material;->mRawWidth:I

    iput v3, p0, Lcom/htc/gl/Material;->mRawHeight:I

    .line 31
    iput v4, p0, Lcom/htc/gl/Material;->SIZE_TEXTURESTATE:I

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    .line 35
    iput-boolean v3, p0, Lcom/htc/gl/Material;->mHaveTexture:Z

    .line 49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 51
    iget-object v1, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/gl/TextureStage;

    invoke-direct {v2}, Lcom/htc/gl/TextureStage;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/htc/gl/Material;->m_Name:Ljava/lang/String;

    .line 54
    iput-boolean v3, p0, Lcom/htc/gl/Material;->mHaveTexture:Z

    .line 55
    return-void
.end method

.method private QtcValidate(Ljava/io/InputStream;)Z
    .locals 6
    .parameter "is"

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 105
    new-array v1, v4, [B

    .line 107
    .local v1, temp:[B
    const/4 v4, 0x0

    const/4 v5, 0x4

    :try_start_0
    invoke-virtual {p1, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    aget-byte v4, v1, v3

    const/16 v5, 0x51

    if-ne v4, v5, :cond_0

    aget-byte v4, v1, v2

    const/16 v5, 0x54

    if-ne v4, v5, :cond_0

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    const/16 v5, 0x43

    if-ne v4, v5, :cond_0

    const/4 v4, 0x3

    aget-byte v4, v1, v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    .line 119
    :goto_0
    return v2

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v2, v3

    .line 111
    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    move v2, v3

    .line 119
    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/gl/Material;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized onDestroy()V
    .locals 2

    .prologue
    .line 352
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    .line 353
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/gl/Material;->mResId:I

    .line 354
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/gl/Material;->mRawId:I

    .line 355
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gl/Material;->mRawHeight:I

    iput v0, p0, Lcom/htc/gl/Material;->mRawWidth:I

    .line 357
    iget-boolean v0, p0, Lcom/htc/gl/Material;->mHaveTexture:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gl/TextureStage;

    iget-object v0, v0, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    invoke-virtual {v0}, Lcom/htc/gl/resource/Texture;->unLoad()V

    .line 360
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/gl/Material;->mHaveTexture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    monitor-exit p0

    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onReloadTexture()V
    .locals 15

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    const-string v11, "Haolang"

    const-string v12, "Need onReloadTexture"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-boolean v11, p0, Lcom/htc/gl/Material;->mHaveTexture:Z

    if-nez v11, :cond_0

    .line 264
    iget-object v11, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    if-eqz v11, :cond_1

    iget v11, p0, Lcom/htc/gl/Material;->mResId:I

    if-lez v11, :cond_1

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 267
    .local v9, time:J
    iget-object v11, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    iget v12, p0, Lcom/htc/gl/Material;->mResId:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 270
    .local v4, is:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 273
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 278
    :goto_0
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/htc/gl/Material;->setTextureByBitmap(Landroid/graphics/Bitmap;)V

    .line 279
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/gl/Material;->mHaveTexture:Z

    .line 280
    const-string v11, "Haolang"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Need onReloadTexture end = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 348
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v9           #time:J
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 272
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v9       #time:J
    :catchall_0
    move-exception v11

    .line 273
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 276
    :goto_2
    :try_start_5
    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 261
    .end local v4           #is:Ljava/io/InputStream;
    .end local v9           #time:J
    :catchall_1
    move-exception v11

    monitor-exit p0

    throw v11

    .line 281
    :cond_1
    :try_start_6
    iget-object v11, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    if-eqz v11, :cond_0

    iget v11, p0, Lcom/htc/gl/Material;->mRawId:I

    if-lez v11, :cond_0

    .line 283
    iget-object v11, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    iget v12, p0, Lcom/htc/gl/Material;->mRawId:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 284
    .restart local v4       #is:Ljava/io/InputStream;
    invoke-direct {p0, v4}, Lcom/htc/gl/Material;->QtcValidate(Ljava/io/InputStream;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 289
    const/4 v11, 0x4

    new-array v5, v11, [B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 291
    .local v5, mipmap:[B
    :try_start_7
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 297
    const/4 v5, 0x0

    .line 300
    const/16 v11, 0x18

    :try_start_8
    new-array v3, v11, [B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 302
    .local v3, header:[B
    :try_start_9
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 307
    :goto_3
    const/4 v3, 0x0

    .line 309
    const/4 v8, 0x0

    .line 310
    .local v8, tempbuf:[B
    const/4 v7, 0x0

    .line 312
    .local v7, rawDataSize:I
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v11

    add-int/lit8 v7, v11, -0x20

    .line 313
    new-array v8, v7, [B

    .line 314
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 320
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 322
    if-nez v7, :cond_3

    .line 323
    const/4 v8, 0x0

    goto :goto_1

    .line 292
    .end local v3           #header:[B
    .end local v7           #rawDataSize:I
    .end local v8           #tempbuf:[B
    :catch_0
    move-exception v2

    .line 294
    .local v2, e1:Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 303
    .end local v2           #e1:Ljava/io/IOException;
    .restart local v3       #header:[B
    :catch_1
    move-exception v2

    .line 305
    .restart local v2       #e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 327
    .end local v2           #e1:Ljava/io/IOException;
    .restart local v7       #rawDataSize:I
    .restart local v8       #tempbuf:[B
    :catch_2
    move-exception v1

    .line 329
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_1

    .line 315
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 317
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 320
    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 322
    if-nez v7, :cond_3

    .line 323
    const/4 v8, 0x0

    goto :goto_1

    .line 327
    :catch_4
    move-exception v1

    .line 329
    :try_start_f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_1

    .line 319
    .end local v1           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v11

    .line 320
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 322
    if-nez v7, :cond_2

    .line 323
    const/4 v8, 0x0

    goto :goto_1

    .line 327
    :catch_5
    move-exception v1

    .line 329
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_11
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 330
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    throw v11

    .line 334
    :cond_3
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 335
    .local v6, rawData:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 336
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 337
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 338
    const/4 v8, 0x0

    .line 340
    iget-object v11, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/gl/TextureStage;

    iget-object v11, v11, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    if-nez v11, :cond_4

    .line 341
    iget-object v11, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/gl/TextureStage;

    new-instance v12, Lcom/htc/gl/resource/Texture;

    invoke-direct {v12}, Lcom/htc/gl/resource/Texture;-><init>()V

    iput-object v12, v11, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    .line 342
    :cond_4
    iget-object v11, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/gl/TextureStage;

    iget-object v11, v11, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    iget v12, p0, Lcom/htc/gl/Material;->mRawWidth:I

    iget v13, p0, Lcom/htc/gl/Material;->mRawHeight:I

    invoke-virtual {v11, v6, v12, v13, v7}, Lcom/htc/gl/resource/Texture;->load(Ljava/nio/ByteBuffer;III)V

    .line 344
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/gl/Material;->mHaveTexture:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_1

    .line 274
    .end local v3           #header:[B
    .end local v5           #mipmap:[B
    .end local v6           #rawData:Ljava/nio/ByteBuffer;
    .end local v7           #rawDataSize:I
    .end local v8           #tempbuf:[B
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #time:J
    :catch_6
    move-exception v11

    goto/16 :goto_0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_7
    move-exception v12

    goto/16 :goto_2
.end method

.method public declared-synchronized onUnloadTexture()V
    .locals 2

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/gl/Material;->mHaveTexture:Z

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/gl/Material;->mHaveTexture:Z

    .line 255
    iget-object v0, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gl/TextureStage;

    iget-object v0, v0, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    invoke-virtual {v0}, Lcom/htc/gl/resource/Texture;->unLoad()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_0
    monitor-exit p0

    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaterialParameters(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gl/TextureStage;

    iget-object v0, v0, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    invoke-virtual {v0, p1}, Lcom/htc/gl/resource/Texture;->setTextureParameters(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 248
    return-void
.end method

.method public setTextureByBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gl/TextureStage;

    iget-object v0, v0, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gl/TextureStage;

    new-instance v1, Lcom/htc/gl/resource/Texture;

    invoke-direct {v1}, Lcom/htc/gl/resource/Texture;-><init>()V

    iput-object v1, v0, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gl/TextureStage;

    iget-object v0, v0, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    invoke-virtual {v0, p1}, Lcom/htc/gl/resource/Texture;->load(Landroid/graphics/Bitmap;)V

    .line 243
    return-void
.end method

.method public setTextureByRawData(Landroid/content/Context;III)V
    .locals 11
    .parameter "context"
    .parameter "rawId"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v10, 0x0

    .line 124
    if-nez p1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iput p2, p0, Lcom/htc/gl/Material;->mRawId:I

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    .line 129
    iput p3, p0, Lcom/htc/gl/Material;->mRawWidth:I

    .line 130
    iput p4, p0, Lcom/htc/gl/Material;->mRawHeight:I

    .line 131
    iget-object v8, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    iget v9, p0, Lcom/htc/gl/Material;->mRawId:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 132
    .local v3, is:Ljava/io/InputStream;
    invoke-direct {p0, v3}, Lcom/htc/gl/Material;->QtcValidate(Ljava/io/InputStream;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 137
    const/4 v8, 0x4

    new-array v4, v8, [B

    .line 139
    .local v4, mipmap:[B
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    const/4 v4, 0x0

    .line 148
    const/16 v8, 0x18

    new-array v2, v8, [B

    .line 150
    .local v2, header:[B
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    :goto_1
    const/4 v2, 0x0

    .line 157
    const/4 v7, 0x0

    .line 158
    .local v7, tempbuf:[B
    const/4 v6, 0x0

    .line 160
    .local v6, rawDataSize:I
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v8

    add-int/lit8 v6, v8, -0x20

    .line 161
    new-array v7, v6, [B

    .line 162
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 168
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 170
    if-nez v6, :cond_3

    .line 171
    const/4 v7, 0x0

    goto :goto_0

    .line 140
    .end local v2           #header:[B
    .end local v6           #rawDataSize:I
    .end local v7           #tempbuf:[B
    :catch_0
    move-exception v1

    .line 142
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v2       #header:[B
    :catch_1
    move-exception v1

    .line 153
    .restart local v1       #e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 175
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v6       #rawDataSize:I
    .restart local v7       #tempbuf:[B
    :catch_2
    move-exception v0

    .line 177
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 165
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 168
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 170
    if-nez v6, :cond_3

    .line 171
    const/4 v7, 0x0

    goto :goto_0

    .line 175
    :catch_4
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 167
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 168
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 170
    if-nez v6, :cond_2

    .line 171
    const/4 v7, 0x0

    goto :goto_0

    .line 175
    :catch_5
    move-exception v0

    .line 177
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 178
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    throw v8

    .line 182
    :cond_3
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 183
    .local v5, rawData:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 184
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 185
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 186
    const/4 v7, 0x0

    .line 188
    iget-object v8, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/gl/TextureStage;

    iget-object v8, v8, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    if-nez v8, :cond_4

    .line 189
    iget-object v8, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/gl/TextureStage;

    new-instance v9, Lcom/htc/gl/resource/Texture;

    invoke-direct {v9}, Lcom/htc/gl/resource/Texture;-><init>()V

    iput-object v9, v8, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    .line 190
    :cond_4
    iget-object v8, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/gl/TextureStage;

    iget-object v8, v8, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    invoke-virtual {v8, v5, p3, p4, v6}, Lcom/htc/gl/resource/Texture;->load(Ljava/nio/ByteBuffer;III)V

    .line 192
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/gl/Material;->mHaveTexture:Z

    goto/16 :goto_0
.end method

.method public declared-synchronized setTextureByResId(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 81
    monitor-enter p0

    if-nez p1, :cond_0

    .line 101
    :goto_0
    monitor-exit p0

    return-void

    .line 84
    :cond_0
    :try_start_0
    iput p2, p0, Lcom/htc/gl/Material;->mResId:I

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    .line 87
    iget-object v2, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    iget v3, p0, Lcom/htc/gl/Material;->mResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 90
    .local v1, is:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 93
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    :goto_1
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/htc/gl/Material;->setTextureByBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/gl/Material;->mHaveTexture:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 81
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #is:Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 92
    .restart local v1       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    .line 93
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 96
    :goto_2
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 94
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    goto :goto_1

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public declared-synchronized setTextureByResId(Landroid/content/res/Resources;I)V
    .locals 4
    .parameter "res"
    .parameter "resId"

    .prologue
    .line 197
    monitor-enter p0

    if-nez p1, :cond_0

    .line 217
    :goto_0
    monitor-exit p0

    return-void

    .line 200
    :cond_0
    :try_start_0
    iput p2, p0, Lcom/htc/gl/Material;->mResId:I

    .line 202
    iput-object p1, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    .line 203
    iget-object v2, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    iget v3, p0, Lcom/htc/gl/Material;->mResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 206
    .local v1, is:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 209
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 214
    :goto_1
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/htc/gl/Material;->setTextureByBitmap(Landroid/graphics/Bitmap;)V

    .line 216
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/gl/Material;->mHaveTexture:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 197
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #is:Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 208
    .restart local v1       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    .line 209
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 212
    :goto_2
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 210
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    goto :goto_1

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public declared-synchronized setTextureResId(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    .line 68
    iput p2, p0, Lcom/htc/gl/Material;->mResId:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/gl/Material;->mHaveTexture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextureResId(Landroid/content/res/Resources;I)V
    .locals 1
    .parameter "res"
    .parameter "resId"

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    .line 75
    iput p2, p0, Lcom/htc/gl/Material;->mResId:I

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/gl/Material;->mHaveTexture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

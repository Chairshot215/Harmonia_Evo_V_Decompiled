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

    const/4 v1, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/htc/gl/Material;->mResId:I

    iput v1, p0, Lcom/htc/gl/Material;->mRawId:I

    iput v3, p0, Lcom/htc/gl/Material;->mRawWidth:I

    iput v3, p0, Lcom/htc/gl/Material;->mRawHeight:I

    iput v4, p0, Lcom/htc/gl/Material;->SIZE_TEXTURESTATE:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    iput-boolean v3, p0, Lcom/htc/gl/Material;->mHaveTexture:Z

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/gl/TextureStage;

    invoke-direct {v2}, Lcom/htc/gl/TextureStage;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "Material"

    iput-object v1, p0, Lcom/htc/gl/Material;->m_Name:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/htc/gl/Material;->mHaveTexture:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v1, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/htc/gl/Material;->mResId:I

    iput v1, p0, Lcom/htc/gl/Material;->mRawId:I

    iput v3, p0, Lcom/htc/gl/Material;->mRawWidth:I

    iput v3, p0, Lcom/htc/gl/Material;->mRawHeight:I

    iput v4, p0, Lcom/htc/gl/Material;->SIZE_TEXTURESTATE:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    iput-boolean v3, p0, Lcom/htc/gl/Material;->mHaveTexture:Z

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/gl/TextureStage;

    invoke-direct {v2}, Lcom/htc/gl/TextureStage;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/htc/gl/Material;->m_Name:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/htc/gl/Material;->mHaveTexture:Z

    return-void
.end method

.method private QtcValidate(Ljava/io/InputStream;)Z
    .locals 6

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v1, v4, [B

    const/4 v4, 0x0

    const/4 v5, 0x4

    :try_start_0
    invoke-virtual {p1, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

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

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/gl/Material;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized onDestroy()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/gl/Material;->mResId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/gl/Material;->mRawId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gl/Material;->mRawHeight:I

    iput v0, p0, Lcom/htc/gl/Material;->mRawWidth:I

    iget-boolean v0, p0, Lcom/htc/gl/Material;->mHaveTexture:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gl/TextureStage;

    iget-object v0, v0, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    invoke-virtual {v0}, Lcom/htc/gl/resource/Texture;->unLoad()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/gl/Material;->mHaveTexture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onReloadTexture()V
    .locals 15

    monitor-enter p0

    :try_start_0
    const-string v11, "Haolang"

    const-string v12, "Need onReloadTexture"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v11, p0, Lcom/htc/gl/Material;->mHaveTexture:Z

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    if-eqz v11, :cond_1

    iget v11, p0, Lcom/htc/gl/Material;->mResId:I

    if-lez v11, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    iget v12, p0, Lcom/htc/gl/Material;->mResId:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    :try_start_1
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :goto_0
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/htc/gl/Material;->setTextureByBitmap(Landroid/graphics/Bitmap;)V

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/gl/Material;->mHaveTexture:Z

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

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v11

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    :goto_2
    :try_start_5
    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v11

    monitor-exit p0

    throw v11

    :cond_1
    :try_start_6
    iget-object v11, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    if-eqz v11, :cond_0

    iget v11, p0, Lcom/htc/gl/Material;->mRawId:I

    if-lez v11, :cond_0

    iget-object v11, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    iget v12, p0, Lcom/htc/gl/Material;->mRawId:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/gl/Material;->QtcValidate(Ljava/io/InputStream;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x4

    new-array v5, v11, [B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    const/4 v5, 0x0

    const/16 v11, 0x18

    :try_start_8
    new-array v3, v11, [B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :goto_3
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v11

    add-int/lit8 v7, v11, -0x20

    new-array v8, v7, [B

    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    if-nez v7, :cond_3

    const/4 v8, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_1

    :catch_3
    move-exception v1

    :try_start_d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    if-nez v7, :cond_3

    const/4 v8, 0x0

    goto :goto_1

    :catch_4
    move-exception v1

    :try_start_f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_1

    :catchall_2
    move-exception v11

    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    if-nez v7, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    :catch_5
    move-exception v1

    :try_start_11
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    throw v11

    :cond_3
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v8, 0x0

    iget-object v11, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/gl/TextureStage;

    iget-object v11, v11, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/gl/TextureStage;

    new-instance v12, Lcom/htc/gl/resource/Texture;

    invoke-direct {v12}, Lcom/htc/gl/resource/Texture;-><init>()V

    iput-object v12, v11, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

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

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/gl/Material;->mHaveTexture:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_1

    :catch_6
    move-exception v11

    goto/16 :goto_0

    :catch_7
    move-exception v12

    goto/16 :goto_2
.end method

.method public declared-synchronized onUnloadTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/gl/Material;->mHaveTexture:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/gl/Material;->mHaveTexture:Z

    iget-object v0, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gl/TextureStage;

    iget-object v0, v0, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    invoke-virtual {v0}, Lcom/htc/gl/resource/Texture;->unLoad()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaterialParameters(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gl/TextureStage;

    iget-object v0, v0, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    invoke-virtual {v0, p1}, Lcom/htc/gl/resource/Texture;->setTextureParameters(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public setTextureByBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gl/TextureStage;

    iget-object v0, v0, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gl/TextureStage;

    new-instance v1, Lcom/htc/gl/resource/Texture;

    invoke-direct {v1}, Lcom/htc/gl/resource/Texture;-><init>()V

    iput-object v1, v0, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    :cond_0
    iget-object v0, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gl/TextureStage;

    iget-object v0, v0, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    invoke-virtual {v0, p1}, Lcom/htc/gl/resource/Texture;->load(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setTextureByRawData(Landroid/content/Context;III)V
    .locals 11

    const/4 v10, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p2, p0, Lcom/htc/gl/Material;->mRawId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    iput p3, p0, Lcom/htc/gl/Material;->mRawWidth:I

    iput p4, p0, Lcom/htc/gl/Material;->mRawHeight:I

    iget-object v8, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    iget v9, p0, Lcom/htc/gl/Material;->mRawId:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/gl/Material;->QtcValidate(Ljava/io/InputStream;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    new-array v4, v8, [B

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    const/16 v8, 0x18

    new-array v2, v8, [B

    :try_start_1
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v8

    add-int/lit8 v6, v8, -0x20

    new-array v7, v6, [B

    invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v6, :cond_3

    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    if-nez v6, :cond_3

    const/4 v7, 0x0

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v8

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    if-nez v6, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    throw v8

    :cond_3
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/gl/TextureStage;

    iget-object v8, v8, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/gl/TextureStage;

    new-instance v9, Lcom/htc/gl/resource/Texture;

    invoke-direct {v9}, Lcom/htc/gl/resource/Texture;-><init>()V

    iput-object v9, v8, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    :cond_4
    iget-object v8, p0, Lcom/htc/gl/Material;->m_TextureStates:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/gl/TextureStage;

    iget-object v8, v8, Lcom/htc/gl/TextureStage;->m_Tex:Lcom/htc/gl/resource/Texture;

    invoke-virtual {v8, v5, p3, p4, v6}, Lcom/htc/gl/resource/Texture;->load(Ljava/nio/ByteBuffer;III)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/gl/Material;->mHaveTexture:Z

    goto/16 :goto_0
.end method

.method public declared-synchronized setTextureByResId(Landroid/content/Context;I)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iput p2, p0, Lcom/htc/gl/Material;->mResId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    iget v3, p0, Lcom/htc/gl/Material;->mResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/htc/gl/Material;->setTextureByBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/gl/Material;->mHaveTexture:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public declared-synchronized setTextureByResId(Landroid/content/res/Resources;I)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iput p2, p0, Lcom/htc/gl/Material;->mResId:I

    iput-object p1, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    iget v3, p0, Lcom/htc/gl/Material;->mResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/htc/gl/Material;->setTextureByBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/gl/Material;->mHaveTexture:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public declared-synchronized setTextureResId(Landroid/content/Context;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    iput p2, p0, Lcom/htc/gl/Material;->mResId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/gl/Material;->mHaveTexture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextureResId(Landroid/content/res/Resources;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/htc/gl/Material;->mRes:Landroid/content/res/Resources;

    iput p2, p0, Lcom/htc/gl/Material;->mResId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/gl/Material;->mHaveTexture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

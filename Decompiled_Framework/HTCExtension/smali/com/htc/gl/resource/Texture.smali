.class public Lcom/htc/gl/resource/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


# static fields
.field private static final DEBUG:Z = false

.field private static DELAYLOADTIME:J = 0x0L

.field public static final RS_LOADED:I = 0x2

.field public static final RS_LOADING:I = 0x3

.field public static final RS_UNDEFINED:I = 0x0

.field public static final RS_UNLOADED:I = 0x1

.field private static s_InstanceLog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static s_LastLoadTime:J


# instance fields
.field private mIntData:Ljava/nio/IntBuffer;

.field private mIntDataHeight:I

.field private mIntDataWidth:I

.field private mRawData:Ljava/nio/ByteBuffer;

.field private mRawDataHeight:I

.field private mRawDataSize:I

.field private mRawDataWidth:I

.field private m_Bitmap:Landroid/graphics/Bitmap;

.field private m_GL:Ljavax/microedition/khronos/opengles/GL10;

.field private m_ID:I

.field protected m_State:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/htc/gl/resource/Texture;->s_LastLoadTime:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/htc/gl/resource/Texture;->DELAYLOADTIME:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/gl/resource/Texture;->s_InstanceLog:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_State:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    iput-object v2, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    iput-object v2, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    iput v1, p0, Lcom/htc/gl/resource/Texture;->mRawDataWidth:I

    iput v1, p0, Lcom/htc/gl/resource/Texture;->mRawDataHeight:I

    iput v1, p0, Lcom/htc/gl/resource/Texture;->mRawDataSize:I

    iput v1, p0, Lcom/htc/gl/resource/Texture;->mIntDataWidth:I

    iput v1, p0, Lcom/htc/gl/resource/Texture;->mIntDataHeight:I

    iput-object v2, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_State:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    iput-object v2, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    iput-object v2, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    iput v1, p0, Lcom/htc/gl/resource/Texture;->mRawDataWidth:I

    iput v1, p0, Lcom/htc/gl/resource/Texture;->mRawDataHeight:I

    iput v1, p0, Lcom/htc/gl/resource/Texture;->mRawDataSize:I

    iput v1, p0, Lcom/htc/gl/resource/Texture;->mIntDataWidth:I

    iput v1, p0, Lcom/htc/gl/resource/Texture;->mIntDataHeight:I

    iput-object v2, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p0, p1}, Lcom/htc/gl/resource/Texture;->load(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    iput-object v1, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    :cond_1
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iput-object v1, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    :cond_2
    return-void
.end method

.method private clearGL(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    if-eq v1, v2, :cond_0

    new-array v0, v4, [I

    iget v1, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    aput v1, v0, v3

    iget-object v1, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v4, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    iput v2, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public load(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/gl/resource/Texture;->unLoad()V

    iput-object p1, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public load(Ljava/nio/ByteBuffer;III)V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/gl/resource/Texture;->unLoad()V

    iput-object p1, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    iput p2, p0, Lcom/htc/gl/resource/Texture;->mRawDataWidth:I

    iput p3, p0, Lcom/htc/gl/resource/Texture;->mRawDataHeight:I

    iput p4, p0, Lcom/htc/gl/resource/Texture;->mRawDataSize:I

    return-void
.end method

.method public load(Ljava/nio/IntBuffer;II)V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/gl/resource/Texture;->unLoad()V

    iput-object p1, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    iput p2, p0, Lcom/htc/gl/resource/Texture;->mIntDataWidth:I

    iput p3, p0, Lcom/htc/gl/resource/Texture;->mIntDataHeight:I

    return-void
.end method

.method public setTextureParameters(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12

    const/4 v1, 0x1

    const/16 v11, 0xde1

    invoke-interface {p1, v11}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    iget v0, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    new-array v10, v1, [I

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v0, v10, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    aget v1, v10, v1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/high16 v2, 0x4604

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    aget v0, v10, v0

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_State:I

    iput-object p1, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/htc/gl/resource/Texture;->s_LastLoadTime:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    if-ltz v0, :cond_1

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_3

    new-array v10, v1, [I

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p1, v0, v10, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    aget v1, v10, v1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/high16 v2, 0x4604

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    iget v4, p0, Lcom/htc/gl/resource/Texture;->mIntDataWidth:I

    iget v5, p0, Lcom/htc/gl/resource/Texture;->mIntDataHeight:I

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    iget-object v9, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    move-object v0, p1

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/4 v0, 0x0

    aget v0, v10, v0

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_State:I

    iput-object p1, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/htc/gl/resource/Texture;->s_LastLoadTime:J

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    new-array v10, v1, [I

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_3
    invoke-interface {p1, v0, v10, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    aget v1, v10, v1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/high16 v2, 0x4604

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const v3, 0x8c93

    iget v4, p0, Lcom/htc/gl/resource/Texture;->mRawDataWidth:I

    iget v5, p0, Lcom/htc/gl/resource/Texture;->mRawDataHeight:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/gl/resource/Texture;->mRawDataSize:I

    iget-object v8, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    move-object v0, p1

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    const/4 v0, 0x0

    aget v0, v10, v0

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_State:I

    iput-object p1, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/htc/gl/resource/Texture;->s_LastLoadTime:J

    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_4
    iget v0, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    monitor-enter p0

    const/16 v0, 0xde1

    :try_start_4
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0xde1

    iget v1, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/high16 v2, 0x4604

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_State:I

    iput-object p1, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/htc/gl/resource/Texture;->s_LastLoadTime:J

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_5
    :goto_2
    iget v0, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    invoke-interface {p1, v11, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    invoke-interface {p1, v11}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_7

    monitor-enter p0

    const/16 v0, 0xde1

    :try_start_6
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0xde1

    iget v1, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/high16 v2, 0x4604

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    iget v4, p0, Lcom/htc/gl/resource/Texture;->mIntDataWidth:I

    iget v5, p0, Lcom/htc/gl/resource/Texture;->mIntDataHeight:I

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    iget-object v9, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    move-object v0, p1

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_State:I

    iput-object p1, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/htc/gl/resource/Texture;->s_LastLoadTime:J

    monitor-exit p0

    goto :goto_2

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    monitor-enter p0

    const/16 v0, 0xde1

    :try_start_7
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0xde1

    iget v1, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/high16 v2, 0x4604

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const v3, 0x8c93

    iget v4, p0, Lcom/htc/gl/resource/Texture;->mRawDataWidth:I

    iget v5, p0, Lcom/htc/gl/resource/Texture;->mRawDataHeight:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/gl/resource/Texture;->mRawDataSize:I

    iget-object v8, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    move-object v0, p1

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_State:I

    iput-object p1, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/htc/gl/resource/Texture;->s_LastLoadTime:J

    monitor-exit p0

    goto/16 :goto_2

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public unLoad()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_State:I

    invoke-direct {p0}, Lcom/htc/gl/resource/Texture;->clear()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/gl/resource/Texture;->clearGL(Z)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

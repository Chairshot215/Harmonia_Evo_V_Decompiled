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

    .prologue
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/htc/gl/resource/Texture;->s_LastLoadTime:J

    .line 47
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/htc/gl/resource/Texture;->DELAYLOADTIME:J

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/gl/resource/Texture;->s_InstanceLog:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_State:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    .line 33
    iput-object v2, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    .line 34
    iput-object v2, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    .line 37
    iput-object v2, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    .line 38
    iput v1, p0, Lcom/htc/gl/resource/Texture;->mRawDataWidth:I

    .line 39
    iput v1, p0, Lcom/htc/gl/resource/Texture;->mRawDataHeight:I

    .line 40
    iput v1, p0, Lcom/htc/gl/resource/Texture;->mRawDataSize:I

    .line 42
    iput v1, p0, Lcom/htc/gl/resource/Texture;->mIntDataWidth:I

    .line 43
    iput v1, p0, Lcom/htc/gl/resource/Texture;->mIntDataHeight:I

    .line 49
    iput-object v2, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bmp"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_State:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    .line 33
    iput-object v2, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    .line 34
    iput-object v2, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    .line 37
    iput-object v2, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    .line 38
    iput v1, p0, Lcom/htc/gl/resource/Texture;->mRawDataWidth:I

    .line 39
    iput v1, p0, Lcom/htc/gl/resource/Texture;->mRawDataHeight:I

    .line 40
    iput v1, p0, Lcom/htc/gl/resource/Texture;->mRawDataSize:I

    .line 42
    iput v1, p0, Lcom/htc/gl/resource/Texture;->mIntDataWidth:I

    .line 43
    iput v1, p0, Lcom/htc/gl/resource/Texture;->mIntDataHeight:I

    .line 49
    iput-object v2, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    .line 70
    invoke-virtual {p0, p1}, Lcom/htc/gl/resource/Texture;->load(Landroid/graphics/Bitmap;)V

    .line 71
    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    iput-object v1, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 143
    iput-object v1, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 149
    iput-object v1, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    .line 151
    :cond_2
    return-void
.end method

.method private clearGL(Z)V
    .locals 5
    .parameter "deferClear"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 110
    iget-object v1, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    if-eq v1, v2, :cond_0

    .line 112
    new-array v0, v4, [I

    .line 113
    .local v0, array:[I
    iget v1, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    aput v1, v0, v3

    .line 115
    iget-object v1, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v4, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    .line 128
    iput v2, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    .line 130
    .end local v0           #array:[I
    :cond_0
    return-void
.end method


# virtual methods
.method public getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 446
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 448
    .local v1, is:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 450
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 453
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 458
    :goto_0
    return-object v0

    .line 452
    :catchall_0
    move-exception v2

    .line 453
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 456
    :goto_1
    throw v2

    .line 454
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public load(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/htc/gl/resource/Texture;->unLoad()V

    .line 77
    iput-object p1, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    .line 78
    return-void
.end method

.method public load(Ljava/nio/ByteBuffer;III)V
    .locals 0
    .parameter "rawdata"
    .parameter "width"
    .parameter "height"
    .parameter "size"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/htc/gl/resource/Texture;->unLoad()V

    .line 91
    iput-object p1, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    .line 92
    iput p2, p0, Lcom/htc/gl/resource/Texture;->mRawDataWidth:I

    .line 93
    iput p3, p0, Lcom/htc/gl/resource/Texture;->mRawDataHeight:I

    .line 94
    iput p4, p0, Lcom/htc/gl/resource/Texture;->mRawDataSize:I

    .line 95
    return-void
.end method

.method public load(Ljava/nio/IntBuffer;II)V
    .locals 0
    .parameter "intbuffer"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/htc/gl/resource/Texture;->unLoad()V

    .line 83
    iput-object p1, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    .line 84
    iput p2, p0, Lcom/htc/gl/resource/Texture;->mIntDataWidth:I

    .line 85
    iput p3, p0, Lcom/htc/gl/resource/Texture;->mIntDataHeight:I

    .line 86
    return-void
.end method

.method public setTextureParameters(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .parameter "gl"

    .prologue
    const/4 v1, 0x1

    const/16 v11, 0xde1

    .line 155
    invoke-interface {p1, v11}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 157
    iget v0, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    if-gez v0, :cond_4

    .line 159
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 160
    new-array v10, v1, [I

    .line 162
    .local v10, texture:[I
    monitor-enter p0

    .line 163
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v0, v10, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 164
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 166
    const/16 v0, 0xde1

    const/4 v1, 0x0

    aget v1, v10, v1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 168
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 171
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 174
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 177
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 180
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/high16 v2, 0x4604

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 183
    const/16 v0, 0xde1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 184
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 186
    const/4 v0, 0x0

    aget v0, v10, v0

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    .line 188
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_State:I

    .line 189
    iput-object p1, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/htc/gl/resource/Texture;->s_LastLoadTime:J

    .line 191
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    .end local v10           #texture:[I
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    if-ltz v0, :cond_1

    .line 442
    :cond_1
    :goto_1
    return-void

    .line 191
    .restart local v10       #texture:[I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 205
    .end local v10           #texture:[I
    :cond_2
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_3

    .line 207
    new-array v10, v1, [I

    .line 209
    .restart local v10       #texture:[I
    monitor-enter p0

    .line 211
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p1, v0, v10, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 212
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 214
    const/16 v0, 0xde1

    const/4 v1, 0x0

    aget v1, v10, v1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 216
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 219
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 222
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 225
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 228
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/high16 v2, 0x4604

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 232
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

    .line 234
    const/4 v0, 0x0

    aget v0, v10, v0

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    .line 235
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    .line 237
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_State:I

    .line 238
    iput-object p1, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/htc/gl/resource/Texture;->s_LastLoadTime:J

    .line 240
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 251
    .end local v10           #texture:[I
    :cond_3
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 253
    new-array v10, v1, [I

    .line 255
    .restart local v10       #texture:[I
    monitor-enter p0

    .line 257
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_3
    invoke-interface {p1, v0, v10, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 258
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 260
    const/16 v0, 0xde1

    const/4 v1, 0x0

    aget v1, v10, v1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 262
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 265
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 268
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 271
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 274
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/high16 v2, 0x4604

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 279
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

    .line 284
    const/4 v0, 0x0

    aget v0, v10, v0

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    .line 285
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    .line 287
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_State:I

    .line 288
    iput-object p1, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/htc/gl/resource/Texture;->s_LastLoadTime:J

    .line 290
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 316
    .end local v10           #texture:[I
    :cond_4
    iget v0, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    if-ltz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 320
    monitor-enter p0

    .line 322
    const/16 v0, 0xde1

    :try_start_4
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 324
    const/16 v0, 0xde1

    iget v1, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 326
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 329
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 332
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 335
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 338
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/high16 v2, 0x4604

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 341
    const/16 v0, 0xde1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 342
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gl/resource/Texture;->m_Bitmap:Landroid/graphics/Bitmap;

    .line 345
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_State:I

    .line 346
    iput-object p1, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/htc/gl/resource/Texture;->s_LastLoadTime:J

    .line 348
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 420
    :cond_5
    :goto_2
    iget v0, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    invoke-interface {p1, v11, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 421
    invoke-interface {p1, v11}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto/16 :goto_1

    .line 348
    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 351
    :cond_6
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_7

    .line 353
    monitor-enter p0

    .line 355
    const/16 v0, 0xde1

    :try_start_6
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 357
    const/16 v0, 0xde1

    iget v1, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 359
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 362
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 365
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 368
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 371
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/high16 v2, 0x4604

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 374
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

    .line 376
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gl/resource/Texture;->mIntData:Ljava/nio/IntBuffer;

    .line 378
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_State:I

    .line 379
    iput-object p1, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/htc/gl/resource/Texture;->s_LastLoadTime:J

    .line 381
    monitor-exit p0

    goto :goto_2

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    .line 382
    :cond_7
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 383
    monitor-enter p0

    .line 385
    const/16 v0, 0xde1

    :try_start_7
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 387
    const/16 v0, 0xde1

    iget v1, p0, Lcom/htc/gl/resource/Texture;->m_ID:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 389
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 392
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 395
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 398
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x46240400

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 401
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/high16 v2, 0x4604

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 405
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

    .line 410
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 412
    iget-object v0, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gl/resource/Texture;->mRawData:Ljava/nio/ByteBuffer;

    .line 414
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_State:I

    .line 415
    iput-object p1, p0, Lcom/htc/gl/resource/Texture;->m_GL:Ljavax/microedition/khronos/opengles/GL10;

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/htc/gl/resource/Texture;->s_LastLoadTime:J

    .line 417
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

    .prologue
    .line 100
    monitor-enter p0

    .line 102
    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/htc/gl/resource/Texture;->m_State:I

    .line 103
    invoke-direct {p0}, Lcom/htc/gl/resource/Texture;->clear()V

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/gl/resource/Texture;->clearGL(Z)V

    .line 105
    monitor-exit p0

    .line 107
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

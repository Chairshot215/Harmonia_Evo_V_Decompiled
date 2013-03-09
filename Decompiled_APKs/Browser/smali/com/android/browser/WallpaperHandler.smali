.class public Lcom/android/browser/WallpaperHandler;
.super Ljava/lang/Thread;
.source "WallpaperHandler.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final BUFFER_SIZE:I = 0x20000

.field private static final LOGTAG:Ljava/lang/String; = "WallpaperHandler"


# instance fields
.field private mCanceled:Z

.field private mContext:Landroid/content/Context;

.field private mUrl:Ljava/lang/String;

.field private mWallpaperProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "url"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/WallpaperHandler;->mCanceled:Z

    .line 55
    iput-object p1, p0, Lcom/android/browser/WallpaperHandler;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/browser/WallpaperHandler;->mUrl:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private openStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 184
    .local v1, inputStream:Ljava/io/InputStream;
    iget-object v3, p0, Lcom/android/browser/WallpaperHandler;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/browser/DataUri;->isDataUri(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    new-instance v0, Lcom/android/browser/DataUri;

    iget-object v3, p0, Lcom/android/browser/WallpaperHandler;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/android/browser/DataUri;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, dataUri:Lcom/android/browser/DataUri;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .end local v1           #inputStream:Ljava/io/InputStream;
    invoke-virtual {v0}, Lcom/android/browser/DataUri;->getData()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 191
    .end local v0           #dataUri:Lcom/android/browser/DataUri;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 188
    :cond_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/android/browser/WallpaperHandler;->mUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/WallpaperHandler;->mCanceled:Z

    .line 62
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 66
    iget-object v0, p0, Lcom/android/browser/WallpaperHandler;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/WallpaperHandler;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    .line 71
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/browser/WallpaperHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    .line 72
    iget-object v0, p0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/browser/WallpaperHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0150

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 76
    iget-object v0, p0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 77
    iget-object v0, p0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 78
    invoke-virtual {p0}, Lcom/android/browser/WallpaperHandler;->start()V

    .line 80
    :cond_0
    return v3
.end method

.method public run()V
    .locals 23

    .prologue
    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WallpaperHandler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v18

    .line 86
    .local v18, wm:Landroid/app/WallpaperManager;
    invoke-virtual/range {v18 .. v18}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 87
    .local v13, oldWallpaper:Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 95
    .local v9, inputstream:Ljava/io/InputStream;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/WallpaperHandler;->openStream()Ljava/io/InputStream;

    move-result-object v9

    .line 96
    if-eqz v9, :cond_3

    .line 97
    invoke-virtual {v9}, Ljava/io/InputStream;->markSupported()Z

    move-result v19

    if-nez v19, :cond_0

    .line 98
    new-instance v10, Ljava/io/BufferedInputStream;

    const/high16 v19, 0x2

    move/from16 v0, v19

    invoke-direct {v10, v9, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local v9           #inputstream:Ljava/io/InputStream;
    .local v10, inputstream:Ljava/io/InputStream;
    move-object v9, v10

    .line 100
    .end local v10           #inputstream:Ljava/io/InputStream;
    .restart local v9       #inputstream:Ljava/io/InputStream;
    :cond_0
    const/high16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/io/InputStream;->mark(I)V

    .line 101
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 102
    .local v14, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 105
    new-instance v19, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 107
    invoke-virtual/range {v18 .. v18}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v12

    .line 108
    .local v12, maxWidth:I
    invoke-virtual/range {v18 .. v18}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v11

    .line 110
    .local v11, maxHeight:I
    int-to-double v0, v12

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x3ff4

    mul-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v12, v0

    .line 111
    int-to-double v0, v11

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x3ff4

    mul-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v11, v0

    .line 112
    iget v5, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 113
    .local v5, bmWidth:I
    iget v4, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 115
    .local v4, bmHeight:I
    const/4 v15, 0x1

    .line 116
    .local v15, scale:I
    :goto_0
    if-gt v5, v12, :cond_1

    if-le v4, v11, :cond_2

    .line 117
    :cond_1
    shl-int/lit8 v15, v15, 0x1

    .line 118
    shr-int/lit8 v5, v5, 0x1

    .line 119
    shr-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 121
    :cond_2
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 122
    iput v15, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    :goto_1
    const/16 v19, 0x0

    :try_start_2
    move-object/from16 v0, v19

    invoke-static {v9, v0, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 133
    .local v16, scaledWallpaper:Landroid/graphics/Bitmap;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 141
    .end local v4           #bmHeight:I
    .end local v5           #bmWidth:I
    .end local v11           #maxHeight:I
    .end local v12           #maxWidth:I
    .end local v14           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v15           #scale:I
    .end local v16           #scaledWallpaper:Landroid/graphics/Bitmap;
    :cond_3
    if-eqz v9, :cond_4

    .line 143
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 150
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/WallpaperHandler;->mCanceled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 154
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    .line 155
    .local v17, width:I
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 156
    .local v8, height:I
    sget-object v19, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 157
    .local v3, bm:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 158
    .local v6, canvas:Landroid/graphics/Canvas;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v13, v0, v1, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    invoke-virtual {v13, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 162
    :try_start_4
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 166
    :goto_3
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/WallpaperHandler;->mCanceled:Z

    .line 169
    .end local v3           #bm:Landroid/graphics/Bitmap;
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v8           #height:I
    .end local v17           #width:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->dismiss()V

    .line 172
    :cond_6
    return-void

    .line 125
    .restart local v4       #bmHeight:I
    .restart local v5       #bmWidth:I
    .restart local v11       #maxHeight:I
    .restart local v12       #maxWidth:I
    .restart local v14       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v15       #scale:I
    :catch_0
    move-exception v7

    .line 128
    .local v7, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/WallpaperHandler;->openStream()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v9

    goto :goto_1

    .line 135
    .end local v4           #bmHeight:I
    .end local v5           #bmWidth:I
    .end local v7           #e:Ljava/io/IOException;
    .end local v11           #maxHeight:I
    .end local v12           #maxWidth:I
    .end local v14           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v15           #scale:I
    :catch_1
    move-exception v7

    .line 136
    .restart local v7       #e:Ljava/io/IOException;
    :try_start_6
    const-string v19, "WallpaperHandler"

    const-string v20, "Unable to set new wallpaper"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/WallpaperHandler;->mCanceled:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 141
    if-eqz v9, :cond_4

    .line 143
    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 144
    :catch_2
    move-exception v19

    goto :goto_2

    .line 141
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v19

    if-eqz v9, :cond_7

    .line 143
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 146
    :cond_7
    :goto_4
    throw v19

    .line 163
    .restart local v3       #bm:Landroid/graphics/Bitmap;
    .restart local v6       #canvas:Landroid/graphics/Canvas;
    .restart local v8       #height:I
    .restart local v17       #width:I
    :catch_3
    move-exception v7

    .line 164
    .restart local v7       #e:Ljava/io/IOException;
    const-string v19, "WallpaperHandler"

    const-string v20, "Unable to restore old wallpaper."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 144
    .end local v3           #bm:Landroid/graphics/Bitmap;
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v7           #e:Ljava/io/IOException;
    .end local v8           #height:I
    .end local v17           #width:I
    :catch_4
    move-exception v19

    goto/16 :goto_2

    :catch_5
    move-exception v20

    goto :goto_4
.end method

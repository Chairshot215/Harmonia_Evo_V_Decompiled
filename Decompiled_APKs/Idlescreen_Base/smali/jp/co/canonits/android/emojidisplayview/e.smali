.class final Ljp/co/canonits/android/emojidisplayview/e;
.super Ljava/lang/Thread;


# static fields
.field private static a:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Ljp/co/canonits/android/emojidisplayview/e;->a:Ljava/util/LinkedList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;)V
    .locals 2

    sget-object v1, Ljp/co/canonits/android/emojidisplayview/e;->a:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljp/co/canonits/android/emojidisplayview/e;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 6

    :goto_0
    sget-object v0, Ljp/co/canonits/android/emojidisplayview/e;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    sget-object v2, Ljp/co/canonits/android/emojidisplayview/e;->a:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    sget-object v0, Ljp/co/canonits/android/emojidisplayview/e;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;

    if-nez v0, :cond_1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    new-instance v1, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

    invoke-direct {v1}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;-><init>()V

    invoke-static {v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->b(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->read(Ljava/io/InputStream;)I

    iget v3, v1, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->a:I

    invoke-static {v0, v3}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;I)V

    iget v3, v1, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->b:I

    invoke-static {v0, v3}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->b(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;I)V

    invoke-static {v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->c(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;)I

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->d(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;)I

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->b(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v0, v4}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;I)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->b(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;I)V

    invoke-static {v0, v3}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;Landroid/graphics/Bitmap;)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    :try_start_3
    invoke-static {v0}, Ljp/co/canonits/android/emojidisplayview/d;->a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;)V

    invoke-static {v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Ljp/co/canonits/android/emojidisplayview/d;

    invoke-direct {v3}, Ljp/co/canonits/android/emojidisplayview/d;-><init>()V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->postInvalidate()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;J)V

    :goto_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_4
    :try_start_4
    invoke-static {v0, v1}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-static {v0}, Ljp/co/canonits/android/emojidisplayview/d;->a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;)V

    invoke-static {v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Ljp/co/canonits/android/emojidisplayview/d;

    invoke-direct {v3}, Ljp/co/canonits/android/emojidisplayview/d;-><init>()V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->postInvalidate()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_6
    const-string v3, "EmojiGifView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_7
    invoke-static {v0}, Ljp/co/canonits/android/emojidisplayview/d;->a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;)V

    invoke-static {v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Ljp/co/canonits/android/emojidisplayview/d;

    invoke-direct {v4}, Ljp/co/canonits/android/emojidisplayview/d;-><init>()V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->postInvalidate()V

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;J)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.class final Ljp/co/canonits/android/emojidisplayview/b;
.super Ljava/lang/Thread;


# static fields
.field private static a:Ljava/util/LinkedList;

.field private static b:Ljava/util/LinkedList;

.field private static c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Ljp/co/canonits/android/emojidisplayview/b;->a:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Ljp/co/canonits/android/emojidisplayview/b;->b:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljp/co/canonits/android/emojidisplayview/b;->c:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static a(ILjava/io/InputStream;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "InputStream is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v1, Ljp/co/canonits/android/emojidisplayview/b;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljp/co/canonits/android/emojidisplayview/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljp/co/canonits/android/emojidisplayview/b;->b:Ljava/util/LinkedList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

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
    .locals 5

    sget-object v0, Ljp/co/canonits/android/emojidisplayview/b;->a:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    sget-object v0, Ljp/co/canonits/android/emojidisplayview/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Ljp/co/canonits/android/emojidisplayview/b;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Ljp/co/canonits/android/emojidisplayview/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    sget-object v1, Ljp/co/canonits/android/emojidisplayview/b;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v2, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

    invoke-direct {v2}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;-><init>()V

    invoke-virtual {v2, v0}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->read(Ljava/io/InputStream;)I

    invoke-static {}, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->a()I

    move-result v3

    invoke-virtual {v2}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->getFrameCount()I

    move-result v4

    rem-int/2addr v3, v4

    if-eqz v3, :cond_2

    invoke-static {}, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->a()I

    move-result v3

    invoke-virtual {v2}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->getFrameCount()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-static {v3}, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->a(I)V

    :cond_2
    invoke-static {}, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->b()Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {}, Ljp/co/canonits/android/emojidisplayview/EmojiGifSpan;->b()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v3

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_1
    throw v1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

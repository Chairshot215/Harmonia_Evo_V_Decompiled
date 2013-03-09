.class final Ljp/co/canonits/android/emojidisplayview/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Ljp/co/canonits/android/emojidisplayview/d;->a:Ljava/util/LinkedList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;)V
    .locals 2

    sget-object v1, Ljp/co/canonits/android/emojidisplayview/d;->a:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljp/co/canonits/android/emojidisplayview/d;->a:Ljava/util/LinkedList;

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
    .locals 4

    sget-object v1, Ljp/co/canonits/android/emojidisplayview/d;->a:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljp/co/canonits/android/emojidisplayview/d;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-static {v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->c(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;)I

    move-result v2

    invoke-static {v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->d(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

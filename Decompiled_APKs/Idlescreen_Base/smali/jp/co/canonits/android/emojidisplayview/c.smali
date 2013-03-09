.class final Ljp/co/canonits/android/emojidisplayview/c;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;


# direct methods
.method constructor <init>(Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;)V
    .locals 0

    iput-object p1, p0, Ljp/co/canonits/android/emojidisplayview/c;->a:Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/c;->a:Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;

    invoke-static {v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a(Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/c;->a:Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;

    invoke-static {v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->b(Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/c;->a:Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;

    invoke-virtual {v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->invalidate()V

    :cond_0
    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/c;->a:Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;

    invoke-static {v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->c(Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/c;->a:Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a(I)V

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/c;->a:Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->a(Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;Z)V

    :cond_1
    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/c;->a:Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;

    invoke-static {v0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->d(Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ljp/co/canonits/android/emojidisplayview/c;->a:Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;

    invoke-static {v1}, Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;->d(Ljp/co/canonits/android/emojidisplayview/EmojiGifTextView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

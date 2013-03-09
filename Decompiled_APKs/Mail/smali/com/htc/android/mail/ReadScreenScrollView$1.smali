.class Lcom/htc/android/mail/ReadScreenScrollView$1;
.super Ljava/lang/Object;
.source "ReadScreenScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreenScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreenScrollView;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreenScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreenScrollView$1;->this$0:Lcom/htc/android/mail/ReadScreenScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 561
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreenScrollView$1;->this$0:Lcom/htc/android/mail/ReadScreenScrollView;

    iget v5, v5, Lcom/htc/android/mail/ReadScreenScrollView;->mLastMotionX:F

    iget-object v6, p0, Lcom/htc/android/mail/ReadScreenScrollView$1;->this$0:Lcom/htc/android/mail/ReadScreenScrollView;

    #getter for: Lcom/htc/android/mail/ReadScreenScrollView;->mLastMotionY:F
    invoke-static {v6}, Lcom/htc/android/mail/ReadScreenScrollView;->access$000(Lcom/htc/android/mail/ReadScreenScrollView;)F

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 564
    .local v8, ev:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreenScrollView$1;->this$0:Lcom/htc/android/mail/ReadScreenScrollView;

    #getter for: Lcom/htc/android/mail/ReadScreenScrollView;->mWebView:Lcom/htc/android/mail/HtcWebView;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreenScrollView;->access$100(Lcom/htc/android/mail/ReadScreenScrollView;)Lcom/htc/android/mail/HtcWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreenScrollView$1;->this$0:Lcom/htc/android/mail/ReadScreenScrollView;

    #getter for: Lcom/htc/android/mail/ReadScreenScrollView;->mWebView:Lcom/htc/android/mail/HtcWebView;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreenScrollView;->access$100(Lcom/htc/android/mail/ReadScreenScrollView;)Lcom/htc/android/mail/HtcWebView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/htc/android/mail/HtcWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreenScrollView$1;->this$0:Lcom/htc/android/mail/ReadScreenScrollView;

    #getter for: Lcom/htc/android/mail/ReadScreenScrollView;->mEditableWebView:Lcom/htc/android/mail/HtcEditableWebView;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreenScrollView;->access$200(Lcom/htc/android/mail/ReadScreenScrollView;)Lcom/htc/android/mail/HtcEditableWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreenScrollView$1;->this$0:Lcom/htc/android/mail/ReadScreenScrollView;

    #getter for: Lcom/htc/android/mail/ReadScreenScrollView;->mEditableWebView:Lcom/htc/android/mail/HtcEditableWebView;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreenScrollView;->access$200(Lcom/htc/android/mail/ReadScreenScrollView;)Lcom/htc/android/mail/HtcEditableWebView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/htc/android/mail/HtcEditableWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

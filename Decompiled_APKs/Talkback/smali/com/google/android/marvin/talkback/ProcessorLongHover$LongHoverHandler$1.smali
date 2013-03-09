.class Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler$1;
.super Ljava/lang/Object;
.source "ProcessorLongHover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler$1;->this$1:Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 183
    iget-object v3, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler$1;->this$1:Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;

    #getter for: Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->mPendingLongHoverEvent:Landroid/view/accessibility/AccessibilityEvent;
    invoke-static {v3}, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->access$1(Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 185
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-static {v0}, Lcom/googlecode/eyesfree/compat/view/accessibility/AccessibilityEventCompatUtils;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 190
    .local v1, eventClone:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v3, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler$1;->this$1:Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 192
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler$1;->this$1:Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4, v5}, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

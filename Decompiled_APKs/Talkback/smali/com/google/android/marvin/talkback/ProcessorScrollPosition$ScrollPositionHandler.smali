.class Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;
.super Lcom/google/android/marvin/utils/WeakReferenceHandler;
.source "ProcessorScrollPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/ProcessorScrollPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollPositionHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/marvin/utils/WeakReferenceHandler",
        "<",
        "Lcom/google/android/marvin/talkback/ProcessorScrollPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELAY_SCROLL_TIMEOUT:J = 0x3e8L

.field private static final SCROLL_TIMEOUT:I = 0x1


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/talkback/ProcessorScrollPosition;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/google/android/marvin/utils/WeakReferenceHandler;-><init>(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method static synthetic access$1(Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;->cancelScrollTimeout()V

    return-void
.end method

.method static synthetic access$2(Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;->startScrollTimeout(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private cancelScrollTimeout()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;->removeMessages(I)V

    .line 143
    return-void
.end method

.method private startScrollTimeout(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 132
    invoke-static {p1}, Lcom/googlecode/eyesfree/compat/view/accessibility/AccessibilityEventCompatUtils;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 133
    .local v0, eventClone:Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 135
    .local v1, msg:Landroid/os/Message;
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 136
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;Lcom/google/android/marvin/talkback/ProcessorScrollPosition;)V
    .locals 2
    .parameter "msg"
    .parameter "parent"

    .prologue
    .line 117
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 120
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    #calls: Lcom/google/android/marvin/talkback/ProcessorScrollPosition;->handleScrollTimeout(Landroid/view/accessibility/AccessibilityEvent;)V
    invoke-static {p2, v0}, Lcom/google/android/marvin/talkback/ProcessorScrollPosition;->access$0(Lcom/google/android/marvin/talkback/ProcessorScrollPosition;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 121
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lcom/google/android/marvin/talkback/ProcessorScrollPosition;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;->handleMessage(Landroid/os/Message;Lcom/google/android/marvin/talkback/ProcessorScrollPosition;)V

    return-void
.end method

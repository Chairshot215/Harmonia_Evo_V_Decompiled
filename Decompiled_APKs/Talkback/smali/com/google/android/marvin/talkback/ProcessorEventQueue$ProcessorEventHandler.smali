.class Lcom/google/android/marvin/talkback/ProcessorEventQueue$ProcessorEventHandler;
.super Lcom/google/android/marvin/utils/WeakReferenceHandler;
.source "ProcessorEventQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/ProcessorEventQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessorEventHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/marvin/utils/WeakReferenceHandler",
        "<",
        "Lcom/google/android/marvin/talkback/ProcessorEventQueue;",
        ">;"
    }
.end annotation


# static fields
.field private static final TIMEOUT_SPEAK:J = 0x0L

.field private static final WHAT_SPEAK:I = 0x1


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/talkback/ProcessorEventQueue;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/google/android/marvin/utils/WeakReferenceHandler;-><init>(Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method private processAllEvents(Lcom/google/android/marvin/talkback/ProcessorEventQueue;)V
    .locals 4
    .parameter "parent"

    .prologue
    .line 222
    :goto_0
    #getter for: Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mEventQueue:Lcom/google/android/marvin/talkback/EventQueue;
    invoke-static {p1}, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->access$0(Lcom/google/android/marvin/talkback/ProcessorEventQueue;)Lcom/google/android/marvin/talkback/EventQueue;

    move-result-object v2

    monitor-enter v2

    .line 223
    :try_start_0
    #getter for: Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mEventQueue:Lcom/google/android/marvin/talkback/EventQueue;
    invoke-static {p1}, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->access$0(Lcom/google/android/marvin/talkback/ProcessorEventQueue;)Lcom/google/android/marvin/talkback/EventQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/marvin/talkback/EventQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    monitor-exit v2

    return-void

    .line 227
    :cond_0
    #getter for: Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mEventQueue:Lcom/google/android/marvin/talkback/EventQueue;
    invoke-static {p1}, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->access$0(Lcom/google/android/marvin/talkback/ProcessorEventQueue;)Lcom/google/android/marvin/talkback/EventQueue;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/marvin/talkback/EventQueue;->remove(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 222
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    #calls: Lcom/google/android/marvin/talkback/ProcessorEventQueue;->processAndRecycleEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    invoke-static {p1, v0}, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->access$1(Lcom/google/android/marvin/talkback/ProcessorEventQueue;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 222
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;Lcom/google/android/marvin/talkback/ProcessorEventQueue;)V
    .locals 1
    .parameter "message"
    .parameter "parent"

    .prologue
    .line 208
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 210
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/google/android/marvin/talkback/ProcessorEventQueue$ProcessorEventHandler;->processAllEvents(Lcom/google/android/marvin/talkback/ProcessorEventQueue;)V

    goto :goto_0

    .line 208
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
    check-cast p2, Lcom/google/android/marvin/talkback/ProcessorEventQueue;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/marvin/talkback/ProcessorEventQueue$ProcessorEventHandler;->handleMessage(Landroid/os/Message;Lcom/google/android/marvin/talkback/ProcessorEventQueue;)V

    return-void
.end method

.method public postSpeak(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 241
    invoke-virtual {p0, v1}, Lcom/google/android/marvin/talkback/ProcessorEventQueue$ProcessorEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 243
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/google/android/marvin/talkback/ProcessorEventQueue$ProcessorEventHandler;->removeMessages(I)V

    .line 244
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/ProcessorEventQueue$ProcessorEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 245
    return-void
.end method

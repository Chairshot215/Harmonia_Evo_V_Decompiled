.class final Lcom/android/commands/monkey/MonkeySourceNetworkViews$1;
.super Landroid/accessibilityservice/IEventListener$Stub;
.source "MonkeySourceNetworkViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getConnection()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/accessibilityservice/IEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    const-string v0, "MonkeyViews"

    const-string v1, "Accessibility Event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const-class v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onInterrupt()V
    .locals 0

    return-void
.end method

.method public setConnection(Landroid/accessibilityservice/IAccessibilityServiceConnection;I)V
    .locals 2

    sput p2, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sConnectionId:I

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V

    :goto_0
    const-class v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.class Lcom/google/android/marvin/talkback/EventQueue;
.super Ljava/util/ArrayList;
.source "EventQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Landroid/view/accessibility/AccessibilityEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final EVENT_QUEUE_MAX_SIZE:I = 0xa


# instance fields
.field private mNonNotificationEventCount:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method private static isNotificationEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "location"
    .parameter "object"

    .prologue
    .line 55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/marvin/talkback/EventQueue;->add(ILandroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public add(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 40
    invoke-static {p1}, Lcom/googlecode/eyesfree/compat/view/accessibility/AccessibilityEventCompatUtils;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 42
    .local v0, clone:Landroid/view/accessibility/AccessibilityEvent;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/EventQueue;->isNotificationEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    iget v2, p0, Lcom/google/android/marvin/talkback/EventQueue;->mNonNotificationEventCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/marvin/talkback/EventQueue;->mNonNotificationEventCount:I

    .line 46
    :cond_0
    invoke-super {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 48
    .local v1, result:Z
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/EventQueue;->enforceRelevantEventSize()V

    .line 50
    return v1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {p0, p1}, Lcom/google/android/marvin/talkback/EventQueue;->add(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Landroid/view/accessibility/AccessibilityEvent;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Landroid/view/accessibility/AccessibilityEvent;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/EventQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/accessibility/AccessibilityEvent;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/marvin/talkback/EventQueue;->mNonNotificationEventCount:I

    .line 98
    return-void

    .line 89
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    .line 92
    .local v1, next:Landroid/view/accessibility/AccessibilityEvent;
    invoke-static {v1}, Lcom/google/android/marvin/talkback/EventQueue;->isNotificationEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public enforceRelevantEventSize()V
    .locals 4

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/EventQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 108
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/accessibility/AccessibilityEvent;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/EventQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    iget v2, p0, Lcom/google/android/marvin/talkback/EventQueue;->mNonNotificationEventCount:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_2

    .line 118
    :cond_1
    return-void

    .line 110
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    .line 113
    .local v1, next:Landroid/view/accessibility/AccessibilityEvent;
    invoke-static {v1}, Lcom/google/android/marvin/talkback/EventQueue;->isNotificationEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    iget v2, p0, Lcom/google/android/marvin/talkback/EventQueue;->mNonNotificationEventCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/marvin/talkback/EventQueue;->mNonNotificationEventCount:I

    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public remove(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2
    .parameter "location"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/google/android/marvin/talkback/EventQueue;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 72
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/marvin/talkback/EventQueue;->isNotificationEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    iget v1, p0, Lcom/google/android/marvin/talkback/EventQueue;->mNonNotificationEventCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/marvin/talkback/EventQueue;->mNonNotificationEventCount:I

    .line 76
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    return-object v1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/marvin/talkback/EventQueue;->remove(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

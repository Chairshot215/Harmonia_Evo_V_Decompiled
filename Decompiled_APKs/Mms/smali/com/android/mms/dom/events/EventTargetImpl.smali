.class public Lcom/android/mms/dom/events/EventTargetImpl;
.super Ljava/lang/Object;
.source "EventTargetImpl.java"

# interfaces
.implements Lorg/w3c/dom/events/EventTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EventTargetImpl"


# instance fields
.field private mListenerEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNodeTarget:Lorg/w3c/dom/events/EventTarget;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/events/EventTarget;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mNodeTarget:Lorg/w3c/dom/events/EventTarget;

    .line 50
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 2
    .parameter "type"
    .parameter "listener"
    .parameter "useCapture"

    .prologue
    .line 53
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/dom/events/EventTargetImpl;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 60
    iget-object v0, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;-><init>(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public dispatchEvent(Lorg/w3c/dom/events/Event;)Z
    .locals 7
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/events/EventException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 68
    move-object v1, p1

    check-cast v1, Lcom/android/mms/dom/events/EventImpl;

    .line 70
    .local v1, eventImpl:Lcom/android/mms/dom/events/EventImpl;
    invoke-virtual {v1}, Lcom/android/mms/dom/events/EventImpl;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_0

    .line 71
    new-instance v4, Lorg/w3c/dom/events/EventException;

    const-string v5, "Event not initialized"

    invoke-direct {v4, v6, v5}, Lorg/w3c/dom/events/EventException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 73
    :cond_0
    invoke-virtual {v1}, Lcom/android/mms/dom/events/EventImpl;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/mms/dom/events/EventImpl;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    :cond_1
    new-instance v4, Lorg/w3c/dom/events/EventException;

    const-string v5, "Unspecified even type"

    invoke-direct {v4, v6, v5}, Lorg/w3c/dom/events/EventException;-><init>(SLjava/lang/String;)V

    throw v4

    .line 79
    :cond_2
    iget-object v4, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mNodeTarget:Lorg/w3c/dom/events/EventTarget;

    invoke-virtual {v1, v4}, Lcom/android/mms/dom/events/EventImpl;->setTarget(Lorg/w3c/dom/events/EventTarget;)V

    .line 89
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/android/mms/dom/events/EventImpl;->setEventPhase(S)V

    .line 90
    iget-object v4, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mNodeTarget:Lorg/w3c/dom/events/EventTarget;

    invoke-virtual {v1, v4}, Lcom/android/mms/dom/events/EventImpl;->setCurrentTarget(Lorg/w3c/dom/events/EventTarget;)V

    .line 91
    invoke-virtual {v1}, Lcom/android/mms/dom/events/EventImpl;->isPropogationStopped()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 92
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 93
    iget-object v4, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;

    .line 94
    .local v3, listenerEntry:Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;
    iget-boolean v4, v3, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mUseCapture:Z

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mType:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/mms/dom/events/EventImpl;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 97
    :try_start_0
    iget-object v4, v3, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mListener:Lorg/w3c/dom/events/EventListener;

    invoke-interface {v4, v1}, Lorg/w3c/dom/events/EventListener;->handleEvent(Lorg/w3c/dom/events/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "EventTargetImpl"

    const-string v5, "Catched EventListener exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 108
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #i:I
    .end local v3           #listenerEntry:Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/dom/events/EventImpl;->getBubbles()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 112
    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/dom/events/EventImpl;->isPreventDefault()Z

    move-result v4

    return v4
.end method

.method public removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 3
    .parameter "type"
    .parameter "listener"
    .parameter "useCapture"

    .prologue
    .line 117
    iget-object v2, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;

    .line 122
    .local v1, listenerEntry:Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;
    iget-boolean v2, v1, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mUseCapture:Z

    if-ne v2, p3, :cond_2

    iget-object v2, v1, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mListener:Lorg/w3c/dom/events/EventListener;

    if-ne v2, p2, :cond_2

    iget-object v2, v1, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    iget-object v2, p0, Lcom/android/mms/dom/events/EventTargetImpl;->mListenerEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 120
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

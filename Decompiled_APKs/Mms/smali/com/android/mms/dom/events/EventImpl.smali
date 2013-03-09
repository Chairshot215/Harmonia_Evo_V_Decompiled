.class public Lcom/android/mms/dom/events/EventImpl;
.super Ljava/lang/Object;
.source "EventImpl.java"

# interfaces
.implements Lorg/w3c/dom/events/Event;


# instance fields
.field private mCanBubble:Z

.field private mCancelable:Z

.field private mCurrentTarget:Lorg/w3c/dom/events/EventTarget;

.field private mEventPhase:S

.field private mEventType:Ljava/lang/String;

.field private mInitialized:Z

.field private mPreventDefault:Z

.field private mSeekTo:I

.field private mStopPropagation:Z

.field private mTarget:Lorg/w3c/dom/events/EventTarget;

.field private final mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/dom/events/EventImpl;->mTimeStamp:J

    return-void
.end method


# virtual methods
.method public getBubbles()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/mms/dom/events/EventImpl;->mCanBubble:Z

    return v0
.end method

.method public getCancelable()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/mms/dom/events/EventImpl;->mCancelable:Z

    return v0
.end method

.method public getCurrentTarget()Lorg/w3c/dom/events/EventTarget;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/dom/events/EventImpl;->mCurrentTarget:Lorg/w3c/dom/events/EventTarget;

    return-object v0
.end method

.method public getEventPhase()S
    .locals 1

    .prologue
    .line 59
    iget-short v0, p0, Lcom/android/mms/dom/events/EventImpl;->mEventPhase:S

    return v0
.end method

.method public getSeekTo()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/mms/dom/events/EventImpl;->mSeekTo:I

    return v0
.end method

.method public getTarget()Lorg/w3c/dom/events/EventTarget;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/mms/dom/events/EventImpl;->mTarget:Lorg/w3c/dom/events/EventTarget;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/android/mms/dom/events/EventImpl;->mTimeStamp:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/mms/dom/events/EventImpl;->mEventType:Ljava/lang/String;

    return-object v0
.end method

.method public initEvent(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "eventTypeArg"
    .parameter "canBubbleArg"
    .parameter "cancelableArg"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/mms/dom/events/EventImpl;->mEventType:Ljava/lang/String;

    .line 77
    iput-boolean p2, p0, Lcom/android/mms/dom/events/EventImpl;->mCanBubble:Z

    .line 78
    iput-boolean p3, p0, Lcom/android/mms/dom/events/EventImpl;->mCancelable:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/dom/events/EventImpl;->mInitialized:Z

    .line 80
    return-void
.end method

.method public initEvent(Ljava/lang/String;ZZI)V
    .locals 0
    .parameter "eventTypeArg"
    .parameter "canBubbleArg"
    .parameter "cancelableArg"
    .parameter "seekTo"

    .prologue
    .line 84
    iput p4, p0, Lcom/android/mms/dom/events/EventImpl;->mSeekTo:I

    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/dom/events/EventImpl;->initEvent(Ljava/lang/String;ZZ)V

    .line 86
    return-void
.end method

.method isInitialized()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/mms/dom/events/EventImpl;->mInitialized:Z

    return v0
.end method

.method isPreventDefault()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/mms/dom/events/EventImpl;->mPreventDefault:Z

    return v0
.end method

.method isPropogationStopped()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/mms/dom/events/EventImpl;->mStopPropagation:Z

    return v0
.end method

.method public preventDefault()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/dom/events/EventImpl;->mPreventDefault:Z

    .line 90
    return-void
.end method

.method setCurrentTarget(Lorg/w3c/dom/events/EventTarget;)V
    .locals 0
    .parameter "currentTarget"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/mms/dom/events/EventImpl;->mCurrentTarget:Lorg/w3c/dom/events/EventTarget;

    .line 122
    return-void
.end method

.method setEventPhase(S)V
    .locals 0
    .parameter "eventPhase"

    .prologue
    .line 117
    iput-short p1, p0, Lcom/android/mms/dom/events/EventImpl;->mEventPhase:S

    .line 118
    return-void
.end method

.method setTarget(Lorg/w3c/dom/events/EventTarget;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/mms/dom/events/EventImpl;->mTarget:Lorg/w3c/dom/events/EventTarget;

    .line 114
    return-void
.end method

.method public stopPropagation()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/dom/events/EventImpl;->mStopPropagation:Z

    .line 94
    return-void
.end method

.class Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;
.super Lcom/android/mms/dom/smil/ElementTimeImpl;
.source "SmilMediaElementImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/smil/SmilMediaElementImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilMediaElementImpl;Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-direct {p0, p2}, Lcom/android/mms/dom/smil/ElementTimeImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    return-void
.end method

.method private createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;
    .locals 4
    .parameter "eventType"

    .prologue
    const/4 v3, 0x0

    .line 42
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v2}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    .line 44
    .local v0, doc:Lorg/w3c/dom/events/DocumentEvent;
    const-string v2, "Event"

    invoke-interface {v0, v2}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v1

    .line 45
    .local v1, event:Lorg/w3c/dom/events/Event;
    invoke-interface {v1, p1, v3, v3}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    .line 52
    return-object v1
.end method

.method private createEvent(Ljava/lang/String;I)Lorg/w3c/dom/events/Event;
    .locals 4
    .parameter "eventType"
    .parameter "seekTo"

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v2}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    .line 58
    .local v0, doc:Lorg/w3c/dom/events/DocumentEvent;
    const-string v2, "Event"

    invoke-interface {v0, v2}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v1

    .line 59
    .local v1, event:Lorg/w3c/dom/events/Event;
    invoke-interface {v1, p1, v3, v3, p2}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZI)V

    .line 66
    return-object v1
.end method


# virtual methods
.method public beginElement()Z
    .locals 2

    .prologue
    .line 70
    const-string v1, "SmilMediaStart"

    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 71
    .local v0, startEvent:Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 72
    const/4 v1, 0x1

    return v1
.end method

.method public endElement()Z
    .locals 2

    .prologue
    .line 76
    const-string v1, "SmilMediaEnd"

    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 77
    .local v0, endEvent:Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 78
    const/4 v1, 0x1

    return v1
.end method

.method public getDur()F
    .locals 4

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getDur()F

    move-result v0

    .line 99
    .local v0, dur:F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v2}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, tag:Ljava/lang/String;
    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    :cond_0
    const/high16 v0, -0x4080

    .line 113
    .end local v1           #tag:Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 106
    .restart local v1       #tag:Ljava/lang/String;
    :cond_2
    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "img"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 108
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 110
    :cond_4
    const-string v2, "SmilMediaElementImpl"

    const-string v3, "Unknown media type"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getParentElementTime()Lorg/w3c/dom/smil/ElementTime;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILElement;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilParElementImpl;

    iget-object v0, v0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    return-object v0
.end method

.method public pauseElement()V
    .locals 2

    .prologue
    .line 87
    const-string v1, "SmilMediaPause"

    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 88
    .local v0, pauseEvent:Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 89
    return-void
.end method

.method public resumeElement()V
    .locals 2

    .prologue
    .line 82
    const-string v1, "SmilMediaStart"

    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 83
    .local v0, resumeEvent:Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 84
    return-void
.end method

.method public seekElement(F)V
    .locals 3
    .parameter "seekTo"

    .prologue
    .line 92
    const-string v1, "SmilMediaSeek"

    float-to-int v2, p1

    invoke-direct {p0, v1, v2}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;I)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 93
    .local v0, seekEvent:Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 94
    return-void
.end method

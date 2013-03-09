.class Lcom/android/mms/dom/smil/SmilDocumentImpl$1;
.super Lcom/android/mms/dom/smil/ElementSequentialTimeContainerImpl;
.source "SmilDocumentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/dom/smil/SmilDocumentImpl;->getBody()Lorg/w3c/dom/smil/SMILElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/dom/smil/SmilDocumentImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {p0, p2}, Lcom/android/mms/dom/smil/ElementSequentialTimeContainerImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    return-void
.end method


# virtual methods
.method public beginElement()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 226
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilDocumentImpl;

    const-string v2, "Event"

    invoke-virtual {v1, v2}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 227
    .local v0, startEvent:Lorg/w3c/dom/events/Event;
    const-string v1, "SmilDocumentStart"

    invoke-interface {v0, v1, v3, v3}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    .line 228
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 229
    const/4 v1, 0x1

    return v1
.end method

.method public endElement()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 233
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilDocumentImpl;

    const-string v2, "Event"

    invoke-virtual {v1, v2}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 234
    .local v0, endEvent:Lorg/w3c/dom/events/Event;
    const-string v1, "SimlDocumentEnd"

    invoke-interface {v0, v1, v3, v3}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    .line 235
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 236
    const/4 v1, 0x1

    return v1
.end method

.method getParentElementTime()Lorg/w3c/dom/smil/ElementTime;
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeChildren()Lorg/w3c/dom/NodeList;
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v0

    const-string v1, "par"

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILElement;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public pauseElement()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public resumeElement()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public seekElement(F)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 252
    return-void
.end method

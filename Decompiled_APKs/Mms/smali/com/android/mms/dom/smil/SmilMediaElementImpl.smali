.class public Lcom/android/mms/dom/smil/SmilMediaElementImpl;
.super Lcom/android/mms/dom/smil/SmilElementImpl;
.source "SmilMediaElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILMediaElement;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field public static final SMIL_MEDIA_END_EVENT:Ljava/lang/String; = "SmilMediaEnd"

.field public static final SMIL_MEDIA_PAUSE_EVENT:Ljava/lang/String; = "SmilMediaPause"

.field public static final SMIL_MEDIA_SEEK_EVENT:Ljava/lang/String; = "SmilMediaSeek"

.field public static final SMIL_MEDIA_START_EVENT:Ljava/lang/String; = "SmilMediaStart"

.field private static final TAG:Ljava/lang/String; = "SmilMediaElementImpl"


# instance fields
.field mElementTime:Lorg/w3c/dom/smil/ElementTime;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 1
    .parameter "owner"
    .parameter "tagName"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/mms/dom/smil/SmilElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;

    invoke-direct {v0, p0, p0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;-><init>(Lcom/android/mms/dom/smil/SmilMediaElementImpl;Lorg/w3c/dom/smil/SMILElement;)V

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    .line 128
    return-void
.end method


# virtual methods
.method public beginElement()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->beginElement()Z

    move-result v0

    return v0
.end method

.method public endElement()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->endElement()Z

    move-result v0

    return v0
.end method

.method public getAbstractAttr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "abstract"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "alt"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string v0, "author"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBegin()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getClipBegin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "clipBegin"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClipEnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string v0, "clipEnd"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "copyright"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDur()F
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getDur()F

    move-result v0

    return v0
.end method

.method public getEnd()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getFill()S
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getFill()S

    move-result v0

    return v0
.end method

.method public getFillDefault()S
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getFillDefault()S

    move-result v0

    return v0
.end method

.method public getLongdesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "longdesc"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "port"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string v0, "readIndex"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatCount()F
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getRepeatCount()F

    move-result v0

    return v0
.end method

.method public getRepeatDur()F
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getRepeatDur()F

    move-result v0

    return v0
.end method

.method public getRestart()S
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getRestart()S

    move-result v0

    return v0
.end method

.method public getRtpformat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string v0, "rtpformat"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string v0, "src"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStripRepeat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, "stripRepeat"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-string v0, "transport"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pauseElement()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->pauseElement()V

    .line 301
    return-void
.end method

.method public resumeElement()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->resumeElement()V

    .line 305
    return-void
.end method

.method public seekElement(F)V
    .locals 1
    .parameter "seekTo"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->seekElement(F)V

    .line 309
    return-void
.end method

.method public setAbstractAttr(Ljava/lang/String;)V
    .locals 1
    .parameter "abstractAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 195
    const-string v0, "abstract"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public setAlt(Ljava/lang/String;)V
    .locals 1
    .parameter "alt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 199
    const-string v0, "alt"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1
    .parameter "author"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 203
    const-string v0, "author"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public setBegin(Lorg/w3c/dom/smil/TimeList;)V
    .locals 1
    .parameter "begin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setBegin(Lorg/w3c/dom/smil/TimeList;)V

    .line 313
    return-void
.end method

.method public setClipBegin(Ljava/lang/String;)V
    .locals 1
    .parameter "clipBegin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 207
    const-string v0, "clipBegin"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public setClipEnd(Ljava/lang/String;)V
    .locals 1
    .parameter "clipEnd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 211
    const-string v0, "clipEnd"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public setCopyright(Ljava/lang/String;)V
    .locals 1
    .parameter "copyright"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 215
    const-string v0, "copyright"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public setDur(F)V
    .locals 1
    .parameter "dur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setDur(F)V

    .line 317
    return-void
.end method

.method public setEnd(Lorg/w3c/dom/smil/TimeList;)V
    .locals 1
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setEnd(Lorg/w3c/dom/smil/TimeList;)V

    .line 321
    return-void
.end method

.method public setFill(S)V
    .locals 1
    .parameter "fill"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setFill(S)V

    .line 325
    return-void
.end method

.method public setFillDefault(S)V
    .locals 1
    .parameter "fillDefault"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setFillDefault(S)V

    .line 329
    return-void
.end method

.method public setLongdesc(Ljava/lang/String;)V
    .locals 1
    .parameter "longdesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 219
    const-string v0, "longdesc"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 1
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 224
    const-string v0, "port"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public setReadIndex(Ljava/lang/String;)V
    .locals 1
    .parameter "readIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 228
    const-string v0, "readIndex"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public setRepeatCount(F)V
    .locals 1
    .parameter "repeatCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setRepeatCount(F)V

    .line 333
    return-void
.end method

.method public setRepeatDur(F)V
    .locals 1
    .parameter "repeatDur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setRepeatDur(F)V

    .line 337
    return-void
.end method

.method public setRestart(S)V
    .locals 1
    .parameter "restart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setRestart(S)V

    .line 341
    return-void
.end method

.method public setRtpformat(Ljava/lang/String;)V
    .locals 1
    .parameter "rtpformat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 232
    const-string v0, "rtpformat"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 236
    const-string v0, "src"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public setStripRepeat(Ljava/lang/String;)V
    .locals 1
    .parameter "stripRepeat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 240
    const-string v0, "stripRepeat"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 244
    const-string v0, "title"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public setTransport(Ljava/lang/String;)V
    .locals 1
    .parameter "transport"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 248
    const-string v0, "transport"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 252
    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

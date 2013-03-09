.class public Lcom/scalado/caps/Session;
.super Lcom/scalado/caps/PeerBase;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/Session$RenderIterator;
    }
.end annotation


# instance fields
.field private decoder:Lcom/scalado/caps/Decoder;

.field private filters:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList",
            "<",
            "Lcom/scalado/caps/Filter;",
            ">;"
        }
    .end annotation
.end field

.field hasActiveFilter:Z

.field private isIncompleteImage:Z

.field private listeners:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList",
            "<",
            "Lcom/scalado/caps/SessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionHandle:J

.field private properties:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Decoder;)V
    .locals 5
    .parameter "decoder"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 155
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 141
    iput-wide v3, p0, Lcom/scalado/caps/Session;->mSessionHandle:J

    .line 142
    iput-boolean v2, p0, Lcom/scalado/caps/Session;->hasActiveFilter:Z

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/scalado/caps/Session;->listeners:Ljava/util/AbstractList;

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    .line 146
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    .line 147
    iput-boolean v2, p0, Lcom/scalado/caps/Session;->isIncompleteImage:Z

    .line 156
    iput-wide v3, p0, Lcom/scalado/caps/Session;->mSessionHandle:J

    .line 157
    if-nez p1, :cond_0

    .line 160
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 162
    :cond_0
    iput-object p1, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    .line 163
    invoke-direct {p0}, Lcom/scalado/caps/Session;->nativeCreate()I

    move-result v0

    .line 164
    .local v0, error:I
    invoke-direct {p0, p1}, Lcom/scalado/caps/Session;->nativeSetDecoder(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/scalado/caps/Session;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/scalado/caps/Session;->nativeIsIncompleteImage()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/scalado/caps/Session;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/scalado/caps/Session;->isIncompleteImage:Z

    return v0
.end method

.method static synthetic access$200(Lcom/scalado/caps/Session;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/scalado/caps/Session;->sendIncompleteImage()V

    return-void
.end method

.method private applyFilters(Lcom/scalado/caps/Decoder;)V
    .locals 3
    .parameter "decoder"

    .prologue
    .line 444
    invoke-virtual {p1}, Lcom/scalado/caps/Decoder;->removeAllFilters()V

    .line 446
    iget-object v2, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/Filter;

    .line 448
    .local v0, filter:Lcom/scalado/caps/Filter;
    invoke-virtual {v0, p1}, Lcom/scalado/caps/Filter;->apply(Lcom/scalado/caps/Decoder;)V

    goto :goto_0

    .line 450
    .end local v0           #filter:Lcom/scalado/caps/Filter;
    :cond_0
    return-void
.end method

.method private applyProperties(Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "decoder"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    const-string v1, "BackgroundColor"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    const-string v1, "BackgroundColor"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/base/Color;

    invoke-virtual {p1, v0}, Lcom/scalado/caps/Decoder;->setBackgroundColor(Lcom/scalado/base/Color;)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    const-string v1, "SamplingMode"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    const-string v1, "SamplingMode"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/SamplingMode;

    invoke-virtual {p1, v0}, Lcom/scalado/caps/Decoder;->setSamplingMode(Lcom/scalado/caps/SamplingMode;)V

    .line 442
    :cond_1
    return-void
.end method

.method private native nativeAddAppData(Lcom/scalado/base/Buffer;)V
.end method

.method private native nativeAddXmpData(Lcom/scalado/base/Buffer;)V
.end method

.method private native nativeCreate()I
.end method

.method private native nativeGetCurrentImageSize(Lcom/scalado/base/Size;)I
.end method

.method private native nativeIsIncompleteImage()I
.end method

.method private native nativeSendEventSourceDataChange()V
.end method

.method private native nativeSetDecoder(Lcom/scalado/caps/Decoder;)I
.end method

.method private sendIncompleteImage()V
    .locals 3

    .prologue
    .line 453
    iget-object v2, p0, Lcom/scalado/caps/Session;->listeners:Ljava/util/AbstractList;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/SessionListener;

    .line 455
    .local v1, listener:Lcom/scalado/caps/SessionListener;
    invoke-virtual {v1}, Lcom/scalado/caps/SessionListener;->onIncompleteImage()V

    goto :goto_0

    .line 457
    .end local v1           #listener:Lcom/scalado/caps/SessionListener;
    :cond_0
    return-void
.end method

.method private sendSourceChange(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V
    .locals 3
    .parameter "oldDecoder"
    .parameter "newDecoder"

    .prologue
    .line 460
    iget-object v2, p0, Lcom/scalado/caps/Session;->listeners:Ljava/util/AbstractList;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/SessionListener;

    .line 462
    .local v1, listener:Lcom/scalado/caps/SessionListener;
    invoke-virtual {v1, p1, p2}, Lcom/scalado/caps/SessionListener;->onSourceChange(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V

    goto :goto_0

    .line 464
    .end local v1           #listener:Lcom/scalado/caps/SessionListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addAppData(Lcom/scalado/base/Buffer;)V
    .locals 0
    .parameter "appData"

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/scalado/caps/Session;->nativeAddAppData(Lcom/scalado/base/Buffer;)V

    .line 413
    return-void
.end method

.method public final addListener(Lcom/scalado/caps/SessionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->listeners:Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/scalado/caps/Session;->listeners:Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_1
    return-void
.end method

.method public addXmpData(Lcom/scalado/base/Buffer;)V
    .locals 0
    .parameter "xmpData"

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/scalado/caps/Session;->nativeAddXmpData(Lcom/scalado/base/Buffer;)V

    .line 393
    return-void
.end method

.method public getDecoder()Lcom/scalado/caps/Decoder;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    return-object v0
.end method

.method public getHandle()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 372
    iget-wide v0, p0, Lcom/scalado/caps/Session;->mSessionHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "The session must be correctly initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    iget-wide v0, p0, Lcom/scalado/caps/Session;->mSessionHandle:J

    return-wide v0
.end method

.method public getViewport()Lcom/scalado/base/Rect;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 315
    new-instance v1, Lcom/scalado/base/Size;

    invoke-direct {v1, v5, v5}, Lcom/scalado/base/Size;-><init>(II)V

    .line 316
    .local v1, size:Lcom/scalado/base/Size;
    invoke-direct {p0, v1}, Lcom/scalado/caps/Session;->nativeGetCurrentImageSize(Lcom/scalado/base/Size;)I

    move-result v0

    .line 317
    .local v0, error:I
    new-instance v2, Lcom/scalado/base/Rect;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/scalado/base/Rect;-><init>(IIII)V

    return-object v2
.end method

.method pushFilter(Lcom/scalado/caps/Filter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v0, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    invoke-virtual {v0}, Lcom/scalado/caps/Decoder;->markChanged()V

    .line 432
    return-void
.end method

.method public removeAllFilters()V
    .locals 2

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/scalado/caps/Session;->hasActiveFilter:Z

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot undo while filter open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->clear()V

    .line 275
    iget-object v0, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    invoke-virtual {v0}, Lcom/scalado/caps/Decoder;->removeAllFilters()V

    goto :goto_0
.end method

.method public removeLastFilter()V
    .locals 2

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/scalado/caps/Session;->hasActiveFilter:Z

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot undo while filter open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    iget-object v1, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    invoke-virtual {v1}, Ljava/util/AbstractList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    invoke-virtual {v0}, Lcom/scalado/caps/Decoder;->removeLastFilter()V

    goto :goto_0
.end method

.method public final removeListener(Lcom/scalado/caps/SessionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 204
    if-nez p1, :cond_0

    .line 206
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->listeners:Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->remove(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;
    .locals 1
    .parameter "encoder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    new-instance v0, Lcom/scalado/caps/Session$RenderIterator;

    invoke-direct {v0, p0, p0, p1}, Lcom/scalado/caps/Session$RenderIterator;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/caps/Session;Lcom/scalado/caps/Encoder;)V

    return-object v0
.end method

.method public sendEventSourceDataChange()V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/scalado/caps/Session;->nativeSendEventSourceDataChange()V

    .line 422
    return-void
.end method

.method public setBackgroundColor(Lcom/scalado/base/Color;)V
    .locals 2
    .parameter "color"

    .prologue
    .line 332
    if-nez p1, :cond_0

    .line 335
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    const-string v1, "BackgroundColor"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/Decoder;->setBackgroundColor(Lcom/scalado/base/Color;)V

    .line 339
    return-void
.end method

.method public setDecoder(Lcom/scalado/caps/Decoder;)V
    .locals 3
    .parameter "decoder"

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 226
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    if-ne p1, v2, :cond_1

    .line 230
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    .line 235
    .local v1, oldDecoder:Lcom/scalado/caps/Decoder;
    invoke-direct {p0, p1}, Lcom/scalado/caps/Session;->applyProperties(Lcom/scalado/caps/Decoder;)V

    .line 236
    invoke-direct {p0, p1}, Lcom/scalado/caps/Session;->applyFilters(Lcom/scalado/caps/Decoder;)V

    .line 237
    iput-object p1, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    .line 239
    invoke-direct {p0, p1}, Lcom/scalado/caps/Session;->nativeSetDecoder(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 241
    .local v0, error:I
    invoke-direct {p0, v1, p1}, Lcom/scalado/caps/Session;->sendSourceChange(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V

    .line 242
    return-void
.end method

.method public setSamplingMode(Lcom/scalado/caps/SamplingMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    const-string v1, "SamplingMode"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/Decoder;->setSamplingMode(Lcom/scalado/caps/SamplingMode;)V

    .line 354
    return-void
.end method

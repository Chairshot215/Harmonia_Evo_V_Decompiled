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

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    iput-wide v3, p0, Lcom/scalado/caps/Session;->mSessionHandle:J

    iput-boolean v2, p0, Lcom/scalado/caps/Session;->hasActiveFilter:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/scalado/caps/Session;->listeners:Ljava/util/AbstractList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    iput-boolean v2, p0, Lcom/scalado/caps/Session;->isIncompleteImage:Z

    iput-wide v3, p0, Lcom/scalado/caps/Session;->mSessionHandle:J

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iput-object p1, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    invoke-direct {p0}, Lcom/scalado/caps/Session;->nativeCreate()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/scalado/caps/Session;->nativeSetDecoder(Lcom/scalado/caps/Decoder;)I

    move-result v0

    return-void
.end method

.method static synthetic access$000(Lcom/scalado/caps/Session;)I
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/Session;->nativeIsIncompleteImage()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/scalado/caps/Session;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/Session;->isIncompleteImage:Z

    return v0
.end method

.method static synthetic access$200(Lcom/scalado/caps/Session;)V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/caps/Session;->sendIncompleteImage()V

    return-void
.end method

.method private applyFilters(Lcom/scalado/caps/Decoder;)V
    .locals 3

    invoke-virtual {p1}, Lcom/scalado/caps/Decoder;->removeAllFilters()V

    iget-object v2, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/Filter;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/Filter;->apply(Lcom/scalado/caps/Decoder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private applyProperties(Lcom/scalado/caps/Decoder;)V
    .locals 2

    iget-object v0, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    const-string v1, "BackgroundColor"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    const-string v1, "BackgroundColor"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/base/Color;

    invoke-virtual {p1, v0}, Lcom/scalado/caps/Decoder;->setBackgroundColor(Lcom/scalado/base/Color;)V

    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    const-string v1, "SamplingMode"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    const-string v1, "SamplingMode"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/scalado/caps/SamplingMode;

    invoke-virtual {p1, p0}, Lcom/scalado/caps/Decoder;->setSamplingMode(Lcom/scalado/caps/SamplingMode;)V

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

    iget-object v2, p0, Lcom/scalado/caps/Session;->listeners:Ljava/util/AbstractList;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/SessionListener;

    invoke-virtual {v1}, Lcom/scalado/caps/SessionListener;->onIncompleteImage()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSourceChange(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V
    .locals 3

    iget-object v2, p0, Lcom/scalado/caps/Session;->listeners:Ljava/util/AbstractList;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/SessionListener;

    invoke-virtual {v1, p1, p2}, Lcom/scalado/caps/SessionListener;->onSourceChange(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addAppData(Lcom/scalado/base/Buffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/Session;->nativeAddAppData(Lcom/scalado/base/Buffer;)V

    return-void
.end method

.method public final addListener(Lcom/scalado/caps/SessionListener;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->listeners:Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/scalado/caps/Session;->listeners:Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addXmpData(Lcom/scalado/base/Buffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/Session;->nativeAddXmpData(Lcom/scalado/base/Buffer;)V

    return-void
.end method

.method public getDecoder()Lcom/scalado/caps/Decoder;
    .locals 1

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

    iget-wide v0, p0, Lcom/scalado/caps/Session;->mSessionHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "The session must be correctly initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/scalado/caps/Session;->mSessionHandle:J

    return-wide v0
.end method

.method public getViewport()Lcom/scalado/base/Rect;
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Lcom/scalado/base/Size;

    invoke-direct {v1, v5, v5}, Lcom/scalado/base/Size;-><init>(II)V

    invoke-direct {p0, v1}, Lcom/scalado/caps/Session;->nativeGetCurrentImageSize(Lcom/scalado/base/Size;)I

    move-result v0

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

    iget-object v0, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    invoke-virtual {v0}, Lcom/scalado/caps/Decoder;->markChanged()V

    return-void
.end method

.method public removeAllFilters()V
    .locals 2

    iget-boolean v0, p0, Lcom/scalado/caps/Session;->hasActiveFilter:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot undo while filter open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->clear()V

    iget-object v0, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    invoke-virtual {v0}, Lcom/scalado/caps/Decoder;->removeAllFilters()V

    goto :goto_0
.end method

.method public removeLastFilter()V
    .locals 3

    iget-boolean v0, p0, Lcom/scalado/caps/Session;->hasActiveFilter:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot undo while filter open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    iget-object v1, p0, Lcom/scalado/caps/Session;->filters:Ljava/util/AbstractList;

    invoke-virtual {v1}, Ljava/util/AbstractList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    invoke-virtual {v0}, Lcom/scalado/caps/Decoder;->removeLastFilter()V

    goto :goto_0
.end method

.method public final removeListener(Lcom/scalado/caps/SessionListener;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->listeners:Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/scalado/caps/Session$RenderIterator;

    invoke-direct {v0, p0, p0, p1}, Lcom/scalado/caps/Session$RenderIterator;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/caps/Session;Lcom/scalado/caps/Encoder;)V

    return-object v0
.end method

.method public sendEventSourceDataChange()V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/caps/Session;->nativeSendEventSourceDataChange()V

    return-void
.end method

.method public setBackgroundColor(Lcom/scalado/base/Color;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    const-string v1, "BackgroundColor"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/Decoder;->setBackgroundColor(Lcom/scalado/base/Color;)V

    return-void
.end method

.method public setDecoder(Lcom/scalado/caps/Decoder;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    if-ne p1, v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1
    iget-object v1, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    invoke-direct {p0, p1}, Lcom/scalado/caps/Session;->applyProperties(Lcom/scalado/caps/Decoder;)V

    invoke-direct {p0, p1}, Lcom/scalado/caps/Session;->applyFilters(Lcom/scalado/caps/Decoder;)V

    iput-object p1, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    invoke-direct {p0, p1}, Lcom/scalado/caps/Session;->nativeSetDecoder(Lcom/scalado/caps/Decoder;)I

    move-result v0

    invoke-direct {p0, v1, p1}, Lcom/scalado/caps/Session;->sendSourceChange(Lcom/scalado/caps/Decoder;Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method public setSamplingMode(Lcom/scalado/caps/SamplingMode;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Session;->properties:Ljava/util/Hashtable;

    const-string v1, "SamplingMode"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/scalado/caps/Session;->decoder:Lcom/scalado/caps/Decoder;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/Decoder;->setSamplingMode(Lcom/scalado/caps/SamplingMode;)V

    return-void
.end method

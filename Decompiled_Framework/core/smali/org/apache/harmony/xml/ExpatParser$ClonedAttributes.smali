.class Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;
.super Lorg/apache/harmony/xml/ExpatAttributes;
.source "ExpatParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClonedAttributes"
.end annotation


# static fields
.field private static final EMPTY:Lorg/xml/sax/Attributes;


# instance fields
.field private final length:I

.field private final parserPointer:I

.field private pointer:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;

    invoke-direct {v0, v1, v1, v1}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;-><init>(III)V

    sput-object v0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->EMPTY:Lorg/xml/sax/Attributes;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatAttributes;-><init>()V

    iput p1, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->parserPointer:I

    iput p2, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:I

    iput p3, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->length:I

    return-void
.end method

.method synthetic constructor <init>(IIILorg/apache/harmony/xml/ExpatParser$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;-><init>(III)V

    return-void
.end method

.method static synthetic access$400()Lorg/xml/sax/Attributes;
    .locals 1

    sget-object v0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->EMPTY:Lorg/xml/sax/Attributes;

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:I

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->freeAttributes(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->length:I

    return v0
.end method

.method public getParserPointer()I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->parserPointer:I

    return v0
.end method

.method public getPointer()I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:I

    return v0
.end method

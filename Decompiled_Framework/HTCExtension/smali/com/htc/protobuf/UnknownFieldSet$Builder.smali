.class public final Lcom/htc/protobuf/UnknownFieldSet$Builder;
.super Ljava/lang/Object;
.source "UnknownFieldSet.java"

# interfaces
.implements Lcom/htc/protobuf/MessageLite$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/UnknownFieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/protobuf/UnknownFieldSet$Field;",
            ">;"
        }
    .end annotation
.end field

.field private lastField:Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

.field private lastFieldNumber:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->create()Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 1

    new-instance v0, Lcom/htc/protobuf/UnknownFieldSet$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;-><init>()V

    invoke-direct {v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->reinitialize()V

    return-object v0
.end method

.method private getFieldBuilder(I)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 3

    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    :goto_0
    return-object v1

    :cond_0
    iget v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    iget-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet$Field;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->addField(ILcom/htc/protobuf/UnknownFieldSet$Field;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    :cond_1
    if-nez p1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/UnknownFieldSet$Field;

    iput p1, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    invoke-virtual {v1, v0}, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->mergeFrom(Lcom/htc/protobuf/UnknownFieldSet$Field;)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    :cond_3
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    goto :goto_0
.end method

.method private reinitialize()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    return-void
.end method


# virtual methods
.method public addField(ILcom/htc/protobuf/UnknownFieldSet$Field;)Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->lastField:Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/protobuf/UnknownFieldSet$Field;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/htc/protobuf/UnknownFieldSet;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    :goto_0
    iput-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/protobuf/UnknownFieldSet;

    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/htc/protobuf/UnknownFieldSet;-><init>(Ljava/util/Map;Lcom/htc/protobuf/UnknownFieldSet$1;)V

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->buildPartial()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/UnknownFieldSet;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->clear()Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->reinitialize()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->clone()Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder()Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/protobuf/UnknownFieldSet;

    iget-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/htc/protobuf/UnknownFieldSet;-><init>(Ljava/util/Map;Lcom/htc/protobuf/UnknownFieldSet$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->clone()Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/UnknownFieldSet;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public hasField(I)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->lastFieldNumber:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Builder;->fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/htc/protobuf/CodedInputStream;->readRawVarint32(Ljava/io/InputStream;)I

    move-result v1

    new-instance v0, Lcom/htc/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v0, p1, v1}, Lcom/htc/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    return-object v2
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeField(ILcom/htc/protobuf/UnknownFieldSet$Field;)Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->hasField(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->mergeFrom(Lcom/htc/protobuf/UnknownFieldSet$Field;)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->addField(ILcom/htc/protobuf/UnknownFieldSet$Field;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0
.end method

.method public mergeFieldFrom(ILcom/htc/protobuf/CodedInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/htc/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-static {}, Lcom/htc/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->addVarint(J)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    :goto_0
    return v2

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/htc/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->addFixed64(J)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->addLengthDelimited(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder()Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    invoke-static {}, Lcom/htc/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/htc/protobuf/ExtensionRegistry;

    move-result-object v3

    invoke-virtual {p2, v0, v1, v3}, Lcom/htc/protobuf/CodedInputStream;->readGroup(ILcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-direct {p0, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->addGroup(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    goto :goto_0

    :pswitch_4
    const/4 v2, 0x0

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/htc/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->addFixed32(I)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([B)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom([B)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom([BII)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BIILcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom([BIILcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/htc/protobuf/ByteString;->newCodedInput()Lcom/htc/protobuf/CodedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/htc/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFieldFrom(ILcom/htc/protobuf/CodedInputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return-object p0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 4

    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    if-eq p1, v2, :cond_0

    #getter for: Lcom/htc/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet;->access$200(Lcom/htc/protobuf/UnknownFieldSet;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/protobuf/UnknownFieldSet$Field;

    invoke-virtual {p0, v3, v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeField(ILcom/htc/protobuf/UnknownFieldSet$Field;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/htc/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/htc/protobuf/CodedInputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/CodedInputStream;->checkLastTagWas(I)V

    return-object p0
.end method

.method public mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom([B)Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/htc/protobuf/CodedInputStream;->newInstance([B)Lcom/htc/protobuf/CodedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/htc/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public mergeFrom([BII)Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/htc/protobuf/CodedInputStream;->newInstance([BII)Lcom/htc/protobuf/CodedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/htc/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public mergeFrom([BIILcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom([BII)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom([B)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->getFieldBuilder(I)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->addVarint(J)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    return-object p0
.end method

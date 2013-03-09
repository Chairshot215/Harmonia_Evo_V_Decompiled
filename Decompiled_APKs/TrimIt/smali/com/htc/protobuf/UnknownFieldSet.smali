.class public final Lcom/htc/protobuf/UnknownFieldSet;
.super Ljava/lang/Object;
.source "UnknownFieldSet.java"

# interfaces
.implements Lcom/htc/protobuf/MessageLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/UnknownFieldSet$1;,
        Lcom/htc/protobuf/UnknownFieldSet$Field;,
        Lcom/htc/protobuf/UnknownFieldSet$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/htc/protobuf/UnknownFieldSet;


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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/htc/protobuf/UnknownFieldSet;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/htc/protobuf/UnknownFieldSet;->defaultInstance:Lcom/htc/protobuf/UnknownFieldSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/protobuf/UnknownFieldSet$Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, fields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/protobuf/UnknownFieldSet$Field;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/htc/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/htc/protobuf/UnknownFieldSet$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/protobuf/UnknownFieldSet;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/protobuf/UnknownFieldSet;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/htc/protobuf/UnknownFieldSet;->defaultInstance:Lcom/htc/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 1

    .prologue
    .line 62
    #calls: Lcom/htc/protobuf/UnknownFieldSet$Builder;->create()Lcom/htc/protobuf/UnknownFieldSet$Builder;
    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->access$000()Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 1
    .parameter "copyFrom"

    .prologue
    .line 70
    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder()Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/UnknownFieldSet;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder()Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/UnknownFieldSet;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder()Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/UnknownFieldSet;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder()Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/protobuf/UnknownFieldSet;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder()Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom([B)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
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

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "other"

    .prologue
    const/4 v0, 0x1

    .line 94
    if-ne p0, p1, :cond_1

    .line 97
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/htc/protobuf/UnknownFieldSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    check-cast p1, Lcom/htc/protobuf/UnknownFieldSet;

    .end local p1
    iget-object v2, p1, Lcom/htc/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/protobuf/UnknownFieldSet;->getDefaultInstanceForType()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/htc/protobuf/UnknownFieldSet;->defaultInstance:Lcom/htc/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getField(I)Lcom/htc/protobuf/UnknownFieldSet$Field;
    .locals 3
    .parameter "number"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/UnknownFieldSet$Field;

    .line 122
    .local v0, result:Lcom/htc/protobuf/UnknownFieldSet$Field;
    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet$Field;->getDefaultInstance()Lcom/htc/protobuf/UnknownFieldSet$Field;

    move-result-object v0

    .end local v0           #result:Lcom/htc/protobuf/UnknownFieldSet$Field;
    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 196
    const/4 v2, 0x0

    .line 197
    .local v2, result:I
    iget-object v3, p0, Lcom/htc/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 198
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/protobuf/UnknownFieldSet$Field;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/protobuf/UnknownFieldSet$Field;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/protobuf/UnknownFieldSet$Field;->getSerializedSize(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 200
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/protobuf/UnknownFieldSet$Field;>;"
    :cond_0
    return v2
.end method

.method public getSerializedSizeAsMessageSet()I
    .locals 5

    .prologue
    .line 220
    const/4 v2, 0x0

    .line 221
    .local v2, result:I
    iget-object v3, p0, Lcom/htc/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 222
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/protobuf/UnknownFieldSet$Field;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/protobuf/UnknownFieldSet$Field;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/protobuf/UnknownFieldSet$Field;->getSerializedSizeAsMessageSetExtension(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 225
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/protobuf/UnknownFieldSet$Field;>;"
    :cond_0
    return v2
.end method

.method public hasField(I)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilderForType()Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 1

    .prologue
    .line 259
    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder()Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/protobuf/UnknownFieldSet;->toBuilder()Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/UnknownFieldSet$Builder;
    .locals 1

    .prologue
    .line 263
    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder()Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 5

    .prologue
    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    new-array v2, v3, [B

    .line 166
    .local v2, result:[B
    invoke-static {v2}, Lcom/htc/protobuf/CodedOutputStream;->newInstance([B)Lcom/htc/protobuf/CodedOutputStream;

    move-result-object v1

    .line 167
    .local v1, output:Lcom/htc/protobuf/CodedOutputStream;
    invoke-virtual {p0, v1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 168
    invoke-virtual {v1}, Lcom/htc/protobuf/CodedOutputStream;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    return-object v2

    .line 170
    .end local v1           #output:Lcom/htc/protobuf/CodedOutputStream;
    .end local v2           #result:[B
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toByteString()Lcom/htc/protobuf/ByteString;
    .locals 4

    .prologue
    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    invoke-static {v2}, Lcom/htc/protobuf/ByteString;->newCodedBuilder(I)Lcom/htc/protobuf/ByteString$CodedBuilder;

    move-result-object v1

    .line 150
    .local v1, out:Lcom/htc/protobuf/ByteString$CodedBuilder;
    invoke-virtual {v1}, Lcom/htc/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/htc/protobuf/CodedOutputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 151
    invoke-virtual {v1}, Lcom/htc/protobuf/ByteString$CodedBuilder;->build()Lcom/htc/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 152
    .end local v1           #out:Lcom/htc/protobuf/ByteString$CodedBuilder;
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Serializing to a ByteString threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    invoke-static {p0}, Lcom/htc/protobuf/TextFormat;->printToString(Lcom/htc/protobuf/UnknownFieldSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeAsMessageSetTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 210
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/protobuf/UnknownFieldSet$Field;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/protobuf/UnknownFieldSet$Field;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->writeAsMessageSetExtensionTo(ILcom/htc/protobuf/CodedOutputStream;)V

    goto :goto_0

    .line 213
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/protobuf/UnknownFieldSet$Field;>;"
    :cond_0
    return-void
.end method

.method public writeDelimitedTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/htc/protobuf/CodedOutputStream;

    move-result-object v0

    .line 189
    .local v0, codedOutput:Lcom/htc/protobuf/CodedOutputStream;
    invoke-virtual {p0}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 190
    invoke-virtual {p0, v0}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 191
    invoke-virtual {v0}, Lcom/htc/protobuf/CodedOutputStream;->flush()V

    .line 192
    return-void
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet;->fields:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 128
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/protobuf/UnknownFieldSet$Field;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/protobuf/UnknownFieldSet$Field;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->writeTo(ILcom/htc/protobuf/CodedOutputStream;)V

    goto :goto_0

    .line 130
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/protobuf/UnknownFieldSet$Field;>;"
    :cond_0
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/htc/protobuf/CodedOutputStream;

    move-result-object v0

    .line 183
    .local v0, codedOutput:Lcom/htc/protobuf/CodedOutputStream;
    invoke-virtual {p0, v0}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 184
    invoke-virtual {v0}, Lcom/htc/protobuf/CodedOutputStream;->flush()V

    .line 185
    return-void
.end method

.class public abstract Lcom/htc/protobuf/AbstractMessageLite$Builder;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lcom/htc/protobuf/MessageLite$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/AbstractMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/AbstractMessageLite$Builder$LimitedInputStream;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/htc/protobuf/AbstractMessageLite$Builder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/protobuf/MessageLite$Builder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    return-void
.end method

.method protected static addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/util/Collection",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p1, list:Ljava/util/Collection;,"Ljava/util/Collection<-TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 306
    .local v2, value:Ljava/lang/Object;,"TT;"
    if-nez v2, :cond_0

    .line 307
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 310
    .end local v2           #value:Ljava/lang/Object;,"TT;"
    :cond_1
    instance-of v3, p0, Ljava/util/Collection;

    if-eqz v3, :cond_3

    move-object v0, p0

    .line 312
    check-cast v0, Ljava/util/Collection;

    .line 313
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 319
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    :cond_2
    return-void

    .line 315
    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 316
    .restart local v2       #value:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected static newUninitializedMessageException(Lcom/htc/protobuf/MessageLite;)Lcom/htc/protobuf/UninitializedMessageException;
    .locals 1
    .parameter "message"

    .prologue
    .line 293
    new-instance v0, Lcom/htc/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Lcom/htc/protobuf/UninitializedMessageException;-><init>(Lcom/htc/protobuf/MessageLite;)V

    return-object v0
.end method


# virtual methods
.method public abstract clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 92
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;

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

    .prologue
    .line 92
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    invoke-static {p1}, Lcom/htc/protobuf/CodedInputStream;->readRawVarint32(Ljava/io/InputStream;)I

    move-result v1

    .line 283
    .local v1, size:I
    new-instance v0, Lcom/htc/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v0, p1, v1}, Lcom/htc/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 284
    .local v0, limitedInput:Ljava/io/InputStream;
    invoke-virtual {p0, v0}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v2

    return-object v2
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/htc/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    invoke-static {p1}, Lcom/htc/protobuf/CodedInputStream;->readRawVarint32(Ljava/io/InputStream;)I

    move-result v1

    .line 276
    .local v1, size:I
    new-instance v0, Lcom/htc/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v0, p1, v1}, Lcom/htc/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 277
    .local v0, limitedInput:Ljava/io/InputStream;
    invoke-virtual {p0, v0, p2}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/ByteString;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 119
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/protobuf/ByteString;->newCodedInput()Lcom/htc/protobuf/CodedInputStream;

    move-result-object v1

    .line 120
    .local v1, input:Lcom/htc/protobuf/CodedInputStream;
    invoke-virtual {p0, v1}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    .line 121
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/htc/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    return-object p0

    .line 123
    .end local v1           #input:Lcom/htc/protobuf/CodedInputStream;
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Lcom/htc/protobuf/InvalidProtocolBufferException;
    throw v0

    .line 125
    .end local v0           #e:Lcom/htc/protobuf/InvalidProtocolBufferException;
    :catch_1
    move-exception v0

    .line 126
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 4
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/ByteString;",
            "Lcom/htc/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 137
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/protobuf/ByteString;->newCodedInput()Lcom/htc/protobuf/CodedInputStream;

    move-result-object v1

    .line 138
    .local v1, input:Lcom/htc/protobuf/CodedInputStream;
    invoke-virtual {p0, v1, p2}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    .line 139
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/htc/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    return-object p0

    .line 141
    .end local v1           #input:Lcom/htc/protobuf/CodedInputStream;
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Lcom/htc/protobuf/InvalidProtocolBufferException;
    throw v0

    .line 143
    .end local v0           #e:Lcom/htc/protobuf/InvalidProtocolBufferException;
    :catch_1
    move-exception v0

    .line 144
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/CodedInputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public abstract mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/CodedInputStream;",
            "Lcom/htc/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    invoke-static {p1}, Lcom/htc/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/htc/protobuf/CodedInputStream;

    move-result-object v0

    .line 201
    .local v0, codedInput:Lcom/htc/protobuf/CodedInputStream;
    invoke-virtual {p0, v0}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    .line 202
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 203
    return-object p0
.end method

.method public mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/htc/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    invoke-static {p1}, Lcom/htc/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/htc/protobuf/CodedInputStream;

    move-result-object v0

    .line 211
    .local v0, codedInput:Lcom/htc/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    .line 212
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 213
    return-object p0
.end method

.method public mergeFrom([B)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 152
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom([BII)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom([BII)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 4
    .parameter "data"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 159
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/htc/protobuf/CodedInputStream;->newInstance([BII)Lcom/htc/protobuf/CodedInputStream;

    move-result-object v1

    .line 161
    .local v1, input:Lcom/htc/protobuf/CodedInputStream;
    invoke-virtual {p0, v1}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    .line 162
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/htc/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    return-object p0

    .line 164
    .end local v1           #input:Lcom/htc/protobuf/CodedInputStream;
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Lcom/htc/protobuf/InvalidProtocolBufferException;
    throw v0

    .line 166
    .end local v0           #e:Lcom/htc/protobuf/InvalidProtocolBufferException;
    :catch_1
    move-exception v0

    .line 167
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public mergeFrom([BIILcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 4
    .parameter "data"
    .parameter "off"
    .parameter "len"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/htc/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 185
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/htc/protobuf/CodedInputStream;->newInstance([BII)Lcom/htc/protobuf/CodedInputStream;

    move-result-object v1

    .line 187
    .local v1, input:Lcom/htc/protobuf/CodedInputStream;
    invoke-virtual {p0, v1, p4}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    .line 188
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/htc/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    return-object p0

    .line 190
    .end local v1           #input:Lcom/htc/protobuf/CodedInputStream;
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Lcom/htc/protobuf/InvalidProtocolBufferException;
    throw v0

    .line 192
    .end local v0           #e:Lcom/htc/protobuf/InvalidProtocolBufferException;
    :catch_1
    move-exception v0

    .line 193
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 2
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/htc/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 177
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom([BIILcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([B)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom([BII)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BIILcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom([BIILcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/htc/protobuf/AbstractMessageLite$Builder;,"Lcom/htc/protobuf/AbstractMessageLite$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/AbstractMessageLite$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

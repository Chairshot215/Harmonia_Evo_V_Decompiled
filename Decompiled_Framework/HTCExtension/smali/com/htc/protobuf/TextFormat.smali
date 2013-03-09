.class public final Lcom/htc/protobuf/TextFormat;
.super Ljava/lang/Object;
.source "TextFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/TextFormat$1;,
        Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;,
        Lcom/htc/protobuf/TextFormat$ParseException;,
        Lcom/htc/protobuf/TextFormat$Tokenizer;,
        Lcom/htc/protobuf/TextFormat$TextGenerator;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static digitValue(C)I
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method static escapeBytes(Lcom/htc/protobuf/ByteString;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/htc/protobuf/ByteString;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/protobuf/ByteString;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/htc/protobuf/ByteString;->byteAt(I)B

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/16 v3, 0x20

    if-lt v0, v3, :cond_0

    int-to-char v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :sswitch_0
    const-string v3, "\\a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    const-string v3, "\\b"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const-string v3, "\\f"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    const-string v3, "\\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_4
    const-string v3, "\\r"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_5
    const-string v3, "\\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_6
    const-string v3, "\\v"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_7
    const-string v3, "\\\\"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_8
    const-string v3, "\\\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_9
    const-string v3, "\\\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v3, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v0, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v0, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_5
        0xa -> :sswitch_3
        0xb -> :sswitch_6
        0xc -> :sswitch_2
        0xd -> :sswitch_4
        0x22 -> :sswitch_9
        0x27 -> :sswitch_8
        0x5c -> :sswitch_7
    .end sparse-switch
.end method

.method static escapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/htc/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/protobuf/TextFormat;->escapeBytes(Lcom/htc/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isHex(C)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOctal(C)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static merge(Ljava/lang/CharSequence;Lcom/htc/protobuf/ExtensionRegistry;Lcom/htc/protobuf/Message$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$ParseException;
        }
    .end annotation

    new-instance v0, Lcom/htc/protobuf/TextFormat$Tokenizer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/protobuf/TextFormat$Tokenizer;-><init>(Ljava/lang/CharSequence;Lcom/htc/protobuf/TextFormat$1;)V

    :goto_0
    invoke-virtual {v0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->atEnd()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p1, p2}, Lcom/htc/protobuf/TextFormat;->mergeField(Lcom/htc/protobuf/TextFormat$Tokenizer;Lcom/htc/protobuf/ExtensionRegistry;Lcom/htc/protobuf/Message$Builder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static merge(Ljava/lang/CharSequence;Lcom/htc/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$ParseException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/htc/protobuf/ExtensionRegistry;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/htc/protobuf/TextFormat;->merge(Ljava/lang/CharSequence;Lcom/htc/protobuf/ExtensionRegistry;Lcom/htc/protobuf/Message$Builder;)V

    return-void
.end method

.method public static merge(Ljava/lang/Readable;Lcom/htc/protobuf/ExtensionRegistry;Lcom/htc/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/htc/protobuf/TextFormat;->toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/htc/protobuf/TextFormat;->merge(Ljava/lang/CharSequence;Lcom/htc/protobuf/ExtensionRegistry;Lcom/htc/protobuf/Message$Builder;)V

    return-void
.end method

.method public static merge(Ljava/lang/Readable;Lcom/htc/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/htc/protobuf/ExtensionRegistry;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/htc/protobuf/TextFormat;->merge(Ljava/lang/Readable;Lcom/htc/protobuf/ExtensionRegistry;Lcom/htc/protobuf/Message$Builder;)V

    return-void
.end method

.method private static mergeField(Lcom/htc/protobuf/TextFormat$Tokenizer;Lcom/htc/protobuf/ExtensionRegistry;Lcom/htc/protobuf/Message$Builder;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$ParseException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/htc/protobuf/Message$Builder;->getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v9

    const/4 v2, 0x0

    const-string v11, "["

    invoke-virtual {p0, v11}, Lcom/htc/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v11, "."

    invoke-virtual {p0, v11}, Lcom/htc/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/16 v11, 0x2e

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/htc/protobuf/ExtensionRegistry;->findExtensionByName(Ljava/lang/String;)Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Extension \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" not found in the ExtensionRegistry."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/htc/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/htc/protobuf/TextFormat$ParseException;

    move-result-object v11

    throw v11

    :cond_1
    iget-object v11, v2, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v11}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v11

    if-eq v11, v9, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Extension \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" does not extend message type \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/htc/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\"."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/htc/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/htc/protobuf/TextFormat$ParseException;

    move-result-object v11

    throw v11

    :cond_2
    const-string v11, "]"

    invoke-virtual {p0, v11}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    :cond_3
    const/4 v10, 0x0

    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v11

    sget-object v12, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v11, v12, :cond_c

    const-string v11, ":"

    invoke-virtual {p0, v11}, Lcom/htc/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    const-string v11, "<"

    invoke-virtual {p0, v11}, Lcom/htc/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v0, ">"

    :goto_1
    if-nez v2, :cond_8

    invoke-interface {p2, v3}, Lcom/htc/protobuf/Message$Builder;->newBuilderForField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/Message$Builder;

    move-result-object v8

    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->atEnd()Z

    move-result v11

    if-eqz v11, :cond_9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Expected \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\"."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/htc/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/htc/protobuf/TextFormat$ParseException;

    move-result-object v11

    throw v11

    :cond_4
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/htc/protobuf/Descriptors$Descriptor;->findFieldByName(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    move-result-object v3

    if-nez v3, :cond_5

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/htc/protobuf/Descriptors$Descriptor;->findFieldByName(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v11

    sget-object v12, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v11, v12, :cond_5

    const/4 v3, 0x0

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v11

    sget-object v12, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v11, v12, :cond_6

    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const/4 v3, 0x0

    :cond_6
    if-nez v3, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Message type \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/htc/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" has no field named \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\"."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/htc/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/htc/protobuf/TextFormat$ParseException;

    move-result-object v11

    throw v11

    :cond_7
    const-string v11, "{"

    invoke-virtual {p0, v11}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    const-string v0, "}"

    goto/16 :goto_1

    :cond_8
    iget-object v11, v2, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/htc/protobuf/Message;

    invoke-interface {v11}, Lcom/htc/protobuf/Message;->newBuilderForType()Lcom/htc/protobuf/Message$Builder;

    move-result-object v8

    goto/16 :goto_2

    :cond_9
    invoke-static {p0, p1, v8}, Lcom/htc/protobuf/TextFormat;->mergeField(Lcom/htc/protobuf/TextFormat$Tokenizer;Lcom/htc/protobuf/ExtensionRegistry;Lcom/htc/protobuf/Message$Builder;)V

    goto/16 :goto_2

    :cond_a
    invoke-interface {v8}, Lcom/htc/protobuf/Message$Builder;->build()Lcom/htc/protobuf/Message;

    move-result-object v10

    :cond_b
    :goto_3
    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {p2, v3, v10}, Lcom/htc/protobuf/Message$Builder;->addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;

    :goto_4
    return-void

    :cond_c
    const-string v11, ":"

    invoke-virtual {p0, v11}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    sget-object v11, Lcom/htc/protobuf/TextFormat$1;->$SwitchMap$com$htc$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeInt32()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_3

    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeInt64()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeUInt32()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_3

    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeUInt64()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_3

    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeFloat()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    goto :goto_3

    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeDouble()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_3

    :pswitch_6
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeBoolean()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_3

    :pswitch_7
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :pswitch_8
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeByteString()Lcom/htc/protobuf/ByteString;

    move-result-object v10

    goto :goto_3

    :pswitch_9
    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->lookingAtInteger()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeInt32()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v10

    if-nez v10, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Enum type \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" has no value with number "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x2e

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/htc/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/htc/protobuf/TextFormat$ParseException;

    move-result-object v11

    throw v11

    :cond_d
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->findValueByName(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v10

    if-nez v10, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Enum type \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" has no value named \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\"."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/htc/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/htc/protobuf/TextFormat$ParseException;

    move-result-object v11

    throw v11

    :pswitch_a
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Can\'t get here."

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_e
    invoke-interface {p2, v3, v10}, Lcom/htc/protobuf/Message$Builder;->setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method static parseInt32(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/htc/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static parseInt64(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/htc/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseInteger(Ljava/lang/String;ZZ)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v7, "-"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number must be positive: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x1

    :cond_1
    const/16 v4, 0xa

    const-string v7, "0x"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    add-int/lit8 v3, v3, 0x2

    const/16 v4, 0x10

    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x10

    if-ge v7, v8, :cond_8

    invoke-static {v2, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    if-eqz v1, :cond_3

    neg-long v5, v5

    :cond_3
    if-nez p2, :cond_e

    if-eqz p1, :cond_6

    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v5, v7

    if-gtz v7, :cond_4

    const-wide/32 v7, -0x80000000

    cmp-long v7, v5, v7

    if-gez v7, :cond_e

    :cond_4
    new-instance v7, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number out of range for 32-bit signed integer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5
    const-string v7, "0"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v4, 0x8

    goto :goto_0

    :cond_6
    const-wide v7, 0x100000000L

    cmp-long v7, v5, v7

    if-gez v7, :cond_7

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_e

    :cond_7
    new-instance v7, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number out of range for 32-bit unsigned integer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_8
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    :cond_9
    if-nez p2, :cond_b

    if-eqz p1, :cond_a

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x1f

    if-le v7, v8, :cond_d

    new-instance v7, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number out of range for 32-bit signed integer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_a
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x20

    if-le v7, v8, :cond_d

    new-instance v7, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number out of range for 32-bit unsigned integer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x3f

    if-le v7, v8, :cond_d

    new-instance v7, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number out of range for 64-bit signed integer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_c
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x40

    if-le v7, v8, :cond_d

    new-instance v7, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number out of range for 64-bit unsigned integer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_d
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    :cond_e
    return-wide v5
.end method

.method static parseUInt32(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/htc/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static parseUInt64(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/htc/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static print(Lcom/htc/protobuf/Message;Lcom/htc/protobuf/TextFormat$TextGenerator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/htc/protobuf/Message;->getAllFields()Ljava/util/Map;

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

    check-cast v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/htc/protobuf/TextFormat;->printField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/htc/protobuf/TextFormat$TextGenerator;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/htc/protobuf/Message;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/htc/protobuf/TextFormat;->printUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;Lcom/htc/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method public static print(Lcom/htc/protobuf/Message;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/htc/protobuf/TextFormat$TextGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/htc/protobuf/TextFormat$1;)V

    invoke-static {p0, v0}, Lcom/htc/protobuf/TextFormat;->print(Lcom/htc/protobuf/Message;Lcom/htc/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method public static print(Lcom/htc/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/htc/protobuf/TextFormat$TextGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/htc/protobuf/TextFormat$1;)V

    invoke-static {p0, v0}, Lcom/htc/protobuf/TextFormat;->printUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;Lcom/htc/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method private static printField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/htc/protobuf/TextFormat$TextGenerator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/htc/protobuf/TextFormat;->printSingleField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/htc/protobuf/TextFormat$TextGenerator;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/protobuf/TextFormat;->printSingleField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/htc/protobuf/TextFormat$TextGenerator;)V

    :cond_1
    return-void
.end method

.method public static printField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/htc/protobuf/TextFormat$TextGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/htc/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/htc/protobuf/TextFormat$1;)V

    invoke-static {p0, p1, v0}, Lcom/htc/protobuf/TextFormat;->printField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/htc/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method public static printFieldToString(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, v1}, Lcom/htc/protobuf/TextFormat;->printField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Writing to a StringBuilder threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static printFieldValue(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/htc/protobuf/TextFormat$TextGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/htc/protobuf/TextFormat$1;->$SwitchMap$com$htc$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/TextFormat;->unsignedToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/protobuf/TextFormat;->unsignedToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/htc/protobuf/TextFormat;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    check-cast p1, Lcom/htc/protobuf/ByteString;

    invoke-static {p1}, Lcom/htc/protobuf/TextFormat;->escapeBytes(Lcom/htc/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_5
    check-cast p1, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_6
    check-cast p1, Lcom/htc/protobuf/Message;

    invoke-static {p1, p2}, Lcom/htc/protobuf/TextFormat;->print(Lcom/htc/protobuf/Message;Lcom/htc/protobuf/TextFormat$TextGenerator;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private static printSingleField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/htc/protobuf/TextFormat$TextGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "["

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$Descriptor;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getExtensionScope()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "]"

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_4

    const-string v0, " {\n"

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/htc/protobuf/TextFormat$TextGenerator;->indent()V

    :goto_2
    invoke-static {p0, p1, p2}, Lcom/htc/protobuf/TextFormat;->printFieldValue(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/htc/protobuf/TextFormat$TextGenerator;)V

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/htc/protobuf/TextFormat$TextGenerator;->outdent()V

    const-string v0, "}"

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const-string v0, ": "

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public static printToString(Lcom/htc/protobuf/Message;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v1}, Lcom/htc/protobuf/TextFormat;->print(Lcom/htc/protobuf/Message;Ljava/lang/Appendable;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Writing to a StringBuilder threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static printToString(Lcom/htc/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v1}, Lcom/htc/protobuf/TextFormat;->print(Lcom/htc/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Writing to a StringBuilder threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static printUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;Lcom/htc/protobuf/TextFormat$TextGenerator;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/htc/protobuf/UnknownFieldSet;->asMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/UnknownFieldSet$Field;

    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->getVarintList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v7, ": "

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-static {v5, v6}, Lcom/htc/protobuf/TextFormat;->unsignedToString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v7, "\n"

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->getFixed32List()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v7, ": "

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    move-object v7, v8

    check-cast v7, Ljava/util/Locale;

    const-string v9, "0x%08x"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v7, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v7, "\n"

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->getFixed64List()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v7, ": "

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    move-object v7, v8

    check-cast v7, Ljava/util/Locale;

    const-string v9, "0x%016x"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v7, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v7, "\n"

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->getLengthDelimitedList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/protobuf/ByteString;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v7, ": \""

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-static {v5}, Lcom/htc/protobuf/TextFormat;->escapeBytes(Lcom/htc/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v7, "\"\n"

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->getGroupList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/protobuf/UnknownFieldSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v7, " {\n"

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/htc/protobuf/TextFormat$TextGenerator;->indent()V

    invoke-static {v5, p1}, Lcom/htc/protobuf/TextFormat;->printUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;Lcom/htc/protobuf/TextFormat$TextGenerator;)V

    invoke-virtual {p1}, Lcom/htc/protobuf/TextFormat$TextGenerator;->outdent()V

    const-string v7, "}\n"

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    return-void
.end method

.method private static toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x1000

    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    :goto_0
    invoke-interface {p0, v0}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static unescapeBytes(Ljava/lang/CharSequence;)Lcom/htc/protobuf/ByteString;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    const/16 v8, 0x5c

    const/16 v9, 0x27

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    new-array v5, v6, [B

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v2, v6, :cond_7

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_6

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/TextFormat;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v0}, Lcom/htc/protobuf/TextFormat;->digitValue(C)I

    move-result v1

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/htc/protobuf/TextFormat;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v6, v1, 0x8

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/htc/protobuf/TextFormat;->digitValue(C)I

    move-result v7

    add-int v1, v6, v7

    :cond_0
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/htc/protobuf/TextFormat;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v6, v1, 0x8

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/htc/protobuf/TextFormat;->digitValue(C)I

    move-result v7

    add-int v1, v6, v7

    :cond_1
    add-int/lit8 v4, v3, 0x1

    int-to-byte v6, v1

    aput-byte v6, v5, v3

    move v3, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sparse-switch v0, :sswitch_data_0

    new-instance v6, Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid escape sequence: \'\\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v6

    :sswitch_0
    add-int/lit8 v4, v3, 0x1

    const/4 v6, 0x7

    aput-byte v6, v5, v3

    move v3, v4

    goto :goto_1

    :sswitch_1
    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0x8

    aput-byte v6, v5, v3

    move v3, v4

    goto :goto_1

    :sswitch_2
    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0xc

    aput-byte v6, v5, v3

    move v3, v4

    goto :goto_1

    :sswitch_3
    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0xa

    aput-byte v6, v5, v3

    move v3, v4

    goto :goto_1

    :sswitch_4
    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0xd

    aput-byte v6, v5, v3

    move v3, v4

    goto :goto_1

    :sswitch_5
    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0x9

    aput-byte v6, v5, v3

    move v3, v4

    goto :goto_1

    :sswitch_6
    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0xb

    aput-byte v6, v5, v3

    move v3, v4

    goto :goto_1

    :sswitch_7
    add-int/lit8 v4, v3, 0x1

    aput-byte v8, v5, v3

    move v3, v4

    goto :goto_1

    :sswitch_8
    add-int/lit8 v4, v3, 0x1

    aput-byte v9, v5, v3

    move v3, v4

    goto :goto_1

    :sswitch_9
    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0x22

    aput-byte v6, v5, v3

    move v3, v4

    goto :goto_1

    :sswitch_a
    const/4 v1, 0x0

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/htc/protobuf/TextFormat;->isHex(C)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/htc/protobuf/TextFormat;->digitValue(C)I

    move-result v1

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/htc/protobuf/TextFormat;->isHex(C)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v6, v1, 0x10

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/htc/protobuf/TextFormat;->digitValue(C)I

    move-result v7

    add-int v1, v6, v7

    :cond_3
    add-int/lit8 v4, v3, 0x1

    int-to-byte v6, v1

    aput-byte v6, v5, v3

    move v3, v4

    goto/16 :goto_1

    :cond_4
    new-instance v6, Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v7, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {v6, v7}, Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    new-instance v6, Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v7, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {v6, v7}, Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6
    add-int/lit8 v4, v3, 0x1

    int-to-byte v6, v0

    aput-byte v6, v5, v3

    move v3, v4

    goto/16 :goto_1

    :cond_7
    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcom/htc/protobuf/ByteString;->copyFrom([BII)Lcom/htc/protobuf/ByteString;

    move-result-object v6

    return-object v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_9
        0x27 -> :sswitch_8
        0x5c -> :sswitch_7
        0x61 -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
        0x76 -> :sswitch_6
        0x78 -> :sswitch_a
    .end sparse-switch
.end method

.method static unescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    invoke-static {p0}, Lcom/htc/protobuf/TextFormat;->unescapeBytes(Ljava/lang/CharSequence;)Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static unsignedToString(I)Ljava/lang/String;
    .locals 4

    if-ltz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static unsignedToString(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

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

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method private static digitValue(C)I
    .locals 1
    .parameter "c"

    .prologue
    .line 1187
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1188
    add-int/lit8 v0, p0, -0x30

    .line 1192
    :goto_0
    return v0

    .line 1189
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    .line 1190
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 1192
    :cond_1
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method static escapeBytes(Lcom/htc/protobuf/ByteString;)Ljava/lang/String;
    .locals 4
    .parameter "input"

    .prologue
    .line 1035
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/htc/protobuf/ByteString;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1036
    .local v1, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/protobuf/ByteString;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1037
    invoke-virtual {p0, v2}, Lcom/htc/protobuf/ByteString;->byteAt(I)B

    move-result v0

    .line 1038
    .local v0, b:B
    sparse-switch v0, :sswitch_data_0

    .line 1051
    const/16 v3, 0x20

    if-lt v0, v3, :cond_0

    .line 1052
    int-to-char v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1036
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1040
    :sswitch_0
    const-string v3, "\\a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1041
    :sswitch_1
    const-string v3, "\\b"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1042
    :sswitch_2
    const-string v3, "\\f"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1043
    :sswitch_3
    const-string v3, "\\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1044
    :sswitch_4
    const-string v3, "\\r"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1045
    :sswitch_5
    const-string v3, "\\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1046
    :sswitch_6
    const-string v3, "\\v"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1047
    :sswitch_7
    const-string v3, "\\\\"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1048
    :sswitch_8
    const-string v3, "\\\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1049
    :sswitch_9
    const-string v3, "\\\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1054
    :cond_0
    const/16 v3, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1055
    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1056
    ushr-int/lit8 v3, v0, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1057
    and-int/lit8 v3, v0, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1062
    .end local v0           #b:B
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1038
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
    .parameter "input"

    .prologue
    .line 1157
    invoke-static {p0}, Lcom/htc/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/protobuf/TextFormat;->escapeBytes(Lcom/htc/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isHex(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1176
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
    .parameter "c"

    .prologue
    .line 1171
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
    .parameter "input"
    .parameter "extensionRegistry"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 836
    new-instance v0, Lcom/htc/protobuf/TextFormat$Tokenizer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/protobuf/TextFormat$Tokenizer;-><init>(Ljava/lang/CharSequence;Lcom/htc/protobuf/TextFormat$1;)V

    .line 838
    .local v0, tokenizer:Lcom/htc/protobuf/TextFormat$Tokenizer;
    :goto_0
    invoke-virtual {v0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->atEnd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 839
    invoke-static {v0, p1, p2}, Lcom/htc/protobuf/TextFormat;->mergeField(Lcom/htc/protobuf/TextFormat$Tokenizer;Lcom/htc/protobuf/ExtensionRegistry;Lcom/htc/protobuf/Message$Builder;)V

    goto :goto_0

    .line 841
    :cond_0
    return-void
.end method

.method public static merge(Ljava/lang/CharSequence;Lcom/htc/protobuf/Message$Builder;)V
    .locals 1
    .parameter "input"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 785
    invoke-static {}, Lcom/htc/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/htc/protobuf/ExtensionRegistry;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/htc/protobuf/TextFormat;->merge(Ljava/lang/CharSequence;Lcom/htc/protobuf/ExtensionRegistry;Lcom/htc/protobuf/Message$Builder;)V

    .line 786
    return-void
.end method

.method public static merge(Ljava/lang/Readable;Lcom/htc/protobuf/ExtensionRegistry;Lcom/htc/protobuf/Message$Builder;)V
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 805
    invoke-static {p0}, Lcom/htc/protobuf/TextFormat;->toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/htc/protobuf/TextFormat;->merge(Ljava/lang/CharSequence;Lcom/htc/protobuf/ExtensionRegistry;Lcom/htc/protobuf/Message$Builder;)V

    .line 806
    return-void
.end method

.method public static merge(Ljava/lang/Readable;Lcom/htc/protobuf/Message$Builder;)V
    .locals 1
    .parameter "input"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 775
    invoke-static {}, Lcom/htc/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/htc/protobuf/ExtensionRegistry;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/htc/protobuf/TextFormat;->merge(Ljava/lang/Readable;Lcom/htc/protobuf/ExtensionRegistry;Lcom/htc/protobuf/Message$Builder;)V

    .line 776
    return-void
.end method

.method private static mergeField(Lcom/htc/protobuf/TextFormat$Tokenizer;Lcom/htc/protobuf/ExtensionRegistry;Lcom/htc/protobuf/Message$Builder;)V
    .locals 13
    .parameter "tokenizer"
    .parameter "extensionRegistry"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 852
    invoke-interface {p2}, Lcom/htc/protobuf/Message$Builder;->getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v9

    .line 853
    .local v9, type:Lcom/htc/protobuf/Descriptors$Descriptor;
    const/4 v2, 0x0

    .line 855
    .local v2, extension:Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;
    const-string v11, "["

    invoke-virtual {p0, v11}, Lcom/htc/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 857
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 859
    .local v6, name:Ljava/lang/StringBuilder;
    :goto_0
    const-string v11, "."

    invoke-virtual {p0, v11}, Lcom/htc/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 860
    const/16 v11, 0x2e

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 861
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 864
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/htc/protobuf/ExtensionRegistry;->findExtensionByName(Ljava/lang/String;)Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v2

    .line 866
    if-nez v2, :cond_1

    .line 867
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

    .line 869
    :cond_1
    iget-object v11, v2, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v11}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v11

    if-eq v11, v9, :cond_2

    .line 870
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

    .line 875
    :cond_2
    const-string v11, "]"

    invoke-virtual {p0, v11}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    .line 877
    iget-object v3, v2, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 908
    .end local v6           #name:Ljava/lang/StringBuilder;
    .local v3, field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    :cond_3
    const/4 v10, 0x0

    .line 910
    .local v10, value:Ljava/lang/Object;
    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v11

    sget-object v12, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v11, v12, :cond_c

    .line 911
    const-string v11, ":"

    invoke-virtual {p0, v11}, Lcom/htc/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    .line 914
    const-string v11, "<"

    invoke-virtual {p0, v11}, Lcom/htc/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 915
    const-string v0, ">"

    .line 922
    .local v0, endToken:Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_8

    .line 923
    invoke-interface {p2, v3}, Lcom/htc/protobuf/Message$Builder;->newBuilderForField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/Message$Builder;

    move-result-object v8

    .line 928
    .local v8, subBuilder:Lcom/htc/protobuf/Message$Builder;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 929
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->atEnd()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 930
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

    .line 879
    .end local v0           #endToken:Ljava/lang/String;
    .end local v3           #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    .end local v8           #subBuilder:Lcom/htc/protobuf/Message$Builder;
    .end local v10           #value:Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v6

    .line 880
    .local v6, name:Ljava/lang/String;
    invoke-virtual {v9, v6}, Lcom/htc/protobuf/Descriptors$Descriptor;->findFieldByName(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    move-result-object v3

    .line 885
    .restart local v3       #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    if-nez v3, :cond_5

    .line 888
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 889
    .local v5, lowerName:Ljava/lang/String;
    invoke-virtual {v9, v5}, Lcom/htc/protobuf/Descriptors$Descriptor;->findFieldByName(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    move-result-object v3

    .line 891
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v11

    sget-object v12, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v11, v12, :cond_5

    .line 892
    const/4 v3, 0x0

    .line 896
    .end local v5           #lowerName:Ljava/lang/String;
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

    .line 898
    const/4 v3, 0x0

    .line 901
    :cond_6
    if-nez v3, :cond_3

    .line 902
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

    .line 917
    .end local v6           #name:Ljava/lang/String;
    .restart local v10       #value:Ljava/lang/Object;
    :cond_7
    const-string v11, "{"

    invoke-virtual {p0, v11}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    .line 918
    const-string v0, "}"

    .restart local v0       #endToken:Ljava/lang/String;
    goto/16 :goto_1

    .line 925
    :cond_8
    iget-object v11, v2, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/htc/protobuf/Message;

    invoke-interface {v11}, Lcom/htc/protobuf/Message;->newBuilderForType()Lcom/htc/protobuf/Message$Builder;

    move-result-object v8

    .restart local v8       #subBuilder:Lcom/htc/protobuf/Message$Builder;
    goto/16 :goto_2

    .line 933
    :cond_9
    invoke-static {p0, p1, v8}, Lcom/htc/protobuf/TextFormat;->mergeField(Lcom/htc/protobuf/TextFormat$Tokenizer;Lcom/htc/protobuf/ExtensionRegistry;Lcom/htc/protobuf/Message$Builder;)V

    goto/16 :goto_2

    .line 936
    :cond_a
    invoke-interface {v8}, Lcom/htc/protobuf/Message$Builder;->build()Lcom/htc/protobuf/Message;

    move-result-object v10

    .line 1013
    .end local v0           #endToken:Ljava/lang/String;
    .end local v8           #subBuilder:Lcom/htc/protobuf/Message$Builder;
    .end local v10           #value:Ljava/lang/Object;
    :cond_b
    :goto_3
    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1014
    invoke-interface {p2, v3, v10}, Lcom/htc/protobuf/Message$Builder;->addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;

    .line 1018
    :goto_4
    return-void

    .line 939
    .restart local v10       #value:Ljava/lang/Object;
    :cond_c
    const-string v11, ":"

    invoke-virtual {p0, v11}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    .line 941
    sget-object v11, Lcom/htc/protobuf/TextFormat$1;->$SwitchMap$com$htc$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    goto :goto_3

    .line 945
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeInt32()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 946
    .local v10, value:Ljava/lang/Integer;
    goto :goto_3

    .line 951
    .local v10, value:Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeInt64()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 952
    .local v10, value:Ljava/lang/Long;
    goto :goto_3

    .line 956
    .local v10, value:Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeUInt32()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 957
    .local v10, value:Ljava/lang/Integer;
    goto :goto_3

    .line 961
    .local v10, value:Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeUInt64()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 962
    .local v10, value:Ljava/lang/Long;
    goto :goto_3

    .line 965
    .local v10, value:Ljava/lang/Object;
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeFloat()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 966
    .local v10, value:Ljava/lang/Float;
    goto :goto_3

    .line 969
    .local v10, value:Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeDouble()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 970
    .local v10, value:Ljava/lang/Double;
    goto :goto_3

    .line 973
    .local v10, value:Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeBoolean()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 974
    .local v10, value:Ljava/lang/Boolean;
    goto :goto_3

    .line 977
    .local v10, value:Ljava/lang/Object;
    :pswitch_7
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeString()Ljava/lang/String;

    move-result-object v10

    .line 978
    .local v10, value:Ljava/lang/String;
    goto :goto_3

    .line 981
    .local v10, value:Ljava/lang/Object;
    :pswitch_8
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeByteString()Lcom/htc/protobuf/ByteString;

    move-result-object v10

    .line 982
    .local v10, value:Lcom/htc/protobuf/ByteString;
    goto :goto_3

    .line 985
    .local v10, value:Ljava/lang/Object;
    :pswitch_9
    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    .line 987
    .local v1, enumType:Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->lookingAtInteger()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 988
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeInt32()I

    move-result v7

    .line 989
    .local v7, number:I
    invoke-virtual {v1, v7}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v10

    .line 990
    .local v10, value:Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    if-nez v10, :cond_b

    .line 991
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

    .line 996
    .end local v7           #number:I
    .local v10, value:Ljava/lang/Object;
    :cond_d
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 997
    .local v4, id:Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->findValueByName(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v10

    .line 998
    .local v10, value:Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    if-nez v10, :cond_b

    .line 999
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

    .line 1009
    .end local v1           #enumType:Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .end local v4           #id:Ljava/lang/String;
    .local v10, value:Ljava/lang/Object;
    :pswitch_a
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Can\'t get here."

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1016
    .end local v10           #value:Ljava/lang/Object;
    :cond_e
    invoke-interface {p2, v3, v10}, Lcom/htc/protobuf/Message$Builder;->setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;

    goto/16 :goto_4

    .line 941
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
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 1202
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/htc/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static parseInt64(Ljava/lang/String;)J
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1222
    invoke-static {p0, v0, v0}, Lcom/htc/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseInteger(Ljava/lang/String;ZZ)J
    .locals 10
    .parameter "text"
    .parameter "isSigned"
    .parameter "isLong"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 1240
    const/4 v3, 0x0

    .line 1242
    .local v3, pos:I
    const/4 v1, 0x0

    .line 1243
    .local v1, negative:Z
    const-string v7, "-"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1244
    if-nez p1, :cond_0

    .line 1245
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

    .line 1247
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 1248
    const/4 v1, 0x1

    .line 1251
    :cond_1
    const/16 v4, 0xa

    .line 1252
    .local v4, radix:I
    const-string v7, "0x"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1253
    add-int/lit8 v3, v3, 0x2

    .line 1254
    const/16 v4, 0x10

    .line 1259
    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1261
    .local v2, numberText:Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 1262
    .local v5, result:J
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x10

    if-ge v7, v8, :cond_8

    .line 1264
    invoke-static {v2, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    .line 1265
    if-eqz v1, :cond_3

    .line 1266
    neg-long v5, v5

    .line 1272
    :cond_3
    if-nez p2, :cond_e

    .line 1273
    if-eqz p1, :cond_6

    .line 1274
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v5, v7

    if-gtz v7, :cond_4

    const-wide/32 v7, -0x80000000

    cmp-long v7, v5, v7

    if-gez v7, :cond_e

    .line 1275
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

    .line 1255
    .end local v2           #numberText:Ljava/lang/String;
    .end local v5           #result:J
    :cond_5
    const-string v7, "0"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1256
    const/16 v4, 0x8

    goto :goto_0

    .line 1279
    .restart local v2       #numberText:Ljava/lang/String;
    .restart local v5       #result:J
    :cond_6
    const-wide v7, 0x100000000L

    cmp-long v7, v5, v7

    if-gez v7, :cond_7

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_e

    .line 1280
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

    .line 1286
    :cond_8
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1287
    .local v0, bigValue:Ljava/math/BigInteger;
    if-eqz v1, :cond_9

    .line 1288
    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    .line 1292
    :cond_9
    if-nez p2, :cond_b

    .line 1293
    if-eqz p1, :cond_a

    .line 1294
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x1f

    if-le v7, v8, :cond_d

    .line 1295
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

    .line 1299
    :cond_a
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x20

    if-le v7, v8, :cond_d

    .line 1300
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

    .line 1305
    :cond_b
    if-eqz p1, :cond_c

    .line 1306
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x3f

    if-le v7, v8, :cond_d

    .line 1307
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

    .line 1311
    :cond_c
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x40

    if-le v7, v8, :cond_d

    .line 1312
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

    .line 1318
    :cond_d
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    .line 1321
    .end local v0           #bigValue:Ljava/math/BigInteger;
    :cond_e
    return-wide v5
.end method

.method static parseUInt32(Ljava/lang/String;)I
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1213
    invoke-static {p0, v0, v0}, Lcom/htc/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static parseUInt64(Ljava/lang/String;)J
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 1233
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/htc/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static print(Lcom/htc/protobuf/Message;Lcom/htc/protobuf/TextFormat$TextGenerator;)V
    .locals 4
    .parameter "message"
    .parameter "generator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-interface {p0}, Lcom/htc/protobuf/Message;->getAllFields()Ljava/util/Map;

    move-result-object v2

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

    .line 114
    .local v0, field:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/htc/protobuf/TextFormat;->printField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/htc/protobuf/TextFormat$TextGenerator;)V

    goto :goto_0

    .line 116
    .end local v0           #field:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    :cond_0
    invoke-interface {p0}, Lcom/htc/protobuf/Message;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/htc/protobuf/TextFormat;->printUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;Lcom/htc/protobuf/TextFormat$TextGenerator;)V

    .line 117
    return-void
.end method

.method public static print(Lcom/htc/protobuf/Message;Ljava/lang/Appendable;)V
    .locals 2
    .parameter "message"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/htc/protobuf/TextFormat$TextGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/htc/protobuf/TextFormat$1;)V

    .line 66
    .local v0, generator:Lcom/htc/protobuf/TextFormat$TextGenerator;
    invoke-static {p0, v0}, Lcom/htc/protobuf/TextFormat;->print(Lcom/htc/protobuf/Message;Lcom/htc/protobuf/TextFormat$TextGenerator;)V

    .line 67
    return-void
.end method

.method public static print(Lcom/htc/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V
    .locals 2
    .parameter "fields"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/htc/protobuf/TextFormat$TextGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/htc/protobuf/TextFormat$1;)V

    .line 74
    .local v0, generator:Lcom/htc/protobuf/TextFormat$TextGenerator;
    invoke-static {p0, v0}, Lcom/htc/protobuf/TextFormat;->printUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;Lcom/htc/protobuf/TextFormat$TextGenerator;)V

    .line 75
    return-void
.end method

.method private static printField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/htc/protobuf/TextFormat$TextGenerator;)V
    .locals 3
    .parameter "field"
    .parameter "value"
    .parameter "generator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 147
    .local v0, element:Ljava/lang/Object;
    invoke-static {p0, v0, p2}, Lcom/htc/protobuf/TextFormat;->printSingleField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/htc/protobuf/TextFormat$TextGenerator;)V

    goto :goto_0

    .line 150
    .end local v0           #element:Ljava/lang/Object;
    .end local v1           #i$:Ljava/util/Iterator;
    .restart local p1
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/protobuf/TextFormat;->printSingleField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/htc/protobuf/TextFormat$TextGenerator;)V

    .line 152
    .end local p1
    :cond_1
    return-void
.end method

.method public static printField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 2
    .parameter "field"
    .parameter "value"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/htc/protobuf/TextFormat$TextGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/htc/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/htc/protobuf/TextFormat$1;)V

    .line 124
    .local v0, generator:Lcom/htc/protobuf/TextFormat$TextGenerator;
    invoke-static {p0, p1, v0}, Lcom/htc/protobuf/TextFormat;->printField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/htc/protobuf/TextFormat$TextGenerator;)V

    .line 125
    return-void
.end method

.method public static printFieldToString(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "field"
    .parameter "value"

    .prologue
    .line 130
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v1, text:Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v1}, Lcom/htc/protobuf/TextFormat;->printField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V

    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 133
    .end local v1           #text:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Writing to a StringBuilder threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static printFieldValue(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/htc/protobuf/TextFormat$TextGenerator;)V
    .locals 2
    .parameter "field"
    .parameter "value"
    .parameter "generator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    sget-object v0, Lcom/htc/protobuf/TextFormat$1;->$SwitchMap$com$htc$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 245
    .end local p1
    :goto_0
    return-void

    .line 211
    .restart local p1
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 216
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/TextFormat;->unsignedToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    .restart local p1
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/protobuf/TextFormat;->unsignedToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 225
    .restart local p1
    :pswitch_3
    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 226
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Lcom/htc/protobuf/TextFormat;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 227
    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 231
    .restart local p1
    :pswitch_4
    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 232
    check-cast p1, Lcom/htc/protobuf/ByteString;

    .end local p1
    invoke-static {p1}, Lcom/htc/protobuf/TextFormat;->escapeBytes(Lcom/htc/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 233
    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 237
    .restart local p1
    :pswitch_5
    check-cast p1, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 242
    .restart local p1
    :pswitch_6
    check-cast p1, Lcom/htc/protobuf/Message;

    .end local p1
    invoke-static {p1, p2}, Lcom/htc/protobuf/TextFormat;->print(Lcom/htc/protobuf/Message;Lcom/htc/protobuf/TextFormat$TextGenerator;)V

    goto :goto_0

    .line 200
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
    .parameter "field"
    .parameter "value"
    .parameter "generator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    const-string v0, "["

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 161
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

    .line 166
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 170
    :goto_0
    const-string v0, "]"

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 180
    :goto_1
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_4

    .line 181
    const-string v0, " {\n"

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {p2}, Lcom/htc/protobuf/TextFormat$TextGenerator;->indent()V

    .line 187
    :goto_2
    invoke-static {p0, p1, p2}, Lcom/htc/protobuf/TextFormat;->printFieldValue(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/htc/protobuf/TextFormat$TextGenerator;)V

    .line 189
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 190
    invoke-virtual {p2}, Lcom/htc/protobuf/TextFormat$TextGenerator;->outdent()V

    .line 191
    const-string v0, "}"

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 193
    :cond_0
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 194
    return-void

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 184
    :cond_4
    const-string v0, ": "

    invoke-virtual {p2, v0}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public static printToString(Lcom/htc/protobuf/Message;)Ljava/lang/String;
    .locals 4
    .parameter "message"

    .prologue
    .line 83
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v1, text:Ljava/lang/StringBuilder;
    invoke-static {p0, v1}, Lcom/htc/protobuf/TextFormat;->print(Lcom/htc/protobuf/Message;Ljava/lang/Appendable;)V

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 86
    .end local v1           #text:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Writing to a StringBuilder threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static printToString(Lcom/htc/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 4
    .parameter "fields"

    .prologue
    .line 99
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v1, text:Ljava/lang/StringBuilder;
    invoke-static {p0, v1}, Lcom/htc/protobuf/TextFormat;->print(Lcom/htc/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V

    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 102
    .end local v1           #text:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Writing to a StringBuilder threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static printUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;Lcom/htc/protobuf/TextFormat$TextGenerator;)V
    .locals 14
    .parameter "unknownFields"
    .parameter "generator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 251
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

    .line 252
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/protobuf/UnknownFieldSet$Field;>;"
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

    .line 253
    .local v4, prefix:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/UnknownFieldSet$Field;

    .line 255
    .local v1, field:Lcom/htc/protobuf/UnknownFieldSet$Field;
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->getVarintList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 256
    .local v5, value:J
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 257
    const-string v7, ": "

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 258
    invoke-static {v5, v6}, Lcom/htc/protobuf/TextFormat;->unsignedToString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 259
    const-string v7, "\n"

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 261
    .end local v5           #value:J
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

    .line 262
    .local v5, value:I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 263
    const-string v7, ": "

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    move-object v7, v8

    .line 264
    check-cast v7, Ljava/util/Locale;

    const-string v9, "0x%08x"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v7, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 265
    const-string v7, "\n"

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 267
    .end local v5           #value:I
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

    .line 268
    .local v5, value:J
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 269
    const-string v7, ": "

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    move-object v7, v8

    .line 270
    check-cast v7, Ljava/util/Locale;

    const-string v9, "0x%016x"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v7, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 271
    const-string v7, "\n"

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 273
    .end local v5           #value:J
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

    .line 274
    .local v5, value:Lcom/htc/protobuf/ByteString;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 275
    const-string v7, ": \""

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 276
    invoke-static {v5}, Lcom/htc/protobuf/TextFormat;->escapeBytes(Lcom/htc/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 277
    const-string v7, "\"\n"

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 279
    .end local v5           #value:Lcom/htc/protobuf/ByteString;
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

    .line 280
    .local v5, value:Lcom/htc/protobuf/UnknownFieldSet;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 281
    const-string v7, " {\n"

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {p1}, Lcom/htc/protobuf/TextFormat$TextGenerator;->indent()V

    .line 283
    invoke-static {v5, p1}, Lcom/htc/protobuf/TextFormat;->printUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;Lcom/htc/protobuf/TextFormat$TextGenerator;)V

    .line 284
    invoke-virtual {p1}, Lcom/htc/protobuf/TextFormat$TextGenerator;->outdent()V

    .line 285
    const-string v7, "}\n"

    invoke-virtual {p1, v7}, Lcom/htc/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 288
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/htc/protobuf/UnknownFieldSet$Field;>;"
    .end local v1           #field:Lcom/htc/protobuf/UnknownFieldSet$Field;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #prefix:Ljava/lang/String;
    .end local v5           #value:Lcom/htc/protobuf/UnknownFieldSet;
    :cond_5
    return-void
.end method

.method private static toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 815
    .local v2, text:Ljava/lang/StringBuilder;
    const/16 v3, 0x1000

    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 817
    .local v0, buffer:Ljava/nio/CharBuffer;
    :goto_0
    invoke-interface {p0, v0}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    .line 818
    .local v1, n:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 824
    return-object v2

    .line 821
    :cond_0
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 822
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static unescapeBytes(Ljava/lang/CharSequence;)Lcom/htc/protobuf/ByteString;
    .locals 10
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5c

    const/16 v9, 0x27

    .line 1072
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    new-array v5, v6, [B

    .line 1073
    .local v5, result:[B
    const/4 v3, 0x0

    .line 1074
    .local v3, pos:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 1075
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1076
    .local v0, c:C
    if-ne v0, v8, :cond_6

    .line 1077
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 1078
    add-int/lit8 v2, v2, 0x1

    .line 1079
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1080
    invoke-static {v0}, Lcom/htc/protobuf/TextFormat;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1082
    invoke-static {v0}, Lcom/htc/protobuf/TextFormat;->digitValue(C)I

    move-result v1

    .line 1083
    .local v1, code:I
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

    .line 1084
    add-int/lit8 v2, v2, 0x1

    .line 1085
    mul-int/lit8 v6, v1, 0x8

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/htc/protobuf/TextFormat;->digitValue(C)I

    move-result v7

    add-int v1, v6, v7

    .line 1087
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

    .line 1088
    add-int/lit8 v2, v2, 0x1

    .line 1089
    mul-int/lit8 v6, v1, 0x8

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/htc/protobuf/TextFormat;->digitValue(C)I

    move-result v7

    add-int v1, v6, v7

    .line 1091
    :cond_1
    add-int/lit8 v4, v3, 0x1

    .end local v3           #pos:I
    .local v4, pos:I
    int-to-byte v6, v1

    aput-byte v6, v5, v3

    move v3, v4

    .line 1074
    .end local v1           #code:I
    .end local v4           #pos:I
    .restart local v3       #pos:I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1093
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 1123
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

    .line 1094
    :sswitch_0
    add-int/lit8 v4, v3, 0x1

    .end local v3           #pos:I
    .restart local v4       #pos:I
    const/4 v6, 0x7

    aput-byte v6, v5, v3

    move v3, v4

    .end local v4           #pos:I
    .restart local v3       #pos:I
    goto :goto_1

    .line 1095
    :sswitch_1
    add-int/lit8 v4, v3, 0x1

    .end local v3           #pos:I
    .restart local v4       #pos:I
    const/16 v6, 0x8

    aput-byte v6, v5, v3

    move v3, v4

    .end local v4           #pos:I
    .restart local v3       #pos:I
    goto :goto_1

    .line 1096
    :sswitch_2
    add-int/lit8 v4, v3, 0x1

    .end local v3           #pos:I
    .restart local v4       #pos:I
    const/16 v6, 0xc

    aput-byte v6, v5, v3

    move v3, v4

    .end local v4           #pos:I
    .restart local v3       #pos:I
    goto :goto_1

    .line 1097
    :sswitch_3
    add-int/lit8 v4, v3, 0x1

    .end local v3           #pos:I
    .restart local v4       #pos:I
    const/16 v6, 0xa

    aput-byte v6, v5, v3

    move v3, v4

    .end local v4           #pos:I
    .restart local v3       #pos:I
    goto :goto_1

    .line 1098
    :sswitch_4
    add-int/lit8 v4, v3, 0x1

    .end local v3           #pos:I
    .restart local v4       #pos:I
    const/16 v6, 0xd

    aput-byte v6, v5, v3

    move v3, v4

    .end local v4           #pos:I
    .restart local v3       #pos:I
    goto :goto_1

    .line 1099
    :sswitch_5
    add-int/lit8 v4, v3, 0x1

    .end local v3           #pos:I
    .restart local v4       #pos:I
    const/16 v6, 0x9

    aput-byte v6, v5, v3

    move v3, v4

    .end local v4           #pos:I
    .restart local v3       #pos:I
    goto :goto_1

    .line 1100
    :sswitch_6
    add-int/lit8 v4, v3, 0x1

    .end local v3           #pos:I
    .restart local v4       #pos:I
    const/16 v6, 0xb

    aput-byte v6, v5, v3

    move v3, v4

    .end local v4           #pos:I
    .restart local v3       #pos:I
    goto :goto_1

    .line 1101
    :sswitch_7
    add-int/lit8 v4, v3, 0x1

    .end local v3           #pos:I
    .restart local v4       #pos:I
    aput-byte v8, v5, v3

    move v3, v4

    .end local v4           #pos:I
    .restart local v3       #pos:I
    goto :goto_1

    .line 1102
    :sswitch_8
    add-int/lit8 v4, v3, 0x1

    .end local v3           #pos:I
    .restart local v4       #pos:I
    aput-byte v9, v5, v3

    move v3, v4

    .end local v4           #pos:I
    .restart local v3       #pos:I
    goto :goto_1

    .line 1103
    :sswitch_9
    add-int/lit8 v4, v3, 0x1

    .end local v3           #pos:I
    .restart local v4       #pos:I
    const/16 v6, 0x22

    aput-byte v6, v5, v3

    move v3, v4

    .end local v4           #pos:I
    .restart local v3       #pos:I
    goto :goto_1

    .line 1107
    :sswitch_a
    const/4 v1, 0x0

    .line 1108
    .restart local v1       #code:I
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

    .line 1109
    add-int/lit8 v2, v2, 0x1

    .line 1110
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/htc/protobuf/TextFormat;->digitValue(C)I

    move-result v1

    .line 1115
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

    .line 1116
    add-int/lit8 v2, v2, 0x1

    .line 1117
    mul-int/lit8 v6, v1, 0x10

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/htc/protobuf/TextFormat;->digitValue(C)I

    move-result v7

    add-int v1, v6, v7

    .line 1119
    :cond_3
    add-int/lit8 v4, v3, 0x1

    .end local v3           #pos:I
    .restart local v4       #pos:I
    int-to-byte v6, v1

    aput-byte v6, v5, v3

    move v3, v4

    .line 1120
    .end local v4           #pos:I
    .restart local v3       #pos:I
    goto/16 :goto_1

    .line 1112
    :cond_4
    new-instance v6, Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v7, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {v6, v7}, Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1128
    .end local v1           #code:I
    :cond_5
    new-instance v6, Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v7, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {v6, v7}, Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1132
    :cond_6
    add-int/lit8 v4, v3, 0x1

    .end local v3           #pos:I
    .restart local v4       #pos:I
    int-to-byte v6, v0

    aput-byte v6, v5, v3

    move v3, v4

    .end local v4           #pos:I
    .restart local v3       #pos:I
    goto/16 :goto_1

    .line 1136
    .end local v0           #c:C
    :cond_7
    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcom/htc/protobuf/ByteString;->copyFrom([BII)Lcom/htc/protobuf/ByteString;

    move-result-object v6

    return-object v6

    .line 1093
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
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    .prologue
    .line 1166
    invoke-static {p0}, Lcom/htc/protobuf/TextFormat;->unescapeBytes(Ljava/lang/CharSequence;)Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static unsignedToString(I)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    .line 292
    if-ltz p0, :cond_0

    .line 293
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 295
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
    .parameter "value"

    .prologue
    .line 301
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 302
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 306
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

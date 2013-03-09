.class public final Lcom/google/protobuf/TextFormat;
.super Ljava/lang/Object;
.source "TextFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TextFormat$1;,
        Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;,
        Lcom/google/protobuf/TextFormat$ParseException;,
        Lcom/google/protobuf/TextFormat$Tokenizer;,
        Lcom/google/protobuf/TextFormat$TextGenerator;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private static digitValue(C)I
    .locals 1
    .parameter "c"

    .prologue
    .line 1203
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1204
    add-int/lit8 v0, p0, -0x30

    .line 1208
    :goto_0
    return v0

    .line 1205
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    .line 1206
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 1208
    :cond_1
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method static escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;
    .locals 4
    .parameter "input"

    .prologue
    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1052
    .local v1, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1053
    invoke-virtual {p0, v2}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v0

    .line 1054
    .local v0, b:B
    sparse-switch v0, :sswitch_data_0

    .line 1067
    const/16 v3, 0x20

    if-lt v0, v3, :cond_0

    .line 1068
    int-to-char v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1052
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1056
    :sswitch_0
    const-string v3, "\\a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1057
    :sswitch_1
    const-string v3, "\\b"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1058
    :sswitch_2
    const-string v3, "\\f"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1059
    :sswitch_3
    const-string v3, "\\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1060
    :sswitch_4
    const-string v3, "\\r"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1061
    :sswitch_5
    const-string v3, "\\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1062
    :sswitch_6
    const-string v3, "\\v"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1063
    :sswitch_7
    const-string v3, "\\\\"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1064
    :sswitch_8
    const-string v3, "\\\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1065
    :sswitch_9
    const-string v3, "\\\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1070
    :cond_0
    const/16 v3, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1071
    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1072
    ushr-int/lit8 v3, v0, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1073
    and-int/lit8 v3, v0, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1078
    .end local v0           #b:B
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1054
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
    .line 1173
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isHex(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1192
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
    .line 1187
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

.method public static merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 852
    new-instance v0, Lcom/google/protobuf/TextFormat$Tokenizer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/TextFormat$Tokenizer;-><init>(Ljava/lang/CharSequence;Lcom/google/protobuf/TextFormat$1;)V

    .line 854
    .local v0, tokenizer:Lcom/google/protobuf/TextFormat$Tokenizer;
    :goto_0
    invoke-virtual {v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->atEnd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 855
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/TextFormat;->mergeField(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    goto :goto_0

    .line 857
    :cond_0
    return-void
.end method

.method public static merge(Ljava/lang/CharSequence;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .parameter "input"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 801
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistry;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/google/protobuf/TextFormat;->merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    .line 802
    return-void
.end method

.method public static merge(Ljava/lang/Readable;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
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
    .line 821
    invoke-static {p0}, Lcom/google/protobuf/TextFormat;->toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/TextFormat;->merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    .line 822
    return-void
.end method

.method public static merge(Ljava/lang/Readable;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .parameter "input"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 791
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistry;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/google/protobuf/TextFormat;->merge(Ljava/lang/Readable;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    .line 792
    return-void
.end method

.method private static mergeField(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .locals 13
    .parameter "tokenizer"
    .parameter "extensionRegistry"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 868
    invoke-interface {p2}, Lcom/google/protobuf/Message$Builder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v9

    .line 869
    .local v9, type:Lcom/google/protobuf/Descriptors$Descriptor;
    const/4 v2, 0x0

    .line 871
    .local v2, extension:Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    const-string v11, "["

    invoke-virtual {p0, v11}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 873
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 875
    .local v6, name:Ljava/lang/StringBuilder;
    :goto_0
    const-string v11, "."

    invoke-virtual {p0, v11}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 876
    const/16 v11, 0x2e

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 877
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 880
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/google/protobuf/ExtensionRegistry;->findExtensionByName(Ljava/lang/String;)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v2

    .line 882
    if-nez v2, :cond_1

    .line 883
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

    invoke-virtual {p0, v11}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v11

    throw v11

    .line 885
    :cond_1
    iget-object v11, v2, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v11}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v11

    if-eq v11, v9, :cond_2

    .line 886
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

    invoke-virtual {v9}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\"."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v11

    throw v11

    .line 891
    :cond_2
    const-string v11, "]"

    invoke-virtual {p0, v11}, Lcom/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    .line 893
    iget-object v3, v2, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 924
    .end local v6           #name:Ljava/lang/StringBuilder;
    .local v3, field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_3
    const/4 v10, 0x0

    .line 926
    .local v10, value:Ljava/lang/Object;
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v11

    sget-object v12, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v11, v12, :cond_c

    .line 927
    const-string v11, ":"

    invoke-virtual {p0, v11}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    .line 930
    const-string v11, "<"

    invoke-virtual {p0, v11}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 931
    const-string v0, ">"

    .line 938
    .local v0, endToken:Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_8

    .line 939
    invoke-interface {p2, v3}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;

    move-result-object v8

    .line 944
    .local v8, subBuilder:Lcom/google/protobuf/Message$Builder;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 945
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->atEnd()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 946
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

    invoke-virtual {p0, v11}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v11

    throw v11

    .line 895
    .end local v0           #endToken:Ljava/lang/String;
    .end local v3           #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .end local v8           #subBuilder:Lcom/google/protobuf/Message$Builder;
    .end local v10           #value:Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v6

    .line 896
    .local v6, name:Ljava/lang/String;
    invoke-virtual {v9, v6}, Lcom/google/protobuf/Descriptors$Descriptor;->findFieldByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v3

    .line 901
    .restart local v3       #field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    if-nez v3, :cond_5

    .line 904
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 905
    .local v5, lowerName:Ljava/lang/String;
    invoke-virtual {v9, v5}, Lcom/google/protobuf/Descriptors$Descriptor;->findFieldByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v3

    .line 907
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v11

    sget-object v12, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v11, v12, :cond_5

    .line 908
    const/4 v3, 0x0

    .line 912
    .end local v5           #lowerName:Ljava/lang/String;
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v11

    sget-object v12, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v11, v12, :cond_6

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 914
    const/4 v3, 0x0

    .line 917
    :cond_6
    if-nez v3, :cond_3

    .line 918
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Message type \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

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

    invoke-virtual {p0, v11}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v11

    throw v11

    .line 933
    .end local v6           #name:Ljava/lang/String;
    .restart local v10       #value:Ljava/lang/Object;
    :cond_7
    const-string v11, "{"

    invoke-virtual {p0, v11}, Lcom/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    .line 934
    const-string v0, "}"

    .restart local v0       #endToken:Ljava/lang/String;
    goto/16 :goto_1

    .line 941
    :cond_8
    iget-object v11, v2, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/google/protobuf/Message;

    invoke-interface {v11}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v8

    .restart local v8       #subBuilder:Lcom/google/protobuf/Message$Builder;
    goto/16 :goto_2

    .line 949
    :cond_9
    invoke-static {p0, p1, v8}, Lcom/google/protobuf/TextFormat;->mergeField(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    goto/16 :goto_2

    .line 952
    :cond_a
    invoke-interface {v8}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object v10

    .line 1029
    .end local v0           #endToken:Ljava/lang/String;
    .end local v8           #subBuilder:Lcom/google/protobuf/Message$Builder;
    .end local v10           #value:Ljava/lang/Object;
    :cond_b
    :goto_3
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1030
    invoke-interface {p2, v3, v10}, Lcom/google/protobuf/Message$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    .line 1034
    :goto_4
    return-void

    .line 955
    .restart local v10       #value:Ljava/lang/Object;
    :cond_c
    const-string v11, ":"

    invoke-virtual {p0, v11}, Lcom/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    .line 957
    sget-object v11, Lcom/google/protobuf/TextFormat$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    goto :goto_3

    .line 961
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeInt32()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 962
    .local v10, value:Ljava/lang/Integer;
    goto :goto_3

    .line 967
    .local v10, value:Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeInt64()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 968
    .local v10, value:Ljava/lang/Long;
    goto :goto_3

    .line 972
    .local v10, value:Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeUInt32()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 973
    .local v10, value:Ljava/lang/Integer;
    goto :goto_3

    .line 977
    .local v10, value:Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeUInt64()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 978
    .local v10, value:Ljava/lang/Long;
    goto :goto_3

    .line 981
    .local v10, value:Ljava/lang/Object;
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeFloat()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 982
    .local v10, value:Ljava/lang/Float;
    goto :goto_3

    .line 985
    .local v10, value:Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeDouble()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 986
    .local v10, value:Ljava/lang/Double;
    goto :goto_3

    .line 989
    .local v10, value:Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeBoolean()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 990
    .local v10, value:Ljava/lang/Boolean;
    goto :goto_3

    .line 993
    .local v10, value:Ljava/lang/Object;
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeString()Ljava/lang/String;

    move-result-object v10

    .line 994
    .local v10, value:Ljava/lang/String;
    goto :goto_3

    .line 997
    .local v10, value:Ljava/lang/Object;
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    .line 998
    .local v10, value:Lcom/google/protobuf/ByteString;
    goto :goto_3

    .line 1001
    .local v10, value:Ljava/lang/Object;
    :pswitch_9
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    .line 1003
    .local v1, enumType:Lcom/google/protobuf/Descriptors$EnumDescriptor;
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->lookingAtInteger()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1004
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeInt32()I

    move-result v7

    .line 1005
    .local v7, number:I
    invoke-virtual {v1, v7}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v10

    .line 1006
    .local v10, value:Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    if-nez v10, :cond_b

    .line 1007
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Enum type \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

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

    invoke-virtual {p0, v11}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v11

    throw v11

    .line 1012
    .end local v7           #number:I
    .local v10, value:Ljava/lang/Object;
    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 1013
    .local v4, id:Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v10

    .line 1014
    .local v10, value:Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    if-nez v10, :cond_b

    .line 1015
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Enum type \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

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

    invoke-virtual {p0, v11}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v11

    throw v11

    .line 1025
    .end local v1           #enumType:Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .end local v4           #id:Ljava/lang/String;
    .local v10, value:Ljava/lang/Object;
    :pswitch_a
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Can\'t get here."

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1032
    .end local v10           #value:Ljava/lang/Object;
    :cond_e
    invoke-interface {p2, v3, v10}, Lcom/google/protobuf/Message$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto/16 :goto_4

    .line 957
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
    .line 1218
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

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

    .line 1238
    invoke-static {p0, v0, v0}, Lcom/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

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
    .line 1256
    const/4 v3, 0x0

    .line 1258
    .local v3, pos:I
    const/4 v1, 0x0

    .line 1259
    .local v1, negative:Z
    const-string v7, "-"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1260
    if-nez p1, :cond_0

    .line 1261
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

    .line 1263
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 1264
    const/4 v1, 0x1

    .line 1267
    :cond_1
    const/16 v4, 0xa

    .line 1268
    .local v4, radix:I
    const-string v7, "0x"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1269
    add-int/lit8 v3, v3, 0x2

    .line 1270
    const/16 v4, 0x10

    .line 1275
    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1277
    .local v2, numberText:Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 1278
    .local v5, result:J
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x10

    if-ge v7, v8, :cond_8

    .line 1280
    invoke-static {v2, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    .line 1281
    if-eqz v1, :cond_3

    .line 1282
    neg-long v5, v5

    .line 1288
    :cond_3
    if-nez p2, :cond_e

    .line 1289
    if-eqz p1, :cond_6

    .line 1290
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v5, v7

    if-gtz v7, :cond_4

    const-wide/32 v7, -0x80000000

    cmp-long v7, v5, v7

    if-gez v7, :cond_e

    .line 1291
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

    .line 1271
    .end local v2           #numberText:Ljava/lang/String;
    .end local v5           #result:J
    :cond_5
    const-string v7, "0"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1272
    const/16 v4, 0x8

    goto :goto_0

    .line 1295
    .restart local v2       #numberText:Ljava/lang/String;
    .restart local v5       #result:J
    :cond_6
    const-wide v7, 0x100000000L

    cmp-long v7, v5, v7

    if-gez v7, :cond_7

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_e

    .line 1296
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

    .line 1302
    :cond_8
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1303
    .local v0, bigValue:Ljava/math/BigInteger;
    if-eqz v1, :cond_9

    .line 1304
    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    .line 1308
    :cond_9
    if-nez p2, :cond_b

    .line 1309
    if-eqz p1, :cond_a

    .line 1310
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x1f

    if-le v7, v8, :cond_d

    .line 1311
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

    .line 1315
    :cond_a
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x20

    if-le v7, v8, :cond_d

    .line 1316
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

    .line 1321
    :cond_b
    if-eqz p1, :cond_c

    .line 1322
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x3f

    if-le v7, v8, :cond_d

    .line 1323
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

    .line 1327
    :cond_c
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x40

    if-le v7, v8, :cond_d

    .line 1328
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

    .line 1334
    :cond_d
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    .line 1337
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

    .line 1229
    invoke-static {p0, v0, v0}, Lcom/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

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
    .line 1249
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static print(Lcom/google/protobuf/Message;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    .locals 4
    .parameter "message"
    .parameter "generator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-interface {p0}, Lcom/google/protobuf/Message;->getAllFields()Ljava/util/Map;

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

    .line 115
    .local v0, field:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/google/protobuf/TextFormat;->printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    goto :goto_0

    .line 117
    .end local v0           #field:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    :cond_0
    invoke-interface {p0}, Lcom/google/protobuf/Message;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/protobuf/TextFormat;->printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 118
    return-void
.end method

.method public static print(Lcom/google/protobuf/Message;Ljava/lang/Appendable;)V
    .locals 2
    .parameter "message"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    .line 67
    .local v0, generator:Lcom/google/protobuf/TextFormat$TextGenerator;
    invoke-static {p0, v0}, Lcom/google/protobuf/TextFormat;->print(Lcom/google/protobuf/Message;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 68
    return-void
.end method

.method public static print(Lcom/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V
    .locals 2
    .parameter "fields"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    .line 75
    .local v0, generator:Lcom/google/protobuf/TextFormat$TextGenerator;
    invoke-static {p0, v0}, Lcom/google/protobuf/TextFormat;->printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 76
    return-void
.end method

.method private static printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V
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
    .line 145
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
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

    .line 148
    .local v0, element:Ljava/lang/Object;
    invoke-static {p0, v0, p2}, Lcom/google/protobuf/TextFormat;->printSingleField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    goto :goto_0

    .line 151
    .end local v0           #element:Ljava/lang/Object;
    .end local v1           #i$:Ljava/util/Iterator;
    .restart local p1
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/TextFormat;->printSingleField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 153
    .end local p1
    :cond_1
    return-void
.end method

.method public static printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V
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
    .line 124
    new-instance v0, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    .line 125
    .local v0, generator:Lcom/google/protobuf/TextFormat$TextGenerator;
    invoke-static {p0, p1, v0}, Lcom/google/protobuf/TextFormat;->printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 126
    return-void
.end method

.method public static printFieldToString(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "field"
    .parameter "value"

    .prologue
    .line 131
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v1, text:Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v1}, Lcom/google/protobuf/TextFormat;->printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V

    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 134
    .end local v1           #text:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Writing to a StringBuilder threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static printFieldValue(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V
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
    .line 201
    sget-object v0, Lcom/google/protobuf/TextFormat$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 246
    .end local p1
    :goto_0
    return-void

    .line 212
    .restart local p1
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 217
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->unsignedToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 222
    .restart local p1
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/TextFormat;->unsignedToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 226
    .restart local p1
    :pswitch_3
    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 227
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Lcom/google/protobuf/TextFormat;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 228
    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 232
    .restart local p1
    :pswitch_4
    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 233
    check-cast p1, Lcom/google/protobuf/ByteString;

    .end local p1
    invoke-static {p1}, Lcom/google/protobuf/TextFormat;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 234
    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 238
    .restart local p1
    :pswitch_5
    check-cast p1, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .end local p1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 243
    .restart local p1
    :pswitch_6
    check-cast p1, Lcom/google/protobuf/Message;

    .end local p1
    invoke-static {p1, p2}, Lcom/google/protobuf/TextFormat;->print(Lcom/google/protobuf/Message;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    goto :goto_0

    .line 201
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

.method private static printSingleField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V
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
    .line 159
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    const-string v0, "["

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getExtensionScope()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 171
    :goto_0
    const-string v0, "]"

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 181
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_4

    .line 182
    const-string v0, " {\n"

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$TextGenerator;->indent()V

    .line 188
    :goto_2
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/TextFormat;->printFieldValue(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 190
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 191
    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$TextGenerator;->outdent()V

    .line 192
    const-string v0, "}"

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 194
    :cond_0
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 195
    return-void

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_3

    .line 175
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 177
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 185
    :cond_4
    const-string v0, ": "

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public static printToString(Lcom/google/protobuf/Message;)Ljava/lang/String;
    .locals 4
    .parameter "message"

    .prologue
    .line 84
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v1, text:Ljava/lang/StringBuilder;
    invoke-static {p0, v1}, Lcom/google/protobuf/TextFormat;->print(Lcom/google/protobuf/Message;Ljava/lang/Appendable;)V

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 87
    .end local v1           #text:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Writing to a StringBuilder threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static printToString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 4
    .parameter "fields"

    .prologue
    .line 100
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v1, text:Ljava/lang/StringBuilder;
    invoke-static {p0, v1}, Lcom/google/protobuf/TextFormat;->print(Lcom/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 103
    .end local v1           #text:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Writing to a StringBuilder threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V
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

    .line 252
    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSet;->asMap()Ljava/util/Map;

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

    .line 253
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/protobuf/UnknownFieldSet$Field;>;"
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

    .line 254
    .local v4, prefix:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/UnknownFieldSet$Field;

    .line 256
    .local v1, field:Lcom/google/protobuf/UnknownFieldSet$Field;
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getVarintList()Ljava/util/List;

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

    .line 257
    .local v5, value:J
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 258
    const-string v7, ": "

    invoke-virtual {p1, v7}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 259
    invoke-static {v5, v6}, Lcom/google/protobuf/TextFormat;->unsignedToString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 260
    const-string v7, "\n"

    invoke-virtual {p1, v7}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 262
    .end local v5           #value:J
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getFixed32List()Ljava/util/List;

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

    .line 263
    .local v5, value:I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 264
    const-string v7, ": "

    invoke-virtual {p1, v7}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    move-object v7, v8

    .line 265
    check-cast v7, Ljava/util/Locale;

    const-string v9, "0x%08x"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v7, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 266
    const-string v7, "\n"

    invoke-virtual {p1, v7}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 268
    .end local v5           #value:I
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getFixed64List()Ljava/util/List;

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

    .line 269
    .local v5, value:J
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 270
    const-string v7, ": "

    invoke-virtual {p1, v7}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    move-object v7, v8

    .line 271
    check-cast v7, Ljava/util/Locale;

    const-string v9, "0x%016x"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v7, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 272
    const-string v7, "\n"

    invoke-virtual {p1, v7}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 274
    .end local v5           #value:J
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getLengthDelimitedList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/ByteString;

    .line 275
    .local v5, value:Lcom/google/protobuf/ByteString;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 276
    const-string v7, ": \""

    invoke-virtual {p1, v7}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 277
    invoke-static {v5}, Lcom/google/protobuf/TextFormat;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 278
    const-string v7, "\"\n"

    invoke-virtual {p1, v7}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 280
    .end local v5           #value:Lcom/google/protobuf/ByteString;
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getGroupList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/UnknownFieldSet;

    .line 281
    .local v5, value:Lcom/google/protobuf/UnknownFieldSet;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 282
    const-string v7, " {\n"

    invoke-virtual {p1, v7}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$TextGenerator;->indent()V

    .line 284
    invoke-static {v5, p1}, Lcom/google/protobuf/TextFormat;->printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 285
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$TextGenerator;->outdent()V

    .line 286
    const-string v7, "}\n"

    invoke-virtual {p1, v7}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 289
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/protobuf/UnknownFieldSet$Field;>;"
    .end local v1           #field:Lcom/google/protobuf/UnknownFieldSet$Field;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #prefix:Ljava/lang/String;
    .end local v5           #value:Lcom/google/protobuf/UnknownFieldSet;
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
    .line 830
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    .local v2, text:Ljava/lang/StringBuilder;
    const/16 v3, 0x1000

    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 833
    .local v0, buffer:Ljava/nio/CharBuffer;
    :goto_0
    invoke-interface {p0, v0}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    .line 834
    .local v1, n:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 840
    return-object v2

    .line 837
    :cond_0
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 838
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static unescapeBytes(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;
    .locals 10
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5c

    const/16 v9, 0x27

    .line 1088
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    new-array v5, v6, [B

    .line 1089
    .local v5, result:[B
    const/4 v3, 0x0

    .line 1090
    .local v3, pos:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 1091
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1092
    .local v0, c:C
    if-ne v0, v8, :cond_6

    .line 1093
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 1094
    add-int/lit8 v2, v2, 0x1

    .line 1095
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1096
    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1098
    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->digitValue(C)I

    move-result v1

    .line 1099
    .local v1, code:I
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1100
    add-int/lit8 v2, v2, 0x1

    .line 1101
    mul-int/lit8 v6, v1, 0x8

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/TextFormat;->digitValue(C)I

    move-result v7

    add-int v1, v6, v7

    .line 1103
    :cond_0
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1104
    add-int/lit8 v2, v2, 0x1

    .line 1105
    mul-int/lit8 v6, v1, 0x8

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/TextFormat;->digitValue(C)I

    move-result v7

    add-int v1, v6, v7

    .line 1107
    :cond_1
    add-int/lit8 v4, v3, 0x1

    .end local v3           #pos:I
    .local v4, pos:I
    int-to-byte v6, v1

    aput-byte v6, v5, v3

    move v3, v4

    .line 1090
    .end local v1           #code:I
    .end local v4           #pos:I
    .restart local v3       #pos:I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1109
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 1139
    new-instance v6, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

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

    invoke-direct {v6, v7}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1110
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

    .line 1111
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

    .line 1112
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

    .line 1113
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

    .line 1114
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

    .line 1115
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

    .line 1116
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

    .line 1117
    :sswitch_7
    add-int/lit8 v4, v3, 0x1

    .end local v3           #pos:I
    .restart local v4       #pos:I
    aput-byte v8, v5, v3

    move v3, v4

    .end local v4           #pos:I
    .restart local v3       #pos:I
    goto :goto_1

    .line 1118
    :sswitch_8
    add-int/lit8 v4, v3, 0x1

    .end local v3           #pos:I
    .restart local v4       #pos:I
    aput-byte v9, v5, v3

    move v3, v4

    .end local v4           #pos:I
    .restart local v3       #pos:I
    goto :goto_1

    .line 1119
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

    .line 1123
    :sswitch_a
    const/4 v1, 0x0

    .line 1124
    .restart local v1       #code:I
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->isHex(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1125
    add-int/lit8 v2, v2, 0x1

    .line 1126
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->digitValue(C)I

    move-result v1

    .line 1131
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->isHex(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1132
    add-int/lit8 v2, v2, 0x1

    .line 1133
    mul-int/lit8 v6, v1, 0x10

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/TextFormat;->digitValue(C)I

    move-result v7

    add-int v1, v6, v7

    .line 1135
    :cond_3
    add-int/lit8 v4, v3, 0x1

    .end local v3           #pos:I
    .restart local v4       #pos:I
    int-to-byte v6, v1

    aput-byte v6, v5, v3

    move v3, v4

    .line 1136
    .end local v4           #pos:I
    .restart local v3       #pos:I
    goto/16 :goto_1

    .line 1128
    :cond_4
    new-instance v6, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v7, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {v6, v7}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1144
    .end local v1           #code:I
    :cond_5
    new-instance v6, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v7, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {v6, v7}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1148
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

    .line 1152
    .end local v0           #c:C
    :cond_7
    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v6

    return-object v6

    .line 1109
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
            Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    .prologue
    .line 1182
    invoke-static {p0}, Lcom/google/protobuf/TextFormat;->unescapeBytes(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static unsignedToString(I)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    .line 293
    if-ltz p0, :cond_0

    .line 294
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 296
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
    .line 302
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 303
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 307
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

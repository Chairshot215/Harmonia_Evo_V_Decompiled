.class public final Lcom/google/protobuf/ExtensionRegistry;
.super Lcom/google/protobuf/ExtensionRegistryLite;
.source "ExtensionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/ExtensionRegistry$1;,
        Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;,
        Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/google/protobuf/ExtensionRegistry;


# instance fields
.field private final extensionsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final extensionsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;",
            "Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Lcom/google/protobuf/ExtensionRegistry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/ExtensionRegistry;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/ExtensionRegistry;->EMPTY:Lcom/google/protobuf/ExtensionRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/google/protobuf/ExtensionRegistryLite;-><init>()V

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->extensionsByNumber:Ljava/util/Map;

    .line 198
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/google/protobuf/ExtensionRegistryLite;-><init>(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 202
    iget-object v0, p1, Lcom/google/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    .line 203
    iget-object v0, p1, Lcom/google/protobuf/ExtensionRegistry;->extensionsByNumber:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->extensionsByNumber:Ljava/util/Map;

    .line 205
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "empty"

    .prologue
    .line 211
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;-><init>(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 212
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    .line 213
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->extensionsByNumber:Ljava/util/Map;

    .line 215
    return-void
.end method

.method private add(Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;)V
    .locals 5
    .parameter "extension"

    .prologue
    .line 219
    iget-object v1, p1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ExtensionRegistry.add() was given a FieldDescriptor for a regular (non-extension) field."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v1, p0, Lcom/google/protobuf/ExtensionRegistry;->extensionsByNumber:Ljava/util/Map;

    new-instance v2, Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;

    iget-object v3, p1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v3

    iget-object v4, p1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;I)V

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 232
    .local v0, field:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getExtensionScope()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 239
    iget-object v1, p0, Lcom/google/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_1
    return-void
.end method

.method public static getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistry;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/google/protobuf/ExtensionRegistry;->EMPTY:Lcom/google/protobuf/ExtensionRegistry;

    return-object v0
.end method

.method public static newInstance()Lcom/google/protobuf/ExtensionRegistry;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/google/protobuf/ExtensionRegistry;

    invoke-direct {v0}, Lcom/google/protobuf/ExtensionRegistry;-><init>()V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ExtensionRegistry.add() must be provided a default instance when adding an embedded message extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    new-instance v0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    invoke-direct {v0, p1, v2, v2}, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;Lcom/google/protobuf/ExtensionRegistry$1;)V

    invoke-direct {p0, v0}, Lcom/google/protobuf/ExtensionRegistry;->add(Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;)V

    .line 180
    return-void
.end method

.method public add(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)V
    .locals 2
    .parameter "type"
    .parameter "defaultInstance"

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ExtensionRegistry.add() provided a default instance for a non-message extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    new-instance v0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;Lcom/google/protobuf/ExtensionRegistry$1;)V

    invoke-direct {p0, v0}, Lcom/google/protobuf/ExtensionRegistry;->add(Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;)V

    .line 190
    return-void
.end method

.method public add(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p1, extension:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<**>;"
    const/4 v3, 0x0

    .line 158
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_1

    .line 160
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/Message;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered message-type extension had null default instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    new-instance v0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/Message;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;Lcom/google/protobuf/ExtensionRegistry$1;)V

    invoke-direct {p0, v0}, Lcom/google/protobuf/ExtensionRegistry;->add(Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_1
    new-instance v0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;Lcom/google/protobuf/ExtensionRegistry$1;)V

    invoke-direct {p0, v0}, Lcom/google/protobuf/ExtensionRegistry;->add(Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;)V

    goto :goto_0
.end method

.method public findExtensionByName(Ljava/lang/String;)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 1
    .parameter "fullName"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    return-object v0
.end method

.method public findExtensionByNumber(Lcom/google/protobuf/Descriptors$Descriptor;I)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 2
    .parameter "containingType"
    .parameter "fieldNumber"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;

    invoke-direct {v1, p1, p2}, Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    return-object v0
.end method

.method public getUnmodifiable()Lcom/google/protobuf/ExtensionRegistry;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/google/protobuf/ExtensionRegistry;

    invoke-direct {v0, p0}, Lcom/google/protobuf/ExtensionRegistry;-><init>(Lcom/google/protobuf/ExtensionRegistry;)V

    return-object v0
.end method

.method public bridge synthetic getUnmodifiable()Lcom/google/protobuf/ExtensionRegistryLite;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/protobuf/ExtensionRegistry;->getUnmodifiable()Lcom/google/protobuf/ExtensionRegistry;

    move-result-object v0

    return-object v0
.end method

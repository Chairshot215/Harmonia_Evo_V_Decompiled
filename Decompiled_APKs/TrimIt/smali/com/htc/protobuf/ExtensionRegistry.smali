.class public final Lcom/htc/protobuf/ExtensionRegistry;
.super Lcom/htc/protobuf/ExtensionRegistryLite;
.source "ExtensionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/ExtensionRegistry$1;,
        Lcom/htc/protobuf/ExtensionRegistry$DescriptorIntPair;,
        Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/htc/protobuf/ExtensionRegistry;


# instance fields
.field private final extensionsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final extensionsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/htc/protobuf/ExtensionRegistry$DescriptorIntPair;",
            "Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 211
    new-instance v0, Lcom/htc/protobuf/ExtensionRegistry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/htc/protobuf/ExtensionRegistry;-><init>(Z)V

    sput-object v0, Lcom/htc/protobuf/ExtensionRegistry;->EMPTY:Lcom/htc/protobuf/ExtensionRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/htc/protobuf/ExtensionRegistryLite;-><init>()V

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/protobuf/ExtensionRegistry;->extensionsByNumber:Ljava/util/Map;

    .line 193
    return-void
.end method

.method private constructor <init>(Lcom/htc/protobuf/ExtensionRegistry;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/htc/protobuf/ExtensionRegistryLite;-><init>(Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 197
    iget-object v0, p1, Lcom/htc/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    .line 198
    iget-object v0, p1, Lcom/htc/protobuf/ExtensionRegistry;->extensionsByNumber:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/ExtensionRegistry;->extensionsByNumber:Ljava/util/Map;

    .line 200
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "empty"

    .prologue
    .line 206
    invoke-static {}, Lcom/htc/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/htc/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/protobuf/ExtensionRegistryLite;-><init>(Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 207
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    .line 208
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/ExtensionRegistry;->extensionsByNumber:Ljava/util/Map;

    .line 210
    return-void
.end method

.method private add(Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;)V
    .locals 5
    .parameter "extension"

    .prologue
    .line 214
    iget-object v1, p1, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ExtensionRegistry.add() was given a FieldDescriptor for a regular (non-extension) field."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    iget-object v2, p1, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v2}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v1, p0, Lcom/htc/protobuf/ExtensionRegistry;->extensionsByNumber:Ljava/util/Map;

    new-instance v2, Lcom/htc/protobuf/ExtensionRegistry$DescriptorIntPair;

    iget-object v3, p1, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v3

    iget-object v4, p1, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v4}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/htc/protobuf/ExtensionRegistry$DescriptorIntPair;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;I)V

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p1, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 227
    .local v0, field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$Descriptor;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getExtensionScope()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 234
    iget-object v1, p0, Lcom/htc/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_1
    return-void
.end method

.method public static getEmptyRegistry()Lcom/htc/protobuf/ExtensionRegistry;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/htc/protobuf/ExtensionRegistry;->EMPTY:Lcom/htc/protobuf/ExtensionRegistry;

    return-object v0
.end method

.method public static newInstance()Lcom/htc/protobuf/ExtensionRegistry;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/htc/protobuf/ExtensionRegistry;

    invoke-direct {v0}, Lcom/htc/protobuf/ExtensionRegistry;-><init>()V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ExtensionRegistry.add() must be provided a default instance when adding an embedded message extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    new-instance v0, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;

    invoke-direct {v0, p1, v2, v2}, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;-><init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Lcom/htc/protobuf/Message;Lcom/htc/protobuf/ExtensionRegistry$1;)V

    invoke-direct {p0, v0}, Lcom/htc/protobuf/ExtensionRegistry;->add(Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;)V

    .line 175
    return-void
.end method

.method public add(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Lcom/htc/protobuf/Message;)V
    .locals 2
    .parameter "type"
    .parameter "defaultInstance"

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ExtensionRegistry.add() provided a default instance for a non-message extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    new-instance v0, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;-><init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Lcom/htc/protobuf/Message;Lcom/htc/protobuf/ExtensionRegistry$1;)V

    invoke-direct {p0, v0}, Lcom/htc/protobuf/ExtensionRegistry;->add(Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;)V

    .line 185
    return-void
.end method

.method public add(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p1, extension:Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension<**>;"
    const/4 v3, 0x0

    .line 158
    invoke-virtual {p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 160
    new-instance v0, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;

    invoke-virtual {p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->getMessageDefaultInstance()Lcom/htc/protobuf/Message;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;-><init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Lcom/htc/protobuf/Message;Lcom/htc/protobuf/ExtensionRegistry$1;)V

    invoke-direct {p0, v0}, Lcom/htc/protobuf/ExtensionRegistry;->add(Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    new-instance v0, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;

    invoke-virtual {p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3}, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;-><init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Lcom/htc/protobuf/Message;Lcom/htc/protobuf/ExtensionRegistry$1;)V

    invoke-direct {p0, v0}, Lcom/htc/protobuf/ExtensionRegistry;->add(Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;)V

    goto :goto_0
.end method

.method public findExtensionByName(Ljava/lang/String;)Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 1
    .parameter "fullName"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/protobuf/ExtensionRegistry;->extensionsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;

    return-object v0
.end method

.method public findExtensionByNumber(Lcom/htc/protobuf/Descriptors$Descriptor;I)Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 2
    .parameter "containingType"
    .parameter "fieldNumber"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/protobuf/ExtensionRegistry;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/htc/protobuf/ExtensionRegistry$DescriptorIntPair;

    invoke-direct {v1, p1, p2}, Lcom/htc/protobuf/ExtensionRegistry$DescriptorIntPair;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;

    return-object v0
.end method

.method public getUnmodifiable()Lcom/htc/protobuf/ExtensionRegistry;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/htc/protobuf/ExtensionRegistry;

    invoke-direct {v0, p0}, Lcom/htc/protobuf/ExtensionRegistry;-><init>(Lcom/htc/protobuf/ExtensionRegistry;)V

    return-object v0
.end method

.method public bridge synthetic getUnmodifiable()Lcom/htc/protobuf/ExtensionRegistryLite;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/htc/protobuf/ExtensionRegistry;->getUnmodifiable()Lcom/htc/protobuf/ExtensionRegistry;

    move-result-object v0

    return-object v0
.end method

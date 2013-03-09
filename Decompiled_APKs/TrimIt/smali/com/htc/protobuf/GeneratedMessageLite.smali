.class public abstract Lcom/htc/protobuf/GeneratedMessageLite;
.super Lcom/htc/protobuf/AbstractMessageLite;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/GeneratedMessageLite$1;,
        Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;,
        Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;,
        Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;,
        Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;,
        Lcom/htc/protobuf/GeneratedMessageLite$Builder;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/protobuf/AbstractMessageLite;-><init>()V

    return-void
.end method

.method public static newGeneratedExtension(Lcom/htc/protobuf/MessageLite;Ljava/lang/Object;Lcom/htc/protobuf/MessageLite;Lcom/htc/protobuf/Internal$EnumLiteMap;ILcom/htc/protobuf/WireFormat$FieldType;)Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 8
    .parameter
    .parameter
    .parameter "messageDefaultInstance"
    .parameter
    .parameter "number"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/htc/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/htc/protobuf/MessageLite;",
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<*>;I",
            "Lcom/htc/protobuf/WireFormat$FieldType;",
            ")",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TContainingType;TType;>;"
        }
    .end annotation

    .prologue
    .local p0, containingTypeDefaultInstance:Lcom/htc/protobuf/MessageLite;,"TContainingType;"
    .local p1, defaultValue:Ljava/lang/Object;,"TType;"
    .local p3, enumTypeMap:Lcom/htc/protobuf/Internal$EnumLiteMap;,"Lcom/htc/protobuf/Internal$EnumLiteMap<*>;"
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 415
    new-instance v7, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v0, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/htc/protobuf/Internal$EnumLiteMap;ILcom/htc/protobuf/WireFormat$FieldType;ZZLcom/htc/protobuf/GeneratedMessageLite$1;)V

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/htc/protobuf/MessageLite;Ljava/lang/Object;Lcom/htc/protobuf/MessageLite;Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;Lcom/htc/protobuf/GeneratedMessageLite$1;)V

    return-object v7
.end method

.method public static newRepeatedGeneratedExtension(Lcom/htc/protobuf/MessageLite;Lcom/htc/protobuf/MessageLite;Lcom/htc/protobuf/Internal$EnumLiteMap;ILcom/htc/protobuf/WireFormat$FieldType;Z)Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 9
    .parameter
    .parameter "messageDefaultInstance"
    .parameter
    .parameter "number"
    .parameter "type"
    .parameter "isPacked"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/htc/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/htc/protobuf/MessageLite;",
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<*>;I",
            "Lcom/htc/protobuf/WireFormat$FieldType;",
            "Z)",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TContainingType;",
            "Ljava/util/List",
            "<TType;>;>;"
        }
    .end annotation

    .prologue
    .local p0, containingTypeDefaultInstance:Lcom/htc/protobuf/MessageLite;,"TContainingType;"
    .local p2, enumTypeMap:Lcom/htc/protobuf/Internal$EnumLiteMap;,"Lcom/htc/protobuf/Internal$EnumLiteMap<*>;"
    const/4 v6, 0x0

    .line 431
    new-instance v7, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    new-instance v0, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v4, 0x1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/htc/protobuf/Internal$EnumLiteMap;ILcom/htc/protobuf/WireFormat$FieldType;ZZLcom/htc/protobuf/GeneratedMessageLite$1;)V

    move-object v1, v7

    move-object v2, p0

    move-object v3, v8

    move-object v4, p1

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/htc/protobuf/MessageLite;Ljava/lang/Object;Lcom/htc/protobuf/MessageLite;Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;Lcom/htc/protobuf/GeneratedMessageLite$1;)V

    return-object v7
.end method

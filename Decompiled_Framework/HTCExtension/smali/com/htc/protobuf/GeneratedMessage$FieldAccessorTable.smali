.class public final Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
.super Ljava/lang/Object;
.source "GeneratedMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldAccessorTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor;,
        Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;,
        Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;,
        Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$SingularEnumFieldAccessor;,
        Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;,
        Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;,
        Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;
    }
.end annotation


# instance fields
.field private final descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private final fields:[Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;


# direct methods
.method public constructor <init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/Descriptors$Descriptor;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/protobuf/GeneratedMessage;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/protobuf/GeneratedMessage$Builder;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    iput-object v2, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->fields:[Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->fields:[Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->fields:[Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor;

    aget-object v4, p2, v1

    invoke-direct {v3, v0, v4, p3, p4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedMessageFieldAccessor;-><init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->fields:[Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;

    aget-object v4, p2, v1

    invoke-direct {v3, v0, v4, p3, p4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;-><init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->fields:[Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;

    aget-object v4, p2, v1

    invoke-direct {v3, v0, v4, p3, p4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;-><init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->fields:[Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;

    aget-object v4, p2, v1

    invoke-direct {v3, v0, v4, p3, p4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;-><init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->fields:[Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$SingularEnumFieldAccessor;

    aget-object v4, p2, v1

    invoke-direct {v3, v0, v4, p3, p4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$SingularEnumFieldAccessor;-><init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->fields:[Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    new-instance v3, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;

    aget-object v4, p2, v1

    invoke-direct {v3, v0, v4, p3, p4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;-><init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v3, v2, v1

    goto :goto_1

    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    return-object v0
.end method

.method private getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;
    .locals 2

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type does not have extensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->fields:[Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

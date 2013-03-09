.class public final Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
.super Ljava/lang/Object;
.source "ExtensionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ExtensionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtensionInfo"
.end annotation


# instance fields
.field public final defaultInstance:Lcom/google/protobuf/Message;

.field public final descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 1
    .parameter "descriptor"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/google/protobuf/Message;

    .line 124
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)V
    .locals 0
    .parameter "descriptor"
    .parameter "defaultInstance"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 128
    iput-object p2, p0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/google/protobuf/Message;

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;Lcom/google/protobuf/ExtensionRegistry$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)V

    return-void
.end method

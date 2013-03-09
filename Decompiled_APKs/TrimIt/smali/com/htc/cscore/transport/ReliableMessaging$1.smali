.class final Lcom/htc/cscore/transport/ReliableMessaging$1;
.super Ljava/lang/Object;
.source "ReliableMessaging.java"

# interfaces
.implements Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ReliableMessaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/ExtensionRegistry;
    .locals 7
    .parameter "root"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 845
    invoke-static {p1}, Lcom/htc/cscore/transport/ReliableMessaging;->access$1902(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 846
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging;->access$002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 848
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging;->access$000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Type"

    aput-object v3, v2, v5

    const-string v3, "SequenceId"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "SequenceNum"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "PayloadBuf"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    const-class v4, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging;->access$102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 854
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging;->access$1302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 856
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging;->access$1300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Messages"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages;

    const-class v4, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessages$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging;->access$1402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 862
    const/4 v0, 0x0

    return-object v0
.end method

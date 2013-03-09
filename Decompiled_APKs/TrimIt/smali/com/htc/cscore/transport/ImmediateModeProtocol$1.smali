.class final Lcom/htc/cscore/transport/ImmediateModeProtocol$1;
.super Ljava/lang/Object;
.source "ImmediateModeProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ImmediateModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/ExtensionRegistry;
    .locals 10
    .parameter "root"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2004
    invoke-static {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$4802(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 2005
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 2007
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Type"

    aput-object v3, v2, v5

    const-string v3, "MinimumInterval"

    aput-object v3, v2, v6

    const-string v3, "MaximumInterval"

    aput-object v3, v2, v7

    const-string v3, "ServerTime"

    aput-object v3, v2, v8

    const-string v3, "QueuesWithData"

    aput-object v3, v2, v9

    const-class v3, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    const-class v4, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2013
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$1402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 2015
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$1400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "AuthTicket"

    aput-object v3, v2, v5

    const-string v3, "Email"

    aput-object v3, v2, v6

    const-class v3, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    const-class v4, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$1502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2021
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$2302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 2023
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$2300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Interval"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    const-class v4, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$2402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2029
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$3002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 2031
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$3000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Latitude"

    aput-object v3, v2, v5

    const-string v3, "Longitude"

    aput-object v3, v2, v6

    const-class v3, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    const-class v4, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$3102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2037
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$3902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 2039
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$3900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Loc"

    aput-object v3, v2, v5

    const-string v3, "KeepAlive"

    aput-object v3, v2, v6

    const-class v3, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    const-class v4, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$4002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2045
    const/4 v0, 0x0

    return-object v0
.end method

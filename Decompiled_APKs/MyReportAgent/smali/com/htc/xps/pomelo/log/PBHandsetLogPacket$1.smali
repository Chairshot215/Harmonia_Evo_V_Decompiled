.class final Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$1;
.super Ljava/lang/Object;
.source "PBHandsetLogPacket.java"

# interfaces
.implements Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/PBHandsetLogPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 530
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/ExtensionRegistry;
    .locals 5
    .parameter "root"

    .prologue
    const/4 v4, 0x0

    .line 533
    invoke-static {p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket;->access$1402(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 534
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket;->access$002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 536
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket;->access$000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "DeviceInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Payload"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Lookup"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "CheckSum"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    const-class v4, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket;->access$102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 542
    const/4 v0, 0x0

    return-object v0
.end method

.class final Lcom/htc/xps/pomelo/log/PBCommonMessage$1;
.super Ljava/lang/Object;
.source "PBCommonMessage.java"

# interfaces
.implements Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/PBCommonMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1439
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

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

    .line 1442
    invoke-static {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->access$4902(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 1443
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->access$002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 1445
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->access$000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Region"

    aput-object v3, v2, v5

    const-string v3, "City"

    aput-object v3, v2, v6

    const-string v3, "TimeZone"

    aput-object v3, v2, v7

    const-string v3, "ModelId"

    aput-object v3, v2, v8

    const-string v3, "DeviceId"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "DeviceSN"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Cid"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "RomVersion"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "SenseVersion"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "PrivacyStatementVersion"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    const-class v4, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->access$102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1451
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->access$2502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 1453
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->access$2500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Key"

    aput-object v3, v2, v5

    const-string v3, "Value"

    aput-object v3, v2, v6

    const-class v3, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    const-class v4, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->access$2602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1459
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->access$3402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 1461
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->access$3400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AppId"

    aput-object v3, v2, v5

    const-string v3, "Category"

    aput-object v3, v2, v6

    const-string v3, "Timestamp"

    aput-object v3, v2, v7

    const-string v3, "Data"

    aput-object v3, v2, v8

    const-string v3, "Attachment"

    aput-object v3, v2, v9

    const-class v3, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    const-class v4, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->access$3502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1467
    const/4 v0, 0x0

    return-object v0
.end method

.class final Lcom/htc/cscore/transport/SyncProtocol$1;
.super Ljava/lang/Object;
.source "SyncProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55353
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

    .line 55356
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol;->access$155702(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 55357
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55359
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Value"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55365
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55367
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Value"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$Image;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55373
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$1402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55375
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$1400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AggregatePersonImage"

    aput-object v3, v2, v5

    const-string v3, "CustomRingtoneId"

    aput-object v3, v2, v6

    const-string v3, "DisplayName"

    aput-object v3, v2, v7

    const-string v3, "FriendStatus"

    aput-object v3, v2, v8

    const-string v3, "Id"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Persons"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "PersonsUpdated"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "SendToVoiceMail"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$1502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55381
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$3602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55383
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$3600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Person"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$3702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55389
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$4302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55391
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$4300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "AggregatePersonId"

    aput-object v3, v2, v5

    const-string v3, "Timestamp"

    aput-object v3, v2, v6

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$4402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55397
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$5202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55399
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$5200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PersonId"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$5302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55405
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$5902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55407
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$5900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AccountType"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$6002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55413
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$6602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55415
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$6600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Filename"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$6702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55421
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$7302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55423
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$7300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PersonImage"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$7402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55429
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$8002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55431
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$8000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PersonImage"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$8102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55437
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$8702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55439
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$8700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Person"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$8802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55445
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$9402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55447
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$9400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AggregatePersonId"

    aput-object v3, v2, v5

    const-string v3, "ContentType"

    aput-object v3, v2, v6

    const-string v3, "Data"

    aput-object v3, v2, v7

    const-string v3, "FileType"

    aput-object v3, v2, v8

    const-string v3, "Id"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Name"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$9502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55453
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$11302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55455
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$11300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AppId"

    aput-object v3, v2, v5

    const-string v3, "AppType"

    aput-object v3, v2, v6

    const-string v3, "Comment"

    aput-object v3, v2, v7

    const-string v3, "CommentCount"

    aput-object v3, v2, v8

    const-string v3, "FriendsCommentCount"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "FriendsLikeCount"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "LikeCount"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Liked"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "PopularCount"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$11402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55461
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$13602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55463
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$13600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "ErrorCode"

    aput-object v3, v2, v5

    const-string v3, "ErrorCodeType"

    aput-object v3, v2, v6

    const-string v3, "ErrorString"

    aput-object v3, v2, v7

    const-string v3, "IsServerError"

    aput-object v3, v2, v8

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$13702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55469
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$14902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55471
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$14900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Feature"

    aput-object v3, v2, v5

    const-string v3, "Id"

    aput-object v3, v2, v6

    const-string v3, "PhysicalDeviceModelID"

    aput-object v3, v2, v7

    const-string v3, "RegionId"

    aput-object v3, v2, v8

    const-string v3, "State"

    aput-object v3, v2, v9

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$15002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55477
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$16402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55479
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$16400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x14

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Address"

    aput-object v3, v2, v5

    const-string v3, "CreateDate"

    aput-object v3, v2, v6

    const-string v3, "Description"

    aput-object v3, v2, v7

    const-string v3, "FootprintCategories"

    aput-object v3, v2, v8

    const-string v3, "FootprintCategoriesUpdated"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "FootprintImages"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "FootprintImagesUpdated"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "FootprintMemo"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Id"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "ImageUrl"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "IsPrivate"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Latitude"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "Longitude"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "Name"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "Note"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "PhoneNumber"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "Rating"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "VoiceMemoTime"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "WebsiteURL"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$16502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55485
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$20702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55487
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$20700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Footprint"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$20802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55493
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$21402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55495
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$21400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "FootprintId"

    aput-object v3, v2, v5

    const-string v3, "Timestamp"

    aput-object v3, v2, v6

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$21502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55501
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$22302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55503
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$22300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FootprintImage"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$22402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55509
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$23002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55511
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$23000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FootprintMemo"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$23102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55517
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$23702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55519
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$23700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Footprint"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$23802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55525
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x15

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$24402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55527
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$24400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "FootprintCount"

    aput-object v3, v2, v5

    const-string v3, "Id"

    aput-object v3, v2, v6

    const-string v3, "Name"

    aput-object v3, v2, v7

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$24502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55533
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$25502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55535
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$25500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ContentType"

    aput-object v3, v2, v5

    const-string v3, "Data"

    aput-object v3, v2, v6

    const-string v3, "FileType"

    aput-object v3, v2, v7

    const-string v3, "FootprintId"

    aput-object v3, v2, v8

    const-string v3, "Id"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ImageType"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Name"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$25602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55541
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$27602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55543
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$27600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Data"

    aput-object v3, v2, v5

    const-string v3, "FileType"

    aput-object v3, v2, v6

    const-string v3, "FootprintId"

    aput-object v3, v2, v7

    const-string v3, "Id"

    aput-object v3, v2, v8

    const-string v3, "MemoTime"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Name"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$27702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55549
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$29502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55551
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$29500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "KEY"

    aput-object v3, v2, v6

    const-string v3, "RANK"

    aput-object v3, v2, v7

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$29602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55557
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$30602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55559
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$30600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$30702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55565
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$31302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55567
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$31300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "Message"

    aput-object v3, v2, v6

    const-string v3, "PersonId"

    aput-object v3, v2, v7

    const-string v3, "Status"

    aput-object v3, v2, v8

    const-string v3, "Timestamp"

    aput-object v3, v2, v9

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$31402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55573
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$32802(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55575
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$32800()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Body"

    aput-object v3, v2, v5

    const-string v3, "CreateDate"

    aput-object v3, v2, v6

    const-string v3, "HasViewed"

    aput-object v3, v2, v7

    const-string v3, "Id"

    aput-object v3, v2, v8

    const-string v3, "MessageAttachments"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "MessageAttachmentsUpdated"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "MessageRecipients"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "MessageRecipientsUpdated"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "MessageType"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "PudData"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Status"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Subject"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "ThreadId"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$32902(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55581
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$35902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55583
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$35900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Message"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$36002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55589
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$36602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55591
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$36600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "MessageId"

    aput-object v3, v2, v5

    const-string v3, "Timestamp"

    aput-object v3, v2, v6

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$36702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55597
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$37502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55599
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$37500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Message"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$37602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55605
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$38202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55607
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$38200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ContentType"

    aput-object v3, v2, v5

    const-string v3, "Data"

    aput-object v3, v2, v6

    const-string v3, "FileType"

    aput-object v3, v2, v7

    const-string v3, "Id"

    aput-object v3, v2, v8

    const-string v3, "MessageId"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Name"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$38302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55613
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$39902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55615
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$39900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "CanonicalPhoneNumber"

    aput-object v3, v2, v5

    const-string v3, "DisplayPhoneNumber"

    aput-object v3, v2, v6

    const-string v3, "Id"

    aput-object v3, v2, v7

    const-string v3, "ThreadId"

    aput-object v3, v2, v8

    const-string v3, "Timestamp"

    aput-object v3, v2, v9

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$40002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55621
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$41402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55623
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$41400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x19

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "FamilyName"

    aput-object v3, v2, v5

    const-string v3, "FirstName"

    aput-object v3, v2, v6

    const-string v3, "GivenName"

    aput-object v3, v2, v7

    const-string v3, "Id"

    aput-object v3, v2, v8

    const-string v3, "LastName"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "MiddleName"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "MyProfileAddresses"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "MyProfileAddressesUpdated"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "MyProfileEmailAddresses"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "MyProfileEmailAddressesUpdated"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "MyProfileEvents"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "MyProfileEventsUpdated"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "MyProfileImage"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "MyProfileInstantMessagingIDs"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "MyProfileInstantMessagingIDsUpdated"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "MyProfileNotes"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "MyProfileNotesUpdated"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "MyProfileOrganizations"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "MyProfileOrganizationsUpdated"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "MyProfilePhoneNumbers"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "MyProfilePhoneNumbersUpdated"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "MyProfileWebSites"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "MyProfileWebSitesUpdated"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "NameSuffix"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$41502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55629
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$46102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55631
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$46100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MyProfile"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$46202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55637
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$46802(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55639
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$46800()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MyProfile"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$46902(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55645
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$47502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55647
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$47500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AddressType"

    aput-object v3, v2, v5

    const-string v3, "City"

    aput-object v3, v2, v6

    const-string v3, "Country"

    aput-object v3, v2, v7

    const-string v3, "Id"

    aput-object v3, v2, v8

    const-string v3, "MyProfileId"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Priority"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Region"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "State"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Street1"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Street2"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "ZipCode"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$47602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55653
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$50402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55655
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$50400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "EmailAddress"

    aput-object v3, v2, v5

    const-string v3, "EmailAddressType"

    aput-object v3, v2, v6

    const-string v3, "Id"

    aput-object v3, v2, v7

    const-string v3, "MyProfileId"

    aput-object v3, v2, v8

    const-string v3, "Priority"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$50502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55661
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$52102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55663
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$52100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "EventDate"

    aput-object v3, v2, v5

    const-string v3, "EventName"

    aput-object v3, v2, v6

    const-string v3, "EventType"

    aput-object v3, v2, v7

    const-string v3, "Id"

    aput-object v3, v2, v8

    const-string v3, "MyProfileId"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Priority"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$52202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55669
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$54002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55671
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$54000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ContentType"

    aput-object v3, v2, v5

    const-string v3, "Data"

    aput-object v3, v2, v6

    const-string v3, "FileType"

    aput-object v3, v2, v7

    const-string v3, "Id"

    aput-object v3, v2, v8

    const-string v3, "MyProfile"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "MyProfileId"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Name"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$54102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55677
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$56102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55679
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$56100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "InstantMessagingID"

    aput-object v3, v2, v6

    const-string v3, "InstantMessagingType"

    aput-object v3, v2, v7

    const-string v3, "MyProfileId"

    aput-object v3, v2, v8

    const-string v3, "Priority"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$56202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55685
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$57802(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55687
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$57800()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "MyProfileId"

    aput-object v3, v2, v6

    const-string v3, "Note"

    aput-object v3, v2, v7

    const-string v3, "Priority"

    aput-object v3, v2, v8

    const-string v3, "Timestamp"

    aput-object v3, v2, v9

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$57902(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55693
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$59302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55695
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$59300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "MyProfileId"

    aput-object v3, v2, v6

    const-string v3, "OrganizationName"

    aput-object v3, v2, v7

    const-string v3, "OrganizationType"

    aput-object v3, v2, v8

    const-string v3, "Priority"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$59402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55701
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$61002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55703
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$61000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "CanonicalPhoneNumber"

    aput-object v3, v2, v5

    const-string v3, "DisplayPhoneNumber"

    aput-object v3, v2, v6

    const-string v3, "Id"

    aput-object v3, v2, v7

    const-string v3, "MyProfileId"

    aput-object v3, v2, v8

    const-string v3, "PhoneNumberType"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Priority"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$61102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55709
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$62902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55711
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$62900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "MyProfileId"

    aput-object v3, v2, v6

    const-string v3, "Priority"

    aput-object v3, v2, v7

    const-string v3, "Timestamp"

    aput-object v3, v2, v8

    const-string v3, "WebSite"

    aput-object v3, v2, v9

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$63002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55717
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$64402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55719
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$64400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "LastViewDashboards"

    aput-object v3, v2, v5

    const-string v3, "LastViewFootprints"

    aput-object v3, v2, v6

    const-string v3, "LastViewRecommends"

    aput-object v3, v2, v7

    const-string v3, "NewDashboardCount"

    aput-object v3, v2, v8

    const-string v3, "NewFootprintCount"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "NewMessagesCount"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "NewPeopleCount"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "NewRecommendsCount"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$64502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55725
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$66502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55727
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$66500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AccountType"

    aput-object v3, v2, v5

    const-string v3, "Id"

    aput-object v3, v2, v6

    const-string v3, "IsDefault"

    aput-object v3, v2, v7

    const-string v3, "Name"

    aput-object v3, v2, v8

    const-string v3, "PersonCount"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "RollupGroupId"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$66602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55733
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$68402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55735
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$68400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PeopleGroup"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$68502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55741
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x30

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$69102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55743
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$69100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PeopleGroups"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$69202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55749
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$69702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55751
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$69700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Mapping"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$69802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55757
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x32

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$70302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55759
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$70300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Mapping"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$70402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55765
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$70902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55767
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$70900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "PeopleGroupId"

    aput-object v3, v2, v5

    const-string v3, "Timestamp"

    aput-object v3, v2, v6

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$71002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55773
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$71802(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55775
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$71800()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PeopleGroup"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$71902(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55781
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$72502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55783
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$72500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x12

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AccountType"

    aput-object v3, v2, v5

    const-string v3, "AggregatedPersonId"

    aput-object v3, v2, v6

    const-string v3, "CompanyName"

    aput-object v3, v2, v7

    const-string v3, "FirstName"

    aput-object v3, v2, v8

    const-string v3, "Id"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "LastName"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Notes"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "PersonAddresses"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "PersonAddressesUpdated"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "PersonEmailAddresses"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "PersonEmailAddressesUpdated"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "PersonImage"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "PersonPhoneNumbers"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "PersonPhoneNumbersUpdated"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "PersonSettings"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "PersonSettingsUpdated"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "Title"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$72602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55789
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x36

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$76202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55791
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$76200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AddressType"

    aput-object v3, v2, v5

    const-string v3, "City"

    aput-object v3, v2, v6

    const-string v3, "Country"

    aput-object v3, v2, v7

    const-string v3, "Id"

    aput-object v3, v2, v8

    const-string v3, "PersonId"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Priority"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Region"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "State"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Street1"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Street2"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "ZipCode"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$76302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55797
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$79102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55799
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$79100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "EmailAddress"

    aput-object v3, v2, v5

    const-string v3, "EmailAddressType"

    aput-object v3, v2, v6

    const-string v3, "Id"

    aput-object v3, v2, v7

    const-string v3, "PersonId"

    aput-object v3, v2, v8

    const-string v3, "Priority"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$79202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55805
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x38

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$80802(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55807
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$80800()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ContentType"

    aput-object v3, v2, v5

    const-string v3, "Data"

    aput-object v3, v2, v6

    const-string v3, "FileType"

    aput-object v3, v2, v7

    const-string v3, "Id"

    aput-object v3, v2, v8

    const-string v3, "Name"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "PersonId"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$80902(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55813
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$82702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55815
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$82700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "CanonicalPhoneNumber"

    aput-object v3, v2, v5

    const-string v3, "DisplayPhoneNumber"

    aput-object v3, v2, v6

    const-string v3, "Id"

    aput-object v3, v2, v7

    const-string v3, "PersonId"

    aput-object v3, v2, v8

    const-string v3, "PhoneNumberType"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Priority"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$82802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55821
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$84602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55823
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$84600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "Name"

    aput-object v3, v2, v6

    const-string v3, "PersonId"

    aput-object v3, v2, v7

    const-string v3, "PersonSettingType"

    aput-object v3, v2, v8

    const-string v3, "Priority"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Value"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$84702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55829
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$86502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55831
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$86500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "PeopleGroupId"

    aput-object v3, v2, v6

    const-string v3, "PersonId"

    aput-object v3, v2, v7

    const-string v3, "Timestamp"

    aput-object v3, v2, v8

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$86602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55837
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$87802(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55839
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$87800()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "AppId"

    aput-object v3, v2, v5

    const-string v3, "AppURL"

    aput-object v3, v2, v6

    const-string v3, "Name"

    aput-object v3, v2, v7

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$87902(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55845
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$88902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55847
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$88900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Data"

    aput-object v3, v2, v5

    const-string v3, "Id"

    aput-object v3, v2, v6

    const-string v3, "MessageId"

    aput-object v3, v2, v7

    const-string v3, "Timestamp"

    aput-object v3, v2, v8

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$89002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55853
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$90202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55855
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$90200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AppId"

    aput-object v3, v2, v5

    const-string v3, "AppType"

    aput-object v3, v2, v6

    const-string v3, "AppURL"

    aput-object v3, v2, v7

    const-string v3, "Id"

    aput-object v3, v2, v8

    const-string v3, "Name"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "RecommendedApplicationIcon"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$90302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55861
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$92102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55863
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$92100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AppId"

    aput-object v3, v2, v5

    const-string v3, "AppType"

    aput-object v3, v2, v6

    const-string v3, "Comment"

    aput-object v3, v2, v7

    const-string v3, "CommentCreateDate"

    aput-object v3, v2, v8

    const-string v3, "Id"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "IsLike"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "LikeCreateDate"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$92202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55869
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$94202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55871
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$94200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AppsOnPhone"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$94302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55877
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x41

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$94902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55879
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$94900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Recommend"

    aput-object v3, v2, v5

    const-string v3, "IsLike"

    aput-object v3, v2, v6

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$95002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55885
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x42

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$95802(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55887
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$95800()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Wishlist"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$95902(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55893
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x43

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$96502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55895
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$96500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AppsOnPhone"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$96602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55901
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x44

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$97202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55903
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$97200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "AppId"

    aput-object v3, v2, v5

    const-string v3, "AppType"

    aput-object v3, v2, v6

    const-string v3, "IsLike"

    aput-object v3, v2, v7

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$97302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55909
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x45

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$98302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55911
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$98300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "AppId"

    aput-object v3, v2, v5

    const-string v3, "AppType"

    aput-object v3, v2, v6

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$98402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55917
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x46

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$99202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55919
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$99200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AppId"

    aput-object v3, v2, v5

    const-string v3, "AppType"

    aput-object v3, v2, v6

    const-string v3, "SortBy"

    aput-object v3, v2, v7

    const-string v3, "SortDescending"

    aput-object v3, v2, v8

    const-string v3, "Start"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Count"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$99302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55925
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x47

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$100902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55927
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$100900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "SortBy"

    aput-object v3, v2, v5

    const-string v3, "SortDescending"

    aput-object v3, v2, v6

    const-string v3, "Start"

    aput-object v3, v2, v7

    const-string v3, "Count"

    aput-object v3, v2, v8

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$101002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55933
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x48

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$102202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55935
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$102200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Keywords"

    aput-object v3, v2, v5

    const-string v3, "AppId"

    aput-object v3, v2, v6

    const-string v3, "SortBy"

    aput-object v3, v2, v7

    const-string v3, "SortDescending"

    aput-object v3, v2, v8

    const-string v3, "Start"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Count"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$102302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55941
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$103902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55943
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$103900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$104002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55949
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x4a

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$104402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55951
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$104400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$104502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55957
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x4b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$104902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55959
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$104900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "RecommendAppsOnPhone"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$105002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55965
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x4c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$105602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55967
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$105600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Recommend"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$105702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55973
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x4d

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$106302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55975
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$106300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Data"

    aput-object v3, v2, v5

    const-string v3, "FileType"

    aput-object v3, v2, v6

    const-string v3, "Id"

    aput-object v3, v2, v7

    const-string v3, "Name"

    aput-object v3, v2, v8

    const-string v3, "PhoneAppId"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$106402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55981
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x4e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$108002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55983
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$108000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AppId"

    aput-object v3, v2, v5

    const-string v3, "AppType"

    aput-object v3, v2, v6

    const-string v3, "AppURL"

    aput-object v3, v2, v7

    const-string v3, "Id"

    aput-object v3, v2, v8

    const-string v3, "IsHTCHubContent"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$108102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55989
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x4f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$109702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55991
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$109700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "FeedId"

    aput-object v3, v2, v5

    const-string v3, "Id"

    aput-object v3, v2, v6

    const-string v3, "Timestamp"

    aput-object v3, v2, v7

    const-string v3, "Type"

    aput-object v3, v2, v8

    const-string v3, "Uri"

    aput-object v3, v2, v9

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HSound;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$109802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 55997
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x50

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$111202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 55999
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$111200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Sound"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$111302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56005
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$111902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56007
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$111900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "SyncItemType"

    aput-object v3, v2, v6

    const-string v3, "Timestamp"

    aput-object v3, v2, v7

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$112002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56013
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$113002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56015
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$113000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EventClass"

    aput-object v3, v2, v5

    const-string v3, "EventName"

    aput-object v3, v2, v6

    const-string v3, "Id"

    aput-object v3, v2, v7

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$113102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56021
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x53

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$114102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56023
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$114100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$Htrace_events$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$114202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56029
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x54

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$114802(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56031
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$114800()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x2e

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AccountId"

    aput-object v3, v2, v5

    const-string v3, "AlternateNumber"

    aput-object v3, v2, v6

    const-string v3, "AreaCode"

    aput-object v3, v2, v7

    const-string v3, "BindRequestId"

    aput-object v3, v2, v8

    const-string v3, "CallForwardingState"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "CallForwardPhoneNumber"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "CallForwardRegionId"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "CountryCode"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "CurrentLocationLatitude"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "CurrentLocationLongitude"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DeviceVersion"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "ForceRingState"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "HandsetDeviceId"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "HandsetLocale"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "Id"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "IDD"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "IsCDMA"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "IsLocationTrackingEnabled"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "IsVerified"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "LastConnectedTimestamp"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "LastKnownLocation"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "LastSeenAtTimestamp"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "LockedHandsetState"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "LockHandsetMessage"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "LockHandsetPin"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "MessageForwardEmailAddress"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "MessageForwardPhoneNumber"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "MessageForwardPhoneRegionId"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "MessageForwardStateEmail"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "MessageForwardStatePhone"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "MMSMaxSize"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "MusicVendor"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "NDD"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "NewVoicemailCount"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "PhoneNumber"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "PhoneNumberString"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "PhysicalDeviceModelId"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "RecommendsAppCommentLastViewDate"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "RecommendsAppLastViewDate"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "RemoteDataWipeEraseSDState"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "RemoteDataWipeState"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "ResyncId"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "ResyncState"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "ResyncStateDate"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "TimeOffsetFromUtc"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$114902(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56037
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x55

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$124502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56039
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$124500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MissedCall"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$124602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56045
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x56

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$125202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56047
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$125200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SyncList"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$125302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56053
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x57

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$125802(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56055
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$125800()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ResyncId"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$125902(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56061
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x58

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$126502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56063
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$126500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$126602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56069
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x59

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$127002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56071
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$127000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$127102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56077
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$127502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56079
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$127500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "MissedCallIds"

    aput-object v3, v2, v5

    const-string v3, "Timestamp"

    aput-object v3, v2, v6

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$127602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56085
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$128302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56087
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$128300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PhoneNumber"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$128402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56093
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x5c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$129002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56095
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$129000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$129102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56101
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$129502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56103
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$129500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ExternalError"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$129602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56109
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x5e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$130202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56111
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$130200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$130302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56117
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$130702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56119
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$130700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SyncList"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$130802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56125
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x60

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$131302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56127
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$131300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SyncList"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$131402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56133
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x61

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$131902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56135
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$131900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MissedCall"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$132002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56141
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x62

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$132602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56143
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$132600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MissedCalls"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$132702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56149
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x63

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$133202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56151
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$133200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VoiceMailCount"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$133302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56157
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$133902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56159
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$133900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VirtualDevice"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$134002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56165
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x65

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$134602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56167
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$134600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "CreateDate"

    aput-object v3, v2, v5

    const-string v3, "Id"

    aput-object v3, v2, v6

    const-string v3, "IsViewed"

    aput-object v3, v2, v7

    const-string v3, "PhoneNumber"

    aput-object v3, v2, v8

    const-string v3, "Timestamp"

    aput-object v3, v2, v9

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$134702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56173
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x66

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$136102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56175
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$136100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "Name"

    aput-object v3, v2, v6

    const-string v3, "Timestamp"

    aput-object v3, v2, v7

    const-string v3, "Value"

    aput-object v3, v2, v8

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$136202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56181
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x67

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$137402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56183
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$137400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DeviceSetting"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$137502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56189
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x68

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$138102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56191
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$138100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "DeviceSettingId"

    aput-object v3, v2, v5

    const-string v3, "Timestamp"

    aput-object v3, v2, v6

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$138202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56197
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x69

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$139002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56199
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$139000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DeviceSetting"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$139102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56205
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$139702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56207
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$139700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "FeedId"

    aput-object v3, v2, v5

    const-string v3, "Id"

    aput-object v3, v2, v6

    const-string v3, "Timestamp"

    aput-object v3, v2, v7

    const-string v3, "Type"

    aput-object v3, v2, v8

    const-string v3, "Uri"

    aput-object v3, v2, v9

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$139802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56213
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$141202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56215
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$141200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Wallpaper"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$141302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56221
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$141902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56223
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$141900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "QueueName"

    aput-object v3, v2, v5

    const-string v3, "Timestamp"

    aput-object v3, v2, v6

    const-string v3, "Ordinal"

    aput-object v3, v2, v7

    const-string v3, "Data"

    aput-object v3, v2, v8

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$142002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56229
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$143202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 56231
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$143200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x3c

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Type"

    aput-object v3, v2, v5

    const-string v3, "AddAggregatePerson"

    aput-object v3, v2, v6

    const-string v3, "UpdateAggregatePerson"

    aput-object v3, v2, v7

    const-string v3, "DeleteAggregatePerson"

    aput-object v3, v2, v8

    const-string v3, "GetAggregatePersonImage"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "SetAggregatePersonImage"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "DeleteAggregatePersonImage"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "DeletePeopleByAccountType"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "SetPersonImage"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "AddFootprint"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "UpdateFootprint"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "DeleteFootprint"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "SetFootprintImage"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "SetFootprintMemo"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "AddMessage"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "UpdateMessage"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "DeleteMessage"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "AddMyProfile"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "UpdateMyProfile"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "AddPeopleGroup"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "AddPeopleGroups"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "UpdatePeopleGroup"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "AddPeopleToPeopleGroup"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "DeletePeopleFromPeopleGroup"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "DeletePeopleGroup"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "AddRecommendCommentLike"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "AddRecommendWishlist"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "DeleteRecommendedWishlist"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "AddRecommendAppsOnPhone"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "DeleteRecommendAppsOnPhone"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "UpdateRecommendCommentLike"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "UpdateRecommendAppsOnPhone"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "UpdateRecommendAppLastViewDate"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "UpdateRecommendAppCommentLastViewDate"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "DeleteRecommendCommentLike"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "SearchRecommendCommentLike"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "GetRecommendNewApplicationCommentsLikes"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "GetMyAppsAndFriendsAppsRecommendCommentLike"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "AddSound"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "LogRemoteError"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "UpdateVirtualDevice"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "AddSyncItems"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "ProcessSyncItems"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "BeginFullMerge"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "RequestForAdd"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "RequestForUpdate"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "EndFullMerge"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "CheckForMessages"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "SetNewVoiceMailCount"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "AddMissedCall"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "ClearMissedCallsByPhoneNumber"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "ClearMissedCalls"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "ClearAllMissedCalls"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "SetMissedCallAsViewed"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "SetMissedCallsAsViewed"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "AddDeviceSetting"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "UpdateDeviceSetting"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "DeleteDeviceSetting"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "AddWallpaper"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "MessageQueueTestMessage"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const-class v4, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol;->access$143302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 56237
    const/4 v0, 0x0

    return-object v0
.end method

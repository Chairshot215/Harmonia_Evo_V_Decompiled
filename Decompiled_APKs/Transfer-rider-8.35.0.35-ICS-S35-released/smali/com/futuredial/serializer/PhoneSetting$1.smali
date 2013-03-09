.class final Lcom/futuredial/serializer/PhoneSetting$1;
.super Ljava/lang/Object;
.source "PhoneSetting.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/serializer/PhoneSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 10
    .parameter "root"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1682
    invoke-static {p1}, Lcom/futuredial/serializer/PhoneSetting;->access$4302(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1683
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1685
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ModuleType"

    aput-object v3, v2, v5

    const-string v3, "ComClassName"

    aput-object v3, v2, v6

    const-string v3, "ComPolicy"

    aput-object v3, v2, v7

    const-string v3, "ComUuid"

    aput-object v3, v2, v8

    const-string v3, "ParserClassName"

    aput-object v3, v2, v9

    const-class v3, Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    const-class v4, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1691
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting;->access$1402(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1693
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting;->access$1400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "TypeName"

    aput-object v3, v2, v5

    const-string v3, "PhoneBook"

    aput-object v3, v2, v6

    const-string v3, "Calendar"

    aput-object v3, v2, v7

    const-string v3, "Sms"

    aput-object v3, v2, v8

    const-string v3, "BookMark"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Photo"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Music"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Task"

    aput-object v4, v2, v3

    const-class v3, Lcom/futuredial/serializer/PhoneSetting$SettingType;

    const-class v4, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting;->access$1502(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1699
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting;->access$3502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1701
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting;->access$3500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "TypeMapToIndex"

    aput-object v3, v2, v5

    const-string v3, "SettingTypes"

    aput-object v3, v2, v6

    const-class v3, Lcom/futuredial/serializer/PhoneSetting$Setting;

    const-class v4, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting;->access$3602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1707
    const/4 v0, 0x0

    return-object v0
.end method

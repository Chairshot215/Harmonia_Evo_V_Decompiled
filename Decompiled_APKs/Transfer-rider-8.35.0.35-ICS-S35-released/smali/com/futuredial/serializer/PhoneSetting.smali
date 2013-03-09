.class public final Lcom/futuredial/serializer/PhoneSetting;
.super Ljava/lang/Object;
.source "PhoneSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/serializer/PhoneSetting$Setting;,
        Lcom/futuredial/serializer/PhoneSetting$SettingType;,
        Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_serializer_SettingModule_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_serializer_SettingModule_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_serializer_SettingType_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_serializer_SettingType_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_serializer_Setting_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_serializer_Setting_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1660
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0012phonesetting.proto\u0012\nserializer\"}\n\rSettingModule\u0012\u0013\n\u000bmodule_type\u0018\u0001 \u0002(\t\u0012\u0016\n\u000ecom_class_name\u0018\u0002 \u0001(\t\u0012\u0012\n\ncom_policy\u0018\u0003 \u0001(\t\u0012\u0010\n\u0008com_uuid\u0018\u0004 \u0003(\t\u0012\u0019\n\u0011parser_class_name\u0018\u0005 \u0001(\t\"\u00cf\u0002\n\u000bSettingType\u0012\u0011\n\ttype_name\u0018\u0001 \u0002(\t\u0012-\n\nphone_book\u0018\u0002 \u0001(\u000b2\u0019.serializer.SettingModule\u0012+\n\u0008calendar\u0018\u0003 \u0001(\u000b2\u0019.serializer.SettingModule\u0012&\n\u0003sms\u0018\u0004 \u0001(\u000b2\u0019.serializer.SettingModule\u0012,\n\tbook_mark\u0018\u0005 \u0001(\u000b2\u0019.serializer.SettingModule\u0012(\n\u0005photo\u0018\u0006 \u0001(\u000b2\u0019.serializer"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, ".SettingModule\u0012(\n\u0005music\u0018\u0007 \u0001(\u000b2\u0019.serializer.SettingModule\u0012\'\n\u0004task\u0018\u0008 \u0001(\u000b2\u0019.serializer.SettingModule\"T\n\u0007Setting\u0012\u0019\n\u0011type_map_to_index\u0018\u0001 \u0002(\t\u0012.\n\rsetting_types\u0018\u0002 \u0003(\u000b2\u0017.serializer.SettingTypeB)\n\u0019com.futuredial.serializerB\u000cPhoneSetting"

    aput-object v3, v1, v2

    .line 1678
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/futuredial/serializer/PhoneSetting$1;

    invoke-direct {v0}, Lcom/futuredial/serializer/PhoneSetting$1;-><init>()V

    .line 1710
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1714
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/futuredial/serializer/PhoneSetting;->internal_static_serializer_SettingModule_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 6
    sput-object p0, Lcom/futuredial/serializer/PhoneSetting;->internal_static_serializer_SettingModule_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/futuredial/serializer/PhoneSetting;->internal_static_serializer_SettingModule_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 6
    sput-object p0, Lcom/futuredial/serializer/PhoneSetting;->internal_static_serializer_SettingModule_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/futuredial/serializer/PhoneSetting;->internal_static_serializer_SettingType_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 6
    sput-object p0, Lcom/futuredial/serializer/PhoneSetting;->internal_static_serializer_SettingType_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/futuredial/serializer/PhoneSetting;->internal_static_serializer_SettingType_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 6
    sput-object p0, Lcom/futuredial/serializer/PhoneSetting;->internal_static_serializer_SettingType_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/futuredial/serializer/PhoneSetting;->internal_static_serializer_Setting_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 6
    sput-object p0, Lcom/futuredial/serializer/PhoneSetting;->internal_static_serializer_Setting_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/futuredial/serializer/PhoneSetting;->internal_static_serializer_Setting_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 6
    sput-object p0, Lcom/futuredial/serializer/PhoneSetting;->internal_static_serializer_Setting_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4302(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 6
    sput-object p0, Lcom/futuredial/serializer/PhoneSetting;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 1655
    sget-object v0, Lcom/futuredial/serializer/PhoneSetting;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 1716
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .parameter "registry"

    .prologue
    .line 10
    return-void
.end method

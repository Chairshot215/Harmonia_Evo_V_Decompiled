.class public final Lcom/futuredial/serializer/VxxConfigPB;
.super Ljava/lang/Object;
.source "VxxConfigPB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;,
        Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;,
        Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;,
        Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_serializer_VCalendarPolicy_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_serializer_VCalendarPolicy_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_serializer_VCardPolicy_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_serializer_VCardPolicy_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_serializer_VMessagePolicy_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_serializer_VMessagePolicy_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_serializer_VxxSpec_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_serializer_VxxSpec_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1944
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0014PATH/vxxconfig.proto\u0012\nserializer\"\u00db\u0001\n\u000bVCardPolicy\u0012\u0013\n\u000bpolicy_name\u0018\u0001 \u0002(\t\u0012\u0014\n\u0008esc_char\u0018\u0002 \u0001(\t:\u0002;\\\u0012\u0015\n\nesc_encode\u0018\u0003 \u0001(\u0005:\u00010\u0012\u001d\n\u000fesc_singlefield\u0018\u0004 \u0001(\u0008:\u0004true\u0012(\n\u0014quoted_print_charset\u0018\u0005 \u0001(\t:\nISO-8859-1\u0012\u001e\n\u000fdefault_charset\u0018\u0006 \u0001(\t:\u0005UTF-8\u0012!\n\u0013qp_begin_with_blank\u0018\u0007 \u0001(\u0008:\u0004true\"\u00a9\u0001\n\u000fVCalendarPolicy\u0012\u0013\n\u000bpolicy_name\u0018\u0001 \u0002(\t\u0012\u0014\n\u0008esc_char\u0018\u0002 \u0001(\t:\u0002;\\\u0012(\n\u0014quoted_print_charset\u0018\u0003 \u0001(\t:\nISO-8859-1\u0012\u001e\n\u000fdefault_charset\u0018\u0004 \u0001(\t:\u0005UTF-8\u0012!\n\u0013qp_"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "begin_with_blank\u0018\u0005 \u0001(\u0008:\u0004true\"\\\n\u000eVMessagePolicy\u0012\u0013\n\u000bpolicy_name\u0018\u0001 \u0002(\t\u0012\u001a\n\u000chas_x_nok_dt\u0018\u0002 \u0001(\u0008:\u0004true\u0012\u0019\n\u000bdate_is_utc\u0018\u0003 \u0001(\u0008:\u0004true\"\u00b5\u0001\n\u0007VxxSpec\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\t\u0012-\n\u000cvcard_policy\u0018\u0002 \u0003(\u000b2\u0017.serializer.VCardPolicy\u00125\n\u0010vcalendar_policy\u0018\u0003 \u0003(\u000b2\u001b.serializer.VCalendarPolicy\u00123\n\u000fvmessage_policy\u0018\u0004 \u0003(\u000b2\u001a.serializer.VMessagePolicyB(\n\u0019com.futuredial.serializerB\u000bVxxConfigPB"

    aput-object v3, v1, v2

    .line 1965
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/futuredial/serializer/VxxConfigPB$1;

    invoke-direct {v0}, Lcom/futuredial/serializer/VxxConfigPB$1;-><init>()V

    .line 2005
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 2009
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
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB;->internal_static_serializer_VCardPolicy_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 6
    sput-object p0, Lcom/futuredial/serializer/VxxConfigPB;->internal_static_serializer_VCardPolicy_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB;->internal_static_serializer_VCardPolicy_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 6
    sput-object p0, Lcom/futuredial/serializer/VxxConfigPB;->internal_static_serializer_VCardPolicy_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB;->internal_static_serializer_VCalendarPolicy_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 6
    sput-object p0, Lcom/futuredial/serializer/VxxConfigPB;->internal_static_serializer_VCalendarPolicy_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB;->internal_static_serializer_VCalendarPolicy_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 6
    sput-object p0, Lcom/futuredial/serializer/VxxConfigPB;->internal_static_serializer_VCalendarPolicy_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB;->internal_static_serializer_VMessagePolicy_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 6
    sput-object p0, Lcom/futuredial/serializer/VxxConfigPB;->internal_static_serializer_VMessagePolicy_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB;->internal_static_serializer_VMessagePolicy_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 6
    sput-object p0, Lcom/futuredial/serializer/VxxConfigPB;->internal_static_serializer_VMessagePolicy_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB;->internal_static_serializer_VxxSpec_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 6
    sput-object p0, Lcom/futuredial/serializer/VxxConfigPB;->internal_static_serializer_VxxSpec_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB;->internal_static_serializer_VxxSpec_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 6
    sput-object p0, Lcom/futuredial/serializer/VxxConfigPB;->internal_static_serializer_VxxSpec_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5502(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 6
    sput-object p0, Lcom/futuredial/serializer/VxxConfigPB;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 1939
    sget-object v0, Lcom/futuredial/serializer/VxxConfigPB;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 2011
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .parameter "registry"

    .prologue
    .line 10
    return-void
.end method

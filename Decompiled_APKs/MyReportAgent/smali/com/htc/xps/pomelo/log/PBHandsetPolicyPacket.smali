.class public final Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;
.super Ljava/lang/Object;
.source "PBHandsetPolicyPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgeItem;,
        Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT;,
        Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;,
        Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;,
        Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyItem;,
        Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;,
        Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_pomelo_log_HandsetAppCategoryItem_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_pomelo_log_HandsetAppCategoryItem_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_pomelo_log_HandsetAppPolicyItem_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_pomelo_log_HandsetAppPolicyItem_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_pomelo_log_HandsetPolicyAcknowledgeItem_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_pomelo_log_HandsetPolicyAcknowledgeItem_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_pomelo_log_HandsetPolicyAcknowledgePKT_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_pomelo_log_HandsetPolicyAcknowledgePKT_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_pomelo_log_HandsetPolicyItem_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_pomelo_log_HandsetPolicyItem_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_pomelo_log_HandsetPolicyRequestPKT_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_pomelo_log_HandsetPolicyRequestPKT_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_pomelo_log_HandsetPolicyResponsePKT_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_pomelo_log_HandsetPolicyResponsePKT_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2884
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u001bPBHandsetPolicyPacket.proto\u0012\npomelo.log\u001a\u0015PBCommonMessage.proto\"q\n\u0017HandsetPolicyRequestPKT\u0012\u0014\n\u0007version\u0018\u0001 \u0001(\t:\u00031.0\u0012+\n\u000bdevice_info\u0018\u0002 \u0001(\u000b2\u0016.pomelo.log.DeviceInfo\u0012\u0013\n\u000blast_update\u0018\u000b \u0001(\u0003\"\u00ea\u0001\n\u0018HandsetPolicyResponsePKT\u0012O\n\u0006status\u0018\u0001 \u0001(\u000e21.pomelo.log.HandsetPolicyResponsePKT.PolicyStatus:\u000cNEW_POLICIES\u0012\u0018\n\u0010update_timestamp\u0018\u0002 \u0001(\u0003\u0012-\n\u0006policy\u0018\u000b \u0003(\u000b2\u001d.pomelo.log.HandsetPolicyItem\"4\n\u000cPolicyStatus\u0012\u0012\n\u000eUPDATE_TO_DATE\u0010d\u0012\u0010"

    aput-object v2, v1, v4

    const-string v2, "\n\u000cNEW_POLICIES\u0010e\"~\n\u0011HandsetPolicyItem\u0012\u0015\n\rmgmt_group_id\u0018\u0001 \u0001(\t\u0012\u0017\n\u000fpolicy_group_id\u0018\u0002 \u0001(\t\u00129\n\u000fapp_policy_item\u0018\u0003 \u0003(\u000b2 .pomelo.log.HandsetAppPolicyItem\"s\n\u0014HandsetAppPolicyItem\u0012\u000e\n\u0006app_id\u0018\u0001 \u0001(\t\u0012\u0010\n\u0008end_time\u0018\u0002 \u0001(\u0003\u00129\n\rcategory_item\u0018\u0003 \u0003(\u000b2\".pomelo.log.HandsetAppCategoryItem\"N\n\u0016HandsetAppCategoryItem\u0012\u0010\n\u0008category\u0018\u0001 \u0001(\t\u0012\"\n\u0004item\u0018\u0002 \u0003(\u000b2\u0014.pomelo.log.DataPair\"\u0097\u0001\n\u001bHandsetPolicyAcknowledgePKT\u0012\u0014\n\u0007version\u0018\u0001 \u0001(\t:\u00031.0\u0012+\n\u000bd"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "evice_info\u0018\u0002 \u0001(\u000b2\u0016.pomelo.log.DeviceInfo\u00125\n\u0003ack\u0018\u000b \u0003(\u000b2(.pomelo.log.HandsetPolicyAcknowledgeItem\"\u00c5\u0001\n\u001cHandsetPolicyAcknowledgeItem\u0012\u0015\n\rmgmt_group_id\u0018\u0001 \u0001(\t\u0012\u0017\n\u000fpolicy_group_id\u0018\u0002 \u0001(\t\u0012B\n\u0006status\u0018\u0003 \u0001(\u000e22.pomelo.log.HandsetPolicyAcknowledgeItem.AckStatus\"1\n\tAckStatus\u0012\u0010\n\u000bPOLICY_DONE\u0010\u00c8\u0001\u0012\u0012\n\rPOLICY_FAILED\u0010\u00c9\u0001B/\n\u0016com.htc.xps.pomelo.logB\u0015PBHandsetPolicyPacket"

    aput-object v3, v1, v2

    .line 2915
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$1;

    invoke-direct {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$1;-><init>()V

    .line 2979
    .local v0, assigner:Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v5, [Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2, v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 2984
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetPolicyRequestPKT_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetPolicyRequestPKT_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetPolicyRequestPKT_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetPolicyRequestPKT_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetPolicyResponsePKT_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetPolicyResponsePKT_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetPolicyResponsePKT_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetPolicyResponsePKT_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2100()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetPolicyItem_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetPolicyItem_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetPolicyItem_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetPolicyItem_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3100()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetAppPolicyItem_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetAppPolicyItem_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetAppPolicyItem_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetAppPolicyItem_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4100()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetAppCategoryItem_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetAppCategoryItem_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetAppCategoryItem_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetAppCategoryItem_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4900()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetPolicyAcknowledgePKT_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetPolicyAcknowledgePKT_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$5000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetPolicyAcknowledgePKT_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetPolicyAcknowledgePKT_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5900()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetPolicyAcknowledgeItem_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetPolicyAcknowledgeItem_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$6000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetPolicyAcknowledgeItem_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->internal_static_pomelo_log_HandsetPolicyAcknowledgeItem_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$7002(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 2879
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 2986
    return-void
.end method

.method public static registerAllExtensions(Lcom/htc/protobuf/ExtensionRegistry;)V
    .locals 0
    .parameter "registry"

    .prologue
    .line 9
    return-void
.end method

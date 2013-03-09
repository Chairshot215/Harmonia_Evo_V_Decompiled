.class public final enum Lcom/redbend/vdm/VdmException$VdmError;
.super Ljava/lang/Enum;
.source "VdmException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdm/VdmException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VdmError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/VdmException$VdmError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum ABORT:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum ALERT_MISSING_DATA:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum ALERT_MISSING_ITEMS:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum ALERT_PARSING_ERROR:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum ALERT_SESSION_ABORTED:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum ALERT_TOO_MANY_CHOICES:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum ALERT_USER_ABORTED:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum ALREADY_EXISTS:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum AUTHENTICATION:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum BAD_DD:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum BAD_INPUT:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum BAD_URL:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum BOOT_BAD_MAC:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum BOOT_BAD_MESSAGE:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum BOOT_BAD_PROF:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum BOOT_BAD_SEC:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum BOOT_DIGEST:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum BOOT_DISABLED:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum BOOT_NSS:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum BOOT_PIN:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum BOOT_PINLENGTH:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum BUFFER_OVERFLOW:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum CANCEL:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum COMMAND_FAILED:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum COMMS_BAD_PROTOCOL:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum COMMS_FATAL:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum COMMS_HTTP_ERROR:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum COMMS_MIME_MISMATCH:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum COMMS_NON_FATAL:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum COMMS_OBJECT_CHANGED:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum COMMS_SOCKET_ERROR:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum COMMS_SOCKET_TIMEOUT:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum DL_OBJ_TOO_LARGE:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum INTERNAL:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum INVALID_CALL:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum INVALID_PROTO_OR_VERSION:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum IS_SUSPENDED:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum LEAF_NODE:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum LO_HANDLED:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum MAY_TREE_NOT_REPLACE:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum MEMORY:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum MISSING_START_MESSAGE_CMD:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum MISSING_STATUS_CMD:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum MO_STORAGE:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum NODE_ACCESS_DENIED:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum NODE_MISSING:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum NODE_NOT_EXECUTABLE:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum NODE_VALUE_NODE_NOT_WRITEABLE:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum NODE_VALUE_NOT_READABLE:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum NOTIF_BAD_DIGEST:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum NOTIF_BAD_LENGTH:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum NOTIF_UNSUPPORTED_VERSION:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum NOT_ALLOWED:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum NOT_IMPLEMENTED:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum NOT_LEAF_NODE:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum NO_DATA:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum NO_MORE_COMMANDS:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum OK:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum OUT_OF_BOUNDS:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum OUT_OF_SYNC:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum PARENT_MISSING:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum PERMANENT_NODE:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum REGISTRY:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum RTK_BUFFER_OVERFLOW:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum SHUTTING_DOWN:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum STORAGE_COMMIT:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum STORAGE_OPEN:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum STORAGE_READ:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum STORAGE_REMOVE:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum STORAGE_WRITE:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum TOO_BIG:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum TREE_ACCESS_DENIED:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum TREE_EXT_NOT_ALLOWED:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum TREE_EXT_NOT_PARTIAL:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum TRG_BAD_REASON:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum UNKNOWN_PROPERTY:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum UNSPECIFIC:Lcom/redbend/vdm/VdmException$VdmError;

.field public static final enum UPDATE_INIT:Lcom/redbend/vdm/VdmException$VdmError;


# instance fields
.field public string:Ljava/lang/String;

.field public val:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x12

    const/16 v8, 0x11

    const/16 v7, 0x10

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 76
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "OK"

    const-string v2, "VDM_ERR_OK"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->OK:Lcom/redbend/vdm/VdmException$VdmError;

    .line 79
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "INVALID_INPUT_PARAM"

    const/4 v2, 0x1

    const-string v3, "VDM_ERR_INVALID_INPUT_PARAM"

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    .line 82
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "UNSPECIFIC"

    const-string v2, "VDM_ERR_UNSPECIFIC"

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->UNSPECIFIC:Lcom/redbend/vdm/VdmException$VdmError;

    .line 85
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "MEMORY"

    const/4 v2, 0x3

    const-string v3, "VDM_ERR_MEMORY"

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->MEMORY:Lcom/redbend/vdm/VdmException$VdmError;

    .line 88
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "INVALID_CALL"

    const/4 v2, 0x4

    const-string v3, "VDM_ERR_INVALID_CALL"

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_CALL:Lcom/redbend/vdm/VdmException$VdmError;

    .line 91
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "IS_SUSPENDED"

    const/4 v2, 0x5

    const-string v3, "VDM_ERR_IS_SUSPENDED"

    const/16 v4, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->IS_SUSPENDED:Lcom/redbend/vdm/VdmException$VdmError;

    .line 94
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "INVALID_PROTO_OR_VERSION"

    const/4 v2, 0x6

    const-string v3, "VDM_ERR_INVALID_PROTO_OR_VERSION"

    const/16 v4, 0x20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_PROTO_OR_VERSION:Lcom/redbend/vdm/VdmException$VdmError;

    .line 97
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "RTK_BUFFER_OVERFLOW"

    const/4 v2, 0x7

    const-string v3, "VDM_ERR_RTK_BUFFER_OVERFLOW"

    const/16 v4, 0x2002

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->RTK_BUFFER_OVERFLOW:Lcom/redbend/vdm/VdmException$VdmError;

    .line 100
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "BUFFER_OVERFLOW"

    const/16 v2, 0x8

    const-string v3, "VDM_ERR_BUFFER_OVERFLOW"

    const/16 v4, 0x6000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->BUFFER_OVERFLOW:Lcom/redbend/vdm/VdmException$VdmError;

    .line 103
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "BAD_INPUT"

    const/16 v2, 0x9

    const-string v3, "VDM_ERR_BAD_INPUT"

    const/16 v4, 0x6001

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->BAD_INPUT:Lcom/redbend/vdm/VdmException$VdmError;

    .line 106
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "ALREADY_EXISTS"

    const/16 v2, 0xa

    const-string v3, "VDM_ERR_ALREADY_EXISTS"

    const/16 v4, 0x6002

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->ALREADY_EXISTS:Lcom/redbend/vdm/VdmException$VdmError;

    .line 109
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "NODE_MISSING"

    const/16 v2, 0xb

    const-string v3, "VDM_ERR_NODE_MISSING"

    const/16 v4, 0x6003

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->NODE_MISSING:Lcom/redbend/vdm/VdmException$VdmError;

    .line 112
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "PARENT_MISSING"

    const/16 v2, 0xc

    const-string v3, "VDM_ERR_PARENT_MISSING"

    const/16 v4, 0x6004

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->PARENT_MISSING:Lcom/redbend/vdm/VdmException$VdmError;

    .line 115
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "LEAF_NODE"

    const/16 v2, 0xd

    const-string v3, "VDM_ERR_LEAF_NODE"

    const/16 v4, 0x6005

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->LEAF_NODE:Lcom/redbend/vdm/VdmException$VdmError;

    .line 118
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "NOT_LEAF_NODE"

    const/16 v2, 0xe

    const-string v3, "VDM_ERR_NOT_LEAF_NODE"

    const/16 v4, 0x6006

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->NOT_LEAF_NODE:Lcom/redbend/vdm/VdmException$VdmError;

    .line 121
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "UNKNOWN_PROPERTY"

    const/16 v2, 0xf

    const-string v3, "VDM_ERR_UNKNOWN_PROPERTY"

    const/16 v4, 0x6007

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->UNKNOWN_PROPERTY:Lcom/redbend/vdm/VdmException$VdmError;

    .line 124
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "PERMANENT_NODE"

    const-string v2, "VDM_ERR_PERMANENT_NODE"

    const/16 v3, 0x6008

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->PERMANENT_NODE:Lcom/redbend/vdm/VdmException$VdmError;

    .line 127
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "NOT_ALLOWED"

    const-string v2, "VDM_ERR_NOT_ALLOWED"

    const/16 v3, 0x6009

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->NOT_ALLOWED:Lcom/redbend/vdm/VdmException$VdmError;

    .line 130
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "ABORT"

    const-string v2, "VDM_ERR_ABORT"

    const/16 v3, 0x600a

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->ABORT:Lcom/redbend/vdm/VdmException$VdmError;

    .line 133
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "TREE_ACCESS_DENIED"

    const/16 v2, 0x13

    const-string v3, "VDM_ERR_TREE_ACCESS_DENIED"

    const/16 v4, 0x600b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->TREE_ACCESS_DENIED:Lcom/redbend/vdm/VdmException$VdmError;

    .line 136
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "TREE_EXT_NOT_PARTIAL"

    const/16 v2, 0x14

    const-string v3, "VDM_ERR_TREE_EXT_NOT_PARTIAL"

    const/16 v4, 0x600c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->TREE_EXT_NOT_PARTIAL:Lcom/redbend/vdm/VdmException$VdmError;

    .line 139
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "TREE_EXT_NOT_ALLOWED"

    const/16 v2, 0x15

    const-string v3, "TREE_VDM_ERR_EXT_NOT_ALLOWED"

    const/16 v4, 0x600d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->TREE_EXT_NOT_ALLOWED:Lcom/redbend/vdm/VdmException$VdmError;

    .line 142
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "MAY_TREE_NOT_REPLACE"

    const/16 v2, 0x16

    const-string v3, "VDM_TREE_ERR_MAY_NOT_REPLACE"

    const/16 v4, 0x600e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->MAY_TREE_NOT_REPLACE:Lcom/redbend/vdm/VdmException$VdmError;

    .line 145
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "STORAGE_READ"

    const/16 v2, 0x17

    const-string v3, "VDM_ERR_STORAGE_READ"

    const/16 v4, 0x600f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->STORAGE_READ:Lcom/redbend/vdm/VdmException$VdmError;

    .line 148
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "STORAGE_WRITE"

    const/16 v2, 0x18

    const-string v3, "VDM_ERR_STORAGE_WRITE"

    const/16 v4, 0x6010

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->STORAGE_WRITE:Lcom/redbend/vdm/VdmException$VdmError;

    .line 151
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "AUTHENTICATION"

    const/16 v2, 0x19

    const-string v3, "VDM_ERR_AUTHENTICATION"

    const/16 v4, 0x6011

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->AUTHENTICATION:Lcom/redbend/vdm/VdmException$VdmError;

    .line 154
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "NODE_ACCESS_DENIED"

    const/16 v2, 0x1a

    const-string v3, "VDM_ERR_NODE_ACCESS_DENIED"

    const/16 v4, 0x6012

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->NODE_ACCESS_DENIED:Lcom/redbend/vdm/VdmException$VdmError;

    .line 157
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "NODE_VALUE_NOT_READABLE"

    const/16 v2, 0x1b

    const-string v3, "VDM_ERR_NODE_VALUE_NOT_READABLE"

    const/16 v4, 0x6013

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->NODE_VALUE_NOT_READABLE:Lcom/redbend/vdm/VdmException$VdmError;

    .line 160
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "NODE_VALUE_NODE_NOT_WRITEABLE"

    const/16 v2, 0x1c

    const-string v3, "VDM_ERR_NODE_VALUE_NOT_WRITEABLE"

    const/16 v4, 0x6014

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->NODE_VALUE_NODE_NOT_WRITEABLE:Lcom/redbend/vdm/VdmException$VdmError;

    .line 163
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "NODE_NOT_EXECUTABLE"

    const/16 v2, 0x1d

    const-string v3, "VDM_ERR_NODE_NOT_EXECUTABLE"

    const/16 v4, 0x6015

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->NODE_NOT_EXECUTABLE:Lcom/redbend/vdm/VdmException$VdmError;

    .line 166
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "STORAGE_OPEN"

    const/16 v2, 0x1e

    const-string v3, "VDM_ERR_STORAGE_OPEN"

    const/16 v4, 0x6016

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->STORAGE_OPEN:Lcom/redbend/vdm/VdmException$VdmError;

    .line 169
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "STORAGE_COMMIT"

    const/16 v2, 0x1f

    const-string v3, "VDM_ERR_STORAGE_COMMIT"

    const/16 v4, 0x6017

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->STORAGE_COMMIT:Lcom/redbend/vdm/VdmException$VdmError;

    .line 173
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "NO_MORE_COMMANDS"

    const/16 v2, 0x20

    const-string v3, "VDM_ERR_NO_MORE_COMMANDS"

    const/16 v4, 0x6100

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->NO_MORE_COMMANDS:Lcom/redbend/vdm/VdmException$VdmError;

    .line 176
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "MISSING_START_MESSAGE_CMD"

    const/16 v2, 0x21

    const-string v3, "VDM_ERR_MISSING_START_MESSAGE_CMD"

    const/16 v4, 0x6101

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->MISSING_START_MESSAGE_CMD:Lcom/redbend/vdm/VdmException$VdmError;

    .line 179
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "MISSING_STATUS_CMD"

    const/16 v2, 0x22

    const-string v3, "VDM_ERR_MISSING_STATUS_CMD"

    const/16 v4, 0x6102

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->MISSING_STATUS_CMD:Lcom/redbend/vdm/VdmException$VdmError;

    .line 182
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "NOT_IMPLEMENTED"

    const/16 v2, 0x23

    const-string v3, "VDM_ERR_NOT_IMPLEMENTED"

    const/16 v4, 0x6103

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->NOT_IMPLEMENTED:Lcom/redbend/vdm/VdmException$VdmError;

    .line 186
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "ALERT_PARSING_ERROR"

    const/16 v2, 0x24

    const-string v3, "VDM_ERR_ALERT_PARSING_ERROR"

    const/16 v4, 0x6105

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->ALERT_PARSING_ERROR:Lcom/redbend/vdm/VdmException$VdmError;

    .line 189
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "ALERT_MISSING_ITEMS"

    const/16 v2, 0x25

    const-string v3, "VDM_ERR_ALERT_MISSING_ITEMS"

    const/16 v4, 0x6106

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->ALERT_MISSING_ITEMS:Lcom/redbend/vdm/VdmException$VdmError;

    .line 192
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "ALERT_MISSING_DATA"

    const/16 v2, 0x26

    const-string v3, "VDM_ERR_ALERT_MISSING_DATA"

    const/16 v4, 0x6107

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->ALERT_MISSING_DATA:Lcom/redbend/vdm/VdmException$VdmError;

    .line 195
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "NO_DATA"

    const/16 v2, 0x27

    const-string v3, "VDM_ERR_NO_DATA"

    const/16 v4, 0x6108

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->NO_DATA:Lcom/redbend/vdm/VdmException$VdmError;

    .line 198
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "ALERT_USER_ABORTED"

    const/16 v2, 0x28

    const-string v3, "VDM_ERR_ALERT_USER_ABORTED"

    const/16 v4, 0x6109

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->ALERT_USER_ABORTED:Lcom/redbend/vdm/VdmException$VdmError;

    .line 201
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "ALERT_TOO_MANY_CHOICES"

    const/16 v2, 0x29

    const-string v3, "VDM_ERR_ALERT_TOO_MANY_CHOICES"

    const/16 v4, 0x610a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->ALERT_TOO_MANY_CHOICES:Lcom/redbend/vdm/VdmException$VdmError;

    .line 204
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "ALERT_SESSION_ABORTED"

    const/16 v2, 0x2a

    const-string v3, "VDM_ERR_ALERT_SESSION_ABORTED"

    const/16 v4, 0x610b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->ALERT_SESSION_ABORTED:Lcom/redbend/vdm/VdmException$VdmError;

    .line 207
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "LO_HANDLED"

    const/16 v2, 0x2b

    const-string v3, "VDM_ERR_LO_HANDLED"

    const/16 v4, 0x610c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->LO_HANDLED:Lcom/redbend/vdm/VdmException$VdmError;

    .line 210
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "TOO_BIG"

    const/16 v2, 0x2c

    const-string v3, "VDM_ERR_TOO_BIG"

    const/16 v4, 0x610d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->TOO_BIG:Lcom/redbend/vdm/VdmException$VdmError;

    .line 213
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "COMMAND_FAILED"

    const/16 v2, 0x2d

    const-string v3, "VDM_ERR_COMMAND_FAILED"

    const/16 v4, 0x610e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->COMMAND_FAILED:Lcom/redbend/vdm/VdmException$VdmError;

    .line 216
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "NOTIF_BAD_LENGTH"

    const/16 v2, 0x2e

    const-string v3, "VDM_ERR_NOTIF_BAD_LENGTH"

    const/16 v4, 0x6200

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->NOTIF_BAD_LENGTH:Lcom/redbend/vdm/VdmException$VdmError;

    .line 219
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "NOTIF_BAD_DIGEST"

    const/16 v2, 0x2f

    const-string v3, "VDM_ERR_NOTIF_BAD_DIGEST"

    const/16 v4, 0x6201

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->NOTIF_BAD_DIGEST:Lcom/redbend/vdm/VdmException$VdmError;

    .line 222
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "BOOT_DIGEST"

    const/16 v2, 0x30

    const-string v3, "VDM_ERR_BOOT_DIGEST"

    const/16 v4, 0x6202

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->BOOT_DIGEST:Lcom/redbend/vdm/VdmException$VdmError;

    .line 225
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "BOOT_NSS"

    const/16 v2, 0x31

    const-string v3, "VDM_ERR_BOOT_NSS"

    const/16 v4, 0x6203

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->BOOT_NSS:Lcom/redbend/vdm/VdmException$VdmError;

    .line 228
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "BOOT_PIN"

    const/16 v2, 0x32

    const-string v3, "VDM_ERR_BOOT_PIN"

    const/16 v4, 0x6204

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->BOOT_PIN:Lcom/redbend/vdm/VdmException$VdmError;

    .line 231
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "BOOT_PINLENGTH"

    const/16 v2, 0x33

    const-string v3, "VDM_ERR_BOOT_PINLENGTH"

    const/16 v4, 0x6205

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->BOOT_PINLENGTH:Lcom/redbend/vdm/VdmException$VdmError;

    .line 234
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "BOOT_BAD_SEC"

    const/16 v2, 0x34

    const-string v3, "VDM_ERR_BOOT_BAD_SEC"

    const/16 v4, 0x6206

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->BOOT_BAD_SEC:Lcom/redbend/vdm/VdmException$VdmError;

    .line 237
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "BOOT_BAD_MAC"

    const/16 v2, 0x35

    const-string v3, "VDM_ERR_BOOT_BAD_MAC"

    const/16 v4, 0x6207

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->BOOT_BAD_MAC:Lcom/redbend/vdm/VdmException$VdmError;

    .line 240
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "BOOT_BAD_MESSAGE"

    const/16 v2, 0x36

    const-string v3, "VDM_ERR_BOOT_BAD_MESSAGE"

    const/16 v4, 0x6208

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->BOOT_BAD_MESSAGE:Lcom/redbend/vdm/VdmException$VdmError;

    .line 243
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "BOOT_BAD_PROF"

    const/16 v2, 0x37

    const-string v3, "VDM_ERR_BOOT_BAD_PROF"

    const/16 v4, 0x6209

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->BOOT_BAD_PROF:Lcom/redbend/vdm/VdmException$VdmError;

    .line 246
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "TRG_BAD_REASON"

    const/16 v2, 0x38

    const-string v3, "VDM_ERR_TRG_BAD_REASON"

    const/16 v4, 0x6210

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->TRG_BAD_REASON:Lcom/redbend/vdm/VdmException$VdmError;

    .line 249
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "NOTIF_UNSUPPORTED_VERSION"

    const/16 v2, 0x39

    const-string v3, "VDM_ERR_NOTIF_UNSUPPORTED_VERSION"

    const/16 v4, 0x6211

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->NOTIF_UNSUPPORTED_VERSION:Lcom/redbend/vdm/VdmException$VdmError;

    .line 252
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "BOOT_DISABLED"

    const/16 v2, 0x3a

    const-string v3, "VDM_ERR_BOOT_DISABLED"

    const/16 v4, 0x6212

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->BOOT_DISABLED:Lcom/redbend/vdm/VdmException$VdmError;

    .line 255
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "DL_OBJ_TOO_LARGE"

    const/16 v2, 0x3b

    const-string v3, "VDM_ERR_DL_OBJ_TOO_LARGE"

    const/16 v4, 0x6214

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->DL_OBJ_TOO_LARGE:Lcom/redbend/vdm/VdmException$VdmError;

    .line 259
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "COMMS_BAD_PROTOCOL"

    const/16 v2, 0x3c

    const-string v3, "VDM_ERR_COMMS_BAD_PROTOCOL"

    const/16 v4, 0x6300

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->COMMS_BAD_PROTOCOL:Lcom/redbend/vdm/VdmException$VdmError;

    .line 262
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "COMMS_MIME_MISMATCH"

    const/16 v2, 0x3d

    const-string v3, "VDM_ERR_COMMS_MIME_MISMATCH"

    const/16 v4, 0x6301

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->COMMS_MIME_MISMATCH:Lcom/redbend/vdm/VdmException$VdmError;

    .line 265
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "COMMS_FATAL"

    const/16 v2, 0x3e

    const-string v3, "VDM_ERR_COMMS_FATAL"

    const/16 v4, 0x6302

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->COMMS_FATAL:Lcom/redbend/vdm/VdmException$VdmError;

    .line 268
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "COMMS_NON_FATAL"

    const/16 v2, 0x3f

    const-string v3, "VDM_ERR_COMMS_NON_FATAL"

    const/16 v4, 0x6303

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->COMMS_NON_FATAL:Lcom/redbend/vdm/VdmException$VdmError;

    .line 271
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "COMMS_SOCKET_TIMEOUT"

    const/16 v2, 0x40

    const-string v3, "VDM_ERR_COMMS_SOCKET_TIMEOUT"

    const/16 v4, 0x6304

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->COMMS_SOCKET_TIMEOUT:Lcom/redbend/vdm/VdmException$VdmError;

    .line 274
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "COMMS_SOCKET_ERROR"

    const/16 v2, 0x41

    const-string v3, "VDM_ERR_COMMS_SOCKET_ERROR"

    const/16 v4, 0x6305

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->COMMS_SOCKET_ERROR:Lcom/redbend/vdm/VdmException$VdmError;

    .line 277
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "COMMS_HTTP_ERROR"

    const/16 v2, 0x42

    const-string v3, "VDM_ERR_COMMS_HTTP_ERROR"

    const/16 v4, 0x6340

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->COMMS_HTTP_ERROR:Lcom/redbend/vdm/VdmException$VdmError;

    .line 280
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "INTERNAL"

    const/16 v2, 0x43

    const-string v3, "VDM_ERR_INTERNAL"

    const/16 v4, 0x6401

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->INTERNAL:Lcom/redbend/vdm/VdmException$VdmError;

    .line 283
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "MO_STORAGE"

    const/16 v2, 0x44

    const-string v3, "VDM_ERR_MO_STORAGE"

    const/16 v4, 0x6402

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->MO_STORAGE:Lcom/redbend/vdm/VdmException$VdmError;

    .line 286
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "CANCEL"

    const/16 v2, 0x45

    const-string v3, "VDM_ERR_CANCEL"

    const/16 v4, 0x6404

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->CANCEL:Lcom/redbend/vdm/VdmException$VdmError;

    .line 289
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "UPDATE_INIT"

    const/16 v2, 0x46

    const-string v3, "VDM_ERR_UPDATE_INIT"

    const/16 v4, 0x6405

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->UPDATE_INIT:Lcom/redbend/vdm/VdmException$VdmError;

    .line 292
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "BAD_URL"

    const/16 v2, 0x47

    const-string v3, "VDM_ERR_BAD_URL"

    const/16 v4, 0x6406

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->BAD_URL:Lcom/redbend/vdm/VdmException$VdmError;

    .line 295
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "BAD_DD"

    const/16 v2, 0x48

    const-string v3, "VDM_ERR_BAD_DD"

    const/16 v4, 0x6407

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->BAD_DD:Lcom/redbend/vdm/VdmException$VdmError;

    .line 298
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "COMMS_OBJECT_CHANGED"

    const/16 v2, 0x49

    const-string v3, "VDM_ERR_COMMS_OBJECT_CHANGED"

    const/16 v4, 0x6408

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->COMMS_OBJECT_CHANGED:Lcom/redbend/vdm/VdmException$VdmError;

    .line 304
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "OUT_OF_SYNC"

    const/16 v2, 0x4a

    const-string v3, "VDM_ERR_OUT_OF_SYNC"

    const/16 v4, 0x6500

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->OUT_OF_SYNC:Lcom/redbend/vdm/VdmException$VdmError;

    .line 310
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "REGISTRY"

    const/16 v2, 0x4b

    const-string v3, "VDM_ERR_REGISTRY"

    const v4, 0x8001

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->REGISTRY:Lcom/redbend/vdm/VdmException$VdmError;

    .line 313
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "SHUTTING_DOWN"

    const/16 v2, 0x4c

    const-string v3, "VDM_ERR_SHUTTING_DOWN"

    const v4, 0x8002

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->SHUTTING_DOWN:Lcom/redbend/vdm/VdmException$VdmError;

    .line 316
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "OUT_OF_BOUNDS"

    const/16 v2, 0x4d

    const-string v3, "VDM_ERR_OUT_OF_BOUNDS"

    const v4, 0x8003

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->OUT_OF_BOUNDS:Lcom/redbend/vdm/VdmException$VdmError;

    .line 319
    new-instance v0, Lcom/redbend/vdm/VdmException$VdmError;

    const-string v1, "STORAGE_REMOVE"

    const/16 v2, 0x4e

    const-string v3, "VDM_ERR_STORAGE_REMOVE"

    const v4, 0x8004

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/redbend/vdm/VdmException$VdmError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->STORAGE_REMOVE:Lcom/redbend/vdm/VdmException$VdmError;

    .line 73
    const/16 v0, 0x4f

    new-array v0, v0, [Lcom/redbend/vdm/VdmException$VdmError;

    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->OK:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v1, v0, v5

    const/4 v1, 0x1

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_INPUT_PARAM:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->UNSPECIFIC:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->MEMORY:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_CALL:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->IS_SUSPENDED:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->INVALID_PROTO_OR_VERSION:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->RTK_BUFFER_OVERFLOW:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->BUFFER_OVERFLOW:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->BAD_INPUT:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->ALREADY_EXISTS:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->NODE_MISSING:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->PARENT_MISSING:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->LEAF_NODE:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->NOT_LEAF_NODE:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->UNKNOWN_PROPERTY:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->PERMANENT_NODE:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->NOT_ALLOWED:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->ABORT:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v1, v0, v9

    const/16 v1, 0x13

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->TREE_ACCESS_DENIED:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->TREE_EXT_NOT_PARTIAL:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->TREE_EXT_NOT_ALLOWED:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->MAY_TREE_NOT_REPLACE:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->STORAGE_READ:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->STORAGE_WRITE:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->AUTHENTICATION:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->NODE_ACCESS_DENIED:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->NODE_VALUE_NOT_READABLE:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->NODE_VALUE_NODE_NOT_WRITEABLE:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->NODE_NOT_EXECUTABLE:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->STORAGE_OPEN:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->STORAGE_COMMIT:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->NO_MORE_COMMANDS:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->MISSING_START_MESSAGE_CMD:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->MISSING_STATUS_CMD:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->NOT_IMPLEMENTED:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->ALERT_PARSING_ERROR:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->ALERT_MISSING_ITEMS:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->ALERT_MISSING_DATA:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->NO_DATA:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->ALERT_USER_ABORTED:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->ALERT_TOO_MANY_CHOICES:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->ALERT_SESSION_ABORTED:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->LO_HANDLED:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->TOO_BIG:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->COMMAND_FAILED:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->NOTIF_BAD_LENGTH:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->NOTIF_BAD_DIGEST:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->BOOT_DIGEST:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->BOOT_NSS:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->BOOT_PIN:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->BOOT_PINLENGTH:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->BOOT_BAD_SEC:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->BOOT_BAD_MAC:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->BOOT_BAD_MESSAGE:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->BOOT_BAD_PROF:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->TRG_BAD_REASON:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->NOTIF_UNSUPPORTED_VERSION:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->BOOT_DISABLED:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->DL_OBJ_TOO_LARGE:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->COMMS_BAD_PROTOCOL:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->COMMS_MIME_MISMATCH:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->COMMS_FATAL:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->COMMS_NON_FATAL:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x40

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->COMMS_SOCKET_TIMEOUT:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x41

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->COMMS_SOCKET_ERROR:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x42

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->COMMS_HTTP_ERROR:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x43

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->INTERNAL:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x44

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->MO_STORAGE:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x45

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->CANCEL:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x46

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->UPDATE_INIT:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x47

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->BAD_URL:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x48

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->BAD_DD:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x49

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->COMMS_OBJECT_CHANGED:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->OUT_OF_SYNC:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->REGISTRY:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->SHUTTING_DOWN:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->OUT_OF_BOUNDS:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    sget-object v2, Lcom/redbend/vdm/VdmException$VdmError;->STORAGE_REMOVE:Lcom/redbend/vdm/VdmException$VdmError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/redbend/vdm/VdmException$VdmError;->$VALUES:[Lcom/redbend/vdm/VdmException$VdmError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "str"
    .parameter "v"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 321
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 322
    iput-object p3, p0, Lcom/redbend/vdm/VdmException$VdmError;->string:Ljava/lang/String;

    .line 323
    iput p4, p0, Lcom/redbend/vdm/VdmException$VdmError;->val:I

    .line 324
    return-void
.end method

.method public static fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;
    .locals 5
    .parameter "errNum"

    .prologue
    .line 326
    invoke-static {}, Lcom/redbend/vdm/VdmException$VdmError;->values()[Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v0

    .local v0, arr$:[Lcom/redbend/vdm/VdmException$VdmError;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 327
    .local v1, err:Lcom/redbend/vdm/VdmException$VdmError;
    iget v4, v1, Lcom/redbend/vdm/VdmException$VdmError;->val:I

    if-ne v4, p0, :cond_0

    .line 330
    .end local v1           #err:Lcom/redbend/vdm/VdmException$VdmError;
    :goto_1
    return-object v1

    .line 326
    .restart local v1       #err:Lcom/redbend/vdm/VdmException$VdmError;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 330
    .end local v1           #err:Lcom/redbend/vdm/VdmException$VdmError;
    :cond_1
    sget-object v1, Lcom/redbend/vdm/VdmException$VdmError;->UNSPECIFIC:Lcom/redbend/vdm/VdmException$VdmError;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/VdmException$VdmError;
    .locals 1
    .parameter "name"

    .prologue
    .line 73
    const-class v0, Lcom/redbend/vdm/VdmException$VdmError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/VdmException$VdmError;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/VdmException$VdmError;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/redbend/vdm/VdmException$VdmError;->$VALUES:[Lcom/redbend/vdm/VdmException$VdmError;

    invoke-virtual {v0}, [Lcom/redbend/vdm/VdmException$VdmError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/VdmException$VdmError;

    return-object v0
.end method

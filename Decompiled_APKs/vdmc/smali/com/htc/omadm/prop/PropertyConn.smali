.class public Lcom/htc/omadm/prop/PropertyConn;
.super Ljava/lang/Object;
.source "PropertyConn.java"


# static fields
.field public static final APNStrs:[[Ljava/lang/String; = null

.field public static final CONN_DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final CONN_DATA_ACTIVITY_IN:I = 0x1

.field public static final CONN_DATA_ACTIVITY_INOUT:I = 0x3

.field public static final CONN_DATA_ACTIVITY_NONE:I = 0x0

.field public static final CONN_DATA_ACTIVITY_OUT:I = 0x2

.field public static final CONN_DATA_CONNECTED:I = 0x2

.field public static final CONN_DATA_CONNECTING:I = 0x1

.field public static final CONN_DATA_DISCONNECTED:I = 0x0

.field public static final CONN_DATA_SUSPENDED:I = 0x3

.field public static final CONN_DORMANT_COUNTDOWN_START:I = 0x0

.field public static final CONN_NETWORK_TYPE_2G:I = 0x1

.field public static final CONN_NETWORK_TYPE_3G:I = 0x2

.field public static final CONN_NETWORK_TYPE_NO_SERVICE:I = 0x0

.field public static final CONN_NOTIFICATION_HANDLE_CONDITION_FAIL:I = 0x0

.field public static final CONN_NOTIFICATION_HANDLE_CONDITION_SUCCESS:I = 0x1

.field public static final CONN_NOTIFICATION_HANDLE_CONDITION_WAIT:I = 0x2

.field public static final CONN_PHONE_TYPE_CDMA:I = 0x2

.field public static final CONN_PHONE_TYPE_GSM:I = 0x1

.field public static final CONN_PHONE_TYPE_NONE:I = 0x0

.field public static final CONN_POLICY_CDMA_SLOT_0:I = 0x0

.field public static final CONN_POLICY_CDMA_SLOT_1:I = 0x1

.field public static final CONN_POLICY_CDMA_SLOT_2:I = 0x2

.field public static final CONN_POLICY_CDMA_SLOT_3:I = 0x3

.field public static final CONN_POLICY_CDMA_SLOT_4:I = 0x4

.field public static final CONN_POLICY_CDMA_SLOT_5:I = 0x5

.field public static final CONN_POLICY_CDMA_SLOT_NONE:I = -0x1

.field public static final CONN_POLICY_RULE_APN:I = 0x1

.field public static final CONN_POLICY_RULE_CURRENT_NETWORK:I = 0x5

.field public static final CONN_POLICY_RULE_MIP1:I = 0x3

.field public static final CONN_POLICY_RULE_MIP1_TO_MIP0:I = 0x2

.field public static final CONN_POLICY_RULE_OTHERS:I = 0x4

.field public static final CONN_POLICY_UNINTERRUPTE_CONNECTION_TIME:J = 0x493e0L

.field public static final CONN_SCREEN_STATE_SCREEN_OFF:I = 0x1

.field public static final CONN_SCREEN_STATE_SCREEN_ON:I = 0x0

.field public static final CONN_SIM_STATE_ABSENT:I = 0x1

.field public static final CONN_SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final CONN_SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final CONN_SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final CONN_SIM_STATE_READY:I = 0x5

.field public static final CONN_SIM_STATE_UNKNOWN:I = 0x0

.field public static final CONN_STATE_CALL_IDLE:I = 0x0

.field public static final CONN_STATE_CALL_OFFHOOK:I = 0x2

.field public static final CONN_STATE_CALL_RINGING:I = 0x1

.field public static final CONN_STATE_CONNECTED:I = 0x2

.field public static final CONN_STATE_CONNECTING:I = 0x1

.field public static final CONN_STATE_NOT_AVAILABLE:I = 0x0

.field public static final CONN_STATE_NOT_OPEN:I = -0x1

.field public static final CONN_USING_CURRENT_CDMA:I = 0x1

.field public static final CONN_USING_CURRENT_NONE:I = 0x0

.field public static final CONN_USING_CURRENT_WIFI:I = 0x2

.field public static final CONN_USING_CURRENT_WIMAX:I = 0x3

.field public static final DM_SERVER_URL:[Ljava/lang/String; = null

.field public static final SESSION_TYPE_NI:I = 0x0

.field public static final SESSION_TYPE_NON_NI:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v3

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "name:apn:type"

    aput-object v2, v1, v3

    const-string v2, "Espresso:internet:hipri"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/omadm/prop/PropertyConn;->APNStrs:[[Ljava/lang/String;

    .line 84
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/omadm/prop/PropertyConn;->DM_SERVER_URL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static converConnectionResult(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 89
    packed-switch p0, :pswitch_data_0

    .line 99
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 91
    :pswitch_0
    const-string v0, "CONN_STATE_NOT_OPEN"

    goto :goto_0

    .line 93
    :pswitch_1
    const-string v0, "CONN_STATE_NOT_AVAILABLE"

    goto :goto_0

    .line 95
    :pswitch_2
    const-string v0, "CONN_STATE_CONNECTING"

    goto :goto_0

    .line 97
    :pswitch_3
    const-string v0, "CONN_STATE_CONNECTED"

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.class public Lcom/htc/omadm/prop/PropertyState;
.super Ljava/lang/Object;
.source "PropertyState.java"


# static fields
.field public static final ACTION_DM_CI_TIRGGER:Ljava/lang/String; = "com.htc.omadm.trigger"

.field public static final ACTION_DM_HFA_VERIFY:Ljava/lang/String; = "android.intent.action.HFA_VERIFY_INTENT"

.field public static final ACTION_DM_QUICKBOOT:Ljava/lang/String; = "android.intent.action.QUICKBOOT_POWERON"

.field public static final ACTION_DM_SERIVCE_SESSION_FUMO_FOTA_RESULT_EXTRA:Ljava/lang/String; = "SESSION_RESULT"

.field public static final ACTION_DM_SERIVCE_SESSION_ID_EXTRA:Ljava/lang/String; = "SESSION_ID"

.field public static final ACTION_DM_SERIVCE_SESSION_TYPE_EXTRA:Ljava/lang/String; = "SESSION_TYPE"

.field public static final ACTION_DM_SERIVCE_SESSION_WAP_DATA_EXTRA:Ljava/lang/String; = "SESSION_WAP_DATA"

.field public static final ACTION_DM_SERIVCE_START:Ljava/lang/String; = "com.htc.omadm.core.start"

.field public static final ACTION_DM_SERVICE_INITIAL:Ljava/lang/String; = "com.htc.omadm.core.init"

.field public static final ACTION_DM_SERVICE_OOBE_NOTIFY_READY:Ljava/lang/String; = "com.htc.omadm.core.oobenotifyready"

.field public static final ACTION_DM_SERVICE_SET_FOREGROUND:Ljava/lang/String; = "com.htc.omadm.core.setforeground"

.field public static final ACTION_SMSI_CI_TRIGGER:Ljava/lang/String; = "com.smithmicro.DM.intent.action.CI_DM"

.field public static final ACTION_SMSI_DM_TRIGGER:Ljava/lang/String; = "com.smithmicro.DM.trigger"

.field public static final ACTION_SMSI_FUMO_RESULT:Ljava/lang/String; = "com.smithmicro.DM.intent.action.UPDATE_RESULT"

.field public static final ACTION_SMSI_NI_TRIGGER:Ljava/lang/String; = "com.smithmicro.DM.intent.action.NI_DM"

.field public static final ACTION_SMSI_POWER_UP:Ljava/lang/String; = "com.smithmicro.DM.intent.action.POWERUP_DM"

.field public static final ACTION_SMSI_START_UPDATE:Ljava/lang/String; = "com.smithmicro.DM.intent.action.START_UPDATE"

.field public static final CALL_STATE_BUSY:I = 0x3

.field public static final CALL_STATE_IDLE:I = 0x2

.field public static final CLIENT_INIT_FIRMWARE_UPDATE:I = 0x3

.field public static COUNT_DOWN:I = 0x0

.field public static final DM_CHECK_NI_NOTIFY_CONDITION:I = 0x16

.field public static DM_NIFUMO_RUNNING:Z = false

.field public static DM_NI_MODE:Z = false

.field public static DM_RUNNING:I = 0x0

.field public static final DM_SERIVCE_NAME:Ljava/lang/String; = "com.htc.omadm.core.DMService"

.field public static final DM_SERVICE_INIT:I = 0x0

.field public static DM_STATE_ABORT:I = 0x0

.field public static DM_STATE_DOWNLOADED:I = 0x0

.field public static DM_STATE_DOWNLOADING:I = 0x0

.field public static DM_STATE_DOWNLOAD_ABORT:I = 0x0

.field public static DM_STATE_DOWNLOAD_AVALIABLE:I = 0x0

.field public static DM_STATE_END_CANCEL:I = 0x0

.field public static DM_STATE_END_FAIL:I = 0x0

.field public static DM_STATE_END_SUCCESS:I = 0x0

.field public static DM_STATE_END_SUCCESS_NEW_FW:I = 0x0

.field public static DM_STATE_END_SUCCESS_NO_FW:I = 0x0

.field public static DM_STATE_INIT:I = 0x0

.field public static DM_STATE_INSTALLING:I = 0x0

.field public static final DM_STATE_MAPPING_STRING:[Ljava/lang/String; = null

.field public static DM_STATE_NOPAYLOAD:I = 0x0

.field public static DM_STATE_PROVISIONING:I = 0x0

.field public static DM_STATE_RUNNING:I = 0x0

.field public static DM_STATE_USER_CANCELING:I = 0x0

.field public static final DM_TYPE_CHECK_SESSION_QUEUE:I = 0x15

.field public static final DM_TYPE_CIDC:I = 0x7

.field public static final DM_TYPE_CIFUMO:I = 0xb

.field public static final DM_TYPE_CIPRL:I = 0x9

.field public static final DM_TYPE_FOTA_REPORT:I = 0xd

.field public static final DM_TYPE_FUMO_REPORT:I = 0xc

.field public static final DM_TYPE_FUMO_REPORT_DEFER_PACKAGE:I = 0x17

.field public static final DM_TYPE_FUMO_SUSPEND_BY_BATTERY:I = 0xe

.field public static final DM_TYPE_FUMO_SUSPEND_BY_STOP_INSTALL:I = 0x10

.field public static final DM_TYPE_FUMO_SUSPEND_BY_STORAGE:I = 0xf

.field public static final DM_TYPE_HFA_DC:I = 0x2

.field public static final DM_TYPE_HFA_FUMO:I = 0x4

.field public static final DM_TYPE_HFA_PRL:I = 0x3

.field public static final DM_TYPE_HFA_REPORT:I = 0x5

.field public static final DM_TYPE_IS_NI:[Z = null

.field public static final DM_TYPE_LAWMO:I = 0x11

.field public static final DM_TYPE_MAPPING_STRING:[Ljava/lang/String; = null

.field public static final DM_TYPE_NIDC:I = 0x6

.field public static final DM_TYPE_NIFUMO:I = 0xa

.field public static final DM_TYPE_NIPRL:I = 0x8

.field public static final DM_TYPE_NI_BACKGROUND:I = 0x12

.field public static final DM_TYPE_NI_INFORMATIVE:I = 0x13

.field public static final DM_TYPE_NI_INTERACTIVE:I = 0x14

.field public static final DM_TYPE_NONE:I = 0x1

.field public static final ERROR_CODE_CONNECTION_FAIL:I = 0x3f4

.field public static final ERROR_CODE_NO_PAYLOAD:I = 0x197

.field public static final ERROR_CODE_SESSION_ABORT:I = 0x4d1

.field public static final EVENT_CALL_END:I = 0xd

.field public static final EVENT_DM_CONNECTION_FAIL:I = 0x1

.field public static final EVENT_DOWNLOAD_AVALIABLE:I = 0x5

.field public static final EVENT_INIT_DM_CONNECTION:I = 0x0

.field public static final EVENT_NEXT_TRANSACTION_POINT:I = 0x3

.field public static final EVENT_RESUME_DOWNLOAD:I = 0x6

.field public static final EVENT_SESSION_DL_ABORTED:I = 0xc

.field public static final EVENT_SESSION_DM_ABORTED:I = 0xb

.field public static final EVENT_SESSION_END_NOT_PROVISION:I = 0xa

.field public static final EVENT_SESSION_END_PROVISION:I = 0x9

.field public static final EVENT_SESSION_INTERRUPTE:I = 0x7

.field public static final EVENT_SESSION_OVERLAPPING:I = 0x8

.field public static final EVENT_SESSION_PROVISIONING:I = 0x4

.field public static final EVENT_SESSION_STARTING:I = 0x2

.field public static final EnableForeground:Ljava/lang/String; = "EnableForeground"

.field public static FLAG_CALL_STATE_IDLE:Z = false

.field public static FLAG_RETRY_RESUME_UI_TO_FOREGROUND:Z = false

.field public static FLAG_RETRY_START_UI_ACTIVITY:Z = false

.field public static final HTC_APP_VERSION:Ljava/lang/String; = "1.0.2"

.field public static OOBEServiceReady:Z = false

.field public static OOBEUIReady:Z = false

.field public static PackageInstalled:I = 0x0

.field public static PackageInstalling:I = 0x0

.field public static PackageNone:I = 0x0

.field public static PackagePending:I = 0x0

.field public static final RESUME_UI_TO_FOREGROUND:I = 0x1

.field public static RETRY_TIME_LIMITATION:I = 0x0

.field public static final RULE_EVENT_MAPPING_STRING:[Ljava/lang/String; = null

.field public static final RUN_VDMC:Z = true

.field public static final START_UI_ACTIVITY:I = 0x0

.field public static UI_PROGRESS_BAR_ENABLE:Z = false

.field public static UI_SHOWING:I = 0x0

.field public static final USER_INIT_CLIENT_CONFIG:I = 0x4

.field public static final USER_INIT_DEVICE_CONFIG:I = 0x1

.field public static final USER_INIT_FIRMWARE_UPDATE:I = 0x2

.field public static final USER_INIT_PRL_UPGRADE:I = 0x5

.field public static final WAIT_OOBE_UI_TIME:J = 0x1d4c0L

.field public static _CANCEL_HFA:Z = false

.field public static _FUMO_PROGRESS_CANCEL:Z = false

.field public static _HFA_DONE:Z = false

.field public static _HFA_FROM_OOBE:Z = false

.field public static _HFA_RUNNING:Z = false

.field public static _HFA_SHOW_READY:I = 0x0

.field public static final _HFA_SHOW_READY_INIT:I = 0x0

.field public static final _HFA_SHOW_READY_OTHERS:I = 0x2

.field public static final _HFA_SHOW_READY_SHOWN:I = 0x1

.field public static _MULTI_SESSION_QUEUE:Z

.field public static _TRIGGER_DSS:Z

.field public static hasRunPowerUPbyPreload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    sput v3, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_INIT:I

    .line 6
    sput v4, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_RUNNING:I

    .line 7
    sput v5, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_USER_CANCELING:I

    .line 8
    sput v6, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_PROVISIONING:I

    .line 9
    const/4 v0, 0x4

    sput v0, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_NOPAYLOAD:I

    .line 10
    sput v7, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOAD_AVALIABLE:I

    .line 11
    const/4 v0, 0x6

    sput v0, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOADING:I

    .line 12
    const/4 v0, 0x7

    sput v0, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOAD_ABORT:I

    .line 13
    const/16 v0, 0x8

    sput v0, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOADED:I

    .line 14
    const/16 v0, 0x9

    sput v0, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_INSTALLING:I

    .line 15
    const/16 v0, 0xa

    sput v0, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_SUCCESS:I

    .line 16
    const/16 v0, 0xb

    sput v0, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_SUCCESS_NEW_FW:I

    .line 17
    const/16 v0, 0xc

    sput v0, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_SUCCESS_NO_FW:I

    .line 18
    const/16 v0, 0xd

    sput v0, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_FAIL:I

    .line 19
    const/16 v0, 0xe

    sput v0, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_CANCEL:I

    .line 20
    const/16 v0, 0xf

    sput v0, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_ABORT:I

    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DM_STATE_INIT"

    aput-object v1, v0, v3

    const-string v1, "DM_STATE_RUNNING"

    aput-object v1, v0, v4

    const-string v1, "DM_STATE_USER_CANCELING"

    aput-object v1, v0, v5

    const-string v1, "DM_STATE_PROVISIONING"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "DM_STATE_NOPAYLOAD"

    aput-object v2, v0, v1

    const-string v1, "DM_STATE_DOWNLOAD_AVALIABLE"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "DM_STATE_DOWNLOADING"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DM_STATE_DOWNLOAD_ABORT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DM_STATE_DOWNLOADED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DM_STATE_INSTALLING"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM_STATE_END_SUCCESS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DM_STATE_END_SUCCESS_NEW_FW"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "DM_STATE_END_SUCCESS_NO_FW"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "DM_STATE_END_FAIL"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "DM_STATE_END_CANCEL"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "DM_STATE_ABORT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_MAPPING_STRING:[Ljava/lang/String;

    .line 34
    sput v3, Lcom/htc/omadm/prop/PropertyState;->DM_RUNNING:I

    .line 58
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DM_SERVICE_INIT"

    aput-object v1, v0, v3

    const-string v1, "NONE"

    aput-object v1, v0, v4

    const-string v1, "HFA_DC"

    aput-object v1, v0, v5

    const-string v1, "HFA_PRL"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "HFA_FUMO"

    aput-object v2, v0, v1

    const-string v1, "HFA_REPORT"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "NIDC"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CIDC"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NIPRL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "CIPRL"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "NIFUMO"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CIFUMO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "FUMO_REPORT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "FOTA_REPORT"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "FUMO_SUSPEND_BY_BATTERY"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "FUMO_SUSPEND_BY_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "FUMO_SUSPEND_BY_STOP_INSTALL"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "LAWMO"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "NI_BACKGROUND"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "NI_INFORMATIVE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "NI_INTERACTIVE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "N/A"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "N/A"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "FUMO_REPORT_DEFER_PACKAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/omadm/prop/PropertyState;->DM_TYPE_MAPPING_STRING:[Ljava/lang/String;

    .line 65
    const/16 v0, 0x18

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/omadm/prop/PropertyState;->DM_TYPE_IS_NI:[Z

    .line 80
    const v0, 0xea60

    sput v0, Lcom/htc/omadm/prop/PropertyState;->COUNT_DOWN:I

    .line 81
    sput v7, Lcom/htc/omadm/prop/PropertyState;->RETRY_TIME_LIMITATION:I

    .line 86
    sput-boolean v3, Lcom/htc/omadm/prop/PropertyState;->DM_NI_MODE:Z

    .line 88
    sput-boolean v3, Lcom/htc/omadm/prop/PropertyState;->DM_NIFUMO_RUNNING:Z

    .line 89
    sput-boolean v3, Lcom/htc/omadm/prop/PropertyState;->hasRunPowerUPbyPreload:Z

    .line 92
    sput-boolean v3, Lcom/htc/omadm/prop/PropertyState;->_MULTI_SESSION_QUEUE:Z

    .line 93
    sput-boolean v3, Lcom/htc/omadm/prop/PropertyState;->_FUMO_PROGRESS_CANCEL:Z

    .line 96
    sput-boolean v3, Lcom/htc/omadm/prop/PropertyState;->_CANCEL_HFA:Z

    .line 97
    sput-boolean v3, Lcom/htc/omadm/prop/PropertyState;->_HFA_FROM_OOBE:Z

    .line 98
    sput-boolean v3, Lcom/htc/omadm/prop/PropertyState;->_HFA_RUNNING:Z

    .line 99
    sput-boolean v3, Lcom/htc/omadm/prop/PropertyState;->_HFA_DONE:Z

    .line 100
    sput-boolean v3, Lcom/htc/omadm/prop/PropertyState;->_TRIGGER_DSS:Z

    .line 102
    sput v3, Lcom/htc/omadm/prop/PropertyState;->_HFA_SHOW_READY:I

    .line 144
    sput v3, Lcom/htc/omadm/prop/PropertyState;->UI_SHOWING:I

    .line 151
    sput-boolean v3, Lcom/htc/omadm/prop/PropertyState;->FLAG_RETRY_START_UI_ACTIVITY:Z

    .line 152
    sput-boolean v3, Lcom/htc/omadm/prop/PropertyState;->FLAG_RETRY_RESUME_UI_TO_FOREGROUND:Z

    .line 153
    sput-boolean v4, Lcom/htc/omadm/prop/PropertyState;->FLAG_CALL_STATE_IDLE:Z

    .line 154
    sput-boolean v4, Lcom/htc/omadm/prop/PropertyState;->UI_PROGRESS_BAR_ENABLE:Z

    .line 174
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EVENT_INIT_DM_CONNECTION"

    aput-object v1, v0, v3

    const-string v1, "EVENT_DM_CONNECTION_FAIL"

    aput-object v1, v0, v4

    const-string v1, "EVENT_SESSION_STARTING"

    aput-object v1, v0, v5

    const-string v1, "EVENT_NEXT_TRANSACTION_POINT"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "EVENT_SESSION_PROVISIONING"

    aput-object v2, v0, v1

    const-string v1, "EVENT_DOWNLOAD_AVALIABLE"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "EVENT_RESUME_DOWNLOAD"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EVENT_SESSION_INTERRUPTE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EVENT_SESSION_OVERLAPPING"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EVENT_SESSION_END_PROVISION"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EVENT_SESSION_END_NOT_PROVISION"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EVENT_SESSION_DM_ABORTED"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EVENT_SESSION_DL_ABORTED"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EVENT_CALL_END"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/omadm/prop/PropertyState;->RULE_EVENT_MAPPING_STRING:[Ljava/lang/String;

    .line 200
    sput v3, Lcom/htc/omadm/prop/PropertyState;->PackageNone:I

    .line 201
    sput v4, Lcom/htc/omadm/prop/PropertyState;->PackagePending:I

    .line 202
    sput v5, Lcom/htc/omadm/prop/PropertyState;->PackageInstalling:I

    .line 203
    sput v6, Lcom/htc/omadm/prop/PropertyState;->PackageInstalled:I

    .line 206
    sput-boolean v3, Lcom/htc/omadm/prop/PropertyState;->OOBEUIReady:Z

    .line 207
    sput-boolean v3, Lcom/htc/omadm/prop/PropertyState;->OOBEServiceReady:Z

    return-void

    .line 65
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

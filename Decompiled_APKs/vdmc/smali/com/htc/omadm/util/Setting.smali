.class public Lcom/htc/omadm/util/Setting;
.super Ljava/lang/Object;
.source "Setting.java"


# static fields
.field public static final CHANGE_NO:I = 0x0

.field public static final CHANGE_YES:I = 0x1

.field public static final DEFAULT_EMPTY_STRING:Ljava/lang/String; = ""

.field public static final DEFAULT_INT:I = 0x3e8

.field public static final DEFAULT_LONG:J = 0x186a0L

.field public static final DEFAULT_STRING:Ljava/lang/String; = "NONE"

.field public static final DEFAULT_USER_UNLOCK_TIME:I = 0x1

.field private static DeviceIDRetrieveCnt:I = 0x0

.field private static final KEY_CHANGE_LIST:Ljava/lang/String; = "Change_List"

.field private static final KEY_CUSTOMER:Ljava/lang/String; = "Customer"

.field private static final KEY_CUSTOMER_NUMERIC:Ljava/lang/String; = "Numeric"

.field private static final KEY_DCMO_BT_DUE:Ljava/lang/String; = "DCMO_BT_DUE"

.field private static final KEY_DCMO_CAMERA_DUE:Ljava/lang/String; = "DCMO_Camera_DUE"

.field private static final KEY_DCMO_CAMERA_ENABLE:Ljava/lang/String; = "DCMO_Camera_Enable"

.field private static final KEY_DCMO_GPS_DUE:Ljava/lang/String; = "DCMO_GPS_DUE"

.field private static final KEY_DCMO_WLAN_DUE:Ljava/lang/String; = "DCMO_WLan_DUE"

.field private static final KEY_FUMO_DESCRIPTION:Ljava/lang/String; = "FumoDesc"

.field private static final KEY_FUMO_DES_TIME:Ljava/lang/String; = "FumoDescTime"

.field private static final KEY_FUMO_STATE:Ljava/lang/String; = "FumoState"

.field private static final KEY_FUMO_UISTATE:Ljava/lang/String; = "FumoUIState"

.field private static final KEY_ID_DEVICE:Ljava/lang/String; = "ID_Device"

.field private static final KEY_ID_MODEL:Ljava/lang/String; = "ID_Model"

.field private static final KEY_INIT:Ljava/lang/String; = "Init"

.field private static final KEY_LAWMO_FACTORYRESET:Ljava/lang/String; = "FactoryReset"

.field private static final KEY_LAWMO_LOCK:Ljava/lang/String; = "LawmoLock"

.field private static final KEY_LAWMO_PIN:Ljava/lang/String; = "LawmoPin"

.field private static final KEY_LAWMO_WIPE:Ljava/lang/String; = "LawmoWipe"

.field private static final KEY_MAN_INFO:Ljava/lang/String; = "Manufacture"

.field private static final KEY_PHONE_NUMBER:Ljava/lang/String; = "Phone_Number"

.field private static final KEY_PHONE_NUMBER_CHANGE:Ljava/lang/String; = "Phone_Number_Change"

.field private static final KEY_PIN_CODE_FOR_UNLOCK:Ljava/lang/String; = "pin_code_unlock"

.field private static final KEY_PROJECT:Ljava/lang/String; = "Project"

.field private static final KEY_REPORT_SPECIAL:Ljava/lang/String; = "REPORT_SPECIAL"

.field private static final KEY_SERVER_ADDRESS:Ljava/lang/String; = "Server_Address"

.field private static final KEY_SERVER_PORT:Ljava/lang/String; = "Server_Port"

.field private static final KEY_SESSION_QUEUE:Ljava/lang/String; = "SessionQueue"

.field private static final KEY_SESSION_STATE:Ljava/lang/String; = "SessionState"

.field private static final KEY_SESSION_TYPE:Ljava/lang/String; = "SessionType"

.field private static final KEY_SOLUTION:Ljava/lang/String; = "Solution"

.field private static final KEY_USER_UNLOCK_TIME:Ljava/lang/String; = "user_unlock_tme"

.field private static final KEY_VENDOR:Ljava/lang/String; = "Vendor"

.field private static final KEY_VERSION_FIRMWARE:Ljava/lang/String; = "Version_Frimware"

.field private static final KEY_VERSION_HARDWARE:Ljava/lang/String; = "Version_Hardware"

.field private static final KEY_VERSION_SOFTWARE:Ljava/lang/String; = "Version_Software"

.field public static final MDN_CHANGED:I = 0x1

.field public static final MDN_NOT_CHANGED:I = 0x0

.field public static final MDN_NOT_READY:I = -0x1

.field private static mInstance:Lcom/htc/omadm/util/Setting;


# instance fields
.field private EventHandler:Landroid/os/Handler;

.field private final LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPhoneInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;

.field private mTasks:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/util/Setting;->mInstance:Lcom/htc/omadm/util/Setting;

    .line 645
    const/4 v0, 0x0

    sput v0, Lcom/htc/omadm/util/Setting;->DeviceIDRetrieveCnt:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "mContext"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v2, "Setting"

    iput-object v2, p0, Lcom/htc/omadm/util/Setting;->LOG_TAG:Ljava/lang/String;

    .line 80
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/htc/omadm/util/Setting;->EventHandler:Landroid/os/Handler;

    .line 647
    new-instance v2, Lcom/htc/omadm/util/Setting$1;

    invoke-direct {v2, p0}, Lcom/htc/omadm/util/Setting$1;-><init>(Lcom/htc/omadm/util/Setting;)V

    iput-object v2, p0, Lcom/htc/omadm/util/Setting;->mTasks:Ljava/lang/Runnable;

    .line 95
    invoke-static {}, Lcom/htc/omadm/libdo/system/PhoneInfo;->getSingleton()Lcom/htc/omadm/libdo/system/PhoneInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/omadm/util/Setting;->mPhoneInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;

    .line 96
    iput-object p1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 99
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "Init"

    const-string v3, "NONE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, Init:Ljava/lang/String;
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/htc/omadm/util/Setting;->InitToDefault()V

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/htc/omadm/util/Setting;->Get_SessionState()I

    move-result v2

    sget v3, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOADED:I

    if-eq v2, v3, :cond_0

    .line 107
    sget v2, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_INIT:I

    invoke-virtual {p0, v2}, Lcom/htc/omadm/util/Setting;->Set_SessionState(I)V

    .line 108
    :cond_0
    return-void

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/htc/omadm/util/Setting;->FreshValue()V

    goto :goto_0
.end method

.method private FreshValue()V
    .locals 4

    .prologue
    .line 526
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 528
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "Version_Software"

    iget-object v3, p0, Lcom/htc/omadm/util/Setting;->mPhoneInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;

    invoke-virtual {v3}, Lcom/htc/omadm/libdo/system/PhoneInfo;->Software_Version()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 531
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "Version_Hardware"

    iget-object v3, p0, Lcom/htc/omadm/util/Setting;->mPhoneInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;

    invoke-virtual {v3}, Lcom/htc/omadm/libdo/system/PhoneInfo;->Hardware_Version()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 536
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "Version_Frimware"

    iget-object v3, p0, Lcom/htc/omadm/util/Setting;->mPhoneInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;

    invoke-virtual {v3}, Lcom/htc/omadm/libdo/system/PhoneInfo;->BuildNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 538
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "Change_List"

    iget-object v3, p0, Lcom/htc/omadm/util/Setting;->mPhoneInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;

    invoke-virtual {v3}, Lcom/htc/omadm/libdo/system/PhoneInfo;->ChangeList()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 539
    return-void
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    new-instance v0, Lcom/htc/omadm/util/Setting;

    invoke-direct {v0, p0}, Lcom/htc/omadm/util/Setting;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/util/Setting;->mInstance:Lcom/htc/omadm/util/Setting;

    .line 93
    return-void
.end method

.method private InitIncredible()V
    .locals 12

    .prologue
    .line 542
    iget-object v10, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 544
    .local v9, sp:Landroid/content/SharedPreferences;
    const-string v8, "verizon"

    .line 545
    .local v8, VALUE_VENDOR:Ljava/lang/String;
    const-string v3, "Incredible#C"

    .line 546
    .local v3, VALUE_PROJECT:Ljava/lang/String;
    const-string v5, "00000000000"

    .line 547
    .local v5, VALUE_SERVER_ADDRESS_TEST:Ljava/lang/String;
    const-string v4, "00000000"

    .line 548
    .local v4, VALUE_SERVER_ADDRESS:Ljava/lang/String;
    const-string v6, "00000"

    .line 549
    .local v6, VALUE_SERVER_PORT:Ljava/lang/String;
    const-string v0, "verizon"

    .line 550
    .local v0, VALUE_CUSTOMER:Ljava/lang/String;
    const-string v1, "00000;00000"

    .line 551
    .local v1, VALUE_CUSTOMER_NUMERIC:Ljava/lang/String;
    const-string v7, "SMSI"

    .line 552
    .local v7, VALUE_SOLUTION:Ljava/lang/String;
    const-string v2, "HTC"

    .line 554
    .local v2, VALUE_MAN_INFO:Ljava/lang/String;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Init"

    invoke-interface {v10, v11, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 555
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Vendor"

    invoke-interface {v10, v11, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 556
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Project"

    invoke-interface {v10, v11, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 557
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Server_Address"

    invoke-interface {v10, v11, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 559
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Server_Port"

    invoke-interface {v10, v11, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 560
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Customer"

    invoke-interface {v10, v11, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 561
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Numeric"

    invoke-interface {v10, v11, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 563
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Solution"

    invoke-interface {v10, v11, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 564
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Manufacture"

    invoke-interface {v10, v11, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 565
    return-void
.end method

.method private InitLexikon()V
    .locals 12

    .prologue
    .line 568
    iget-object v10, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 570
    .local v9, sp:Landroid/content/SharedPreferences;
    const-string v8, "Verizon"

    .line 571
    .local v8, VALUE_VENDOR:Ljava/lang/String;
    const-string v3, "Lexikon"

    .line 572
    .local v3, VALUE_PROJECT:Ljava/lang/String;
    const-string v5, "00000000000"

    .line 573
    .local v5, VALUE_SERVER_ADDRESS_TEST:Ljava/lang/String;
    const-string v4, "00000000"

    .line 574
    .local v4, VALUE_SERVER_ADDRESS:Ljava/lang/String;
    const-string v6, "00000"

    .line 575
    .local v6, VALUE_SERVER_PORT:Ljava/lang/String;
    const-string v0, "Verizon"

    .line 576
    .local v0, VALUE_CUSTOMER:Ljava/lang/String;
    const-string v1, "00000;00000"

    .line 577
    .local v1, VALUE_CUSTOMER_NUMERIC:Ljava/lang/String;
    const-string v7, "SMSI"

    .line 578
    .local v7, VALUE_SOLUTION:Ljava/lang/String;
    const-string v2, "HTC"

    .line 580
    .local v2, VALUE_MAN_INFO:Ljava/lang/String;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Init"

    invoke-interface {v10, v11, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 581
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Vendor"

    invoke-interface {v10, v11, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 582
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Project"

    invoke-interface {v10, v11, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 583
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Server_Address"

    invoke-interface {v10, v11, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 585
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Server_Port"

    invoke-interface {v10, v11, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 586
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Customer"

    invoke-interface {v10, v11, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 587
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Numeric"

    invoke-interface {v10, v11, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 589
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Solution"

    invoke-interface {v10, v11, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 590
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Manufacture"

    invoke-interface {v10, v11, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 591
    return-void
.end method

.method private InitSupersonic()V
    .locals 12

    .prologue
    .line 594
    iget-object v10, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 596
    .local v9, sp:Landroid/content/SharedPreferences;
    const-string v8, "Sprint"

    .line 597
    .local v8, VALUE_VENDOR:Ljava/lang/String;
    const-string v3, "Supersonic"

    .line 598
    .local v3, VALUE_PROJECT:Ljava/lang/String;
    const-string v5, "00000000000"

    .line 599
    .local v5, VALUE_SERVER_ADDRESS_TEST:Ljava/lang/String;
    const-string v4, "00000000"

    .line 600
    .local v4, VALUE_SERVER_ADDRESS:Ljava/lang/String;
    const-string v6, "00000"

    .line 601
    .local v6, VALUE_SERVER_PORT:Ljava/lang/String;
    const-string v0, "Sprint"

    .line 602
    .local v0, VALUE_CUSTOMER:Ljava/lang/String;
    const-string v1, "00000;00000"

    .line 603
    .local v1, VALUE_CUSTOMER_NUMERIC:Ljava/lang/String;
    const-string v7, "SMSI"

    .line 604
    .local v7, VALUE_SOLUTION:Ljava/lang/String;
    const-string v2, "HTC"

    .line 606
    .local v2, VALUE_MAN_INFO:Ljava/lang/String;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Init"

    invoke-interface {v10, v11, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 607
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Vendor"

    invoke-interface {v10, v11, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 608
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Project"

    invoke-interface {v10, v11, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 609
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Server_Address"

    invoke-interface {v10, v11, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 611
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Server_Port"

    invoke-interface {v10, v11, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 612
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Customer"

    invoke-interface {v10, v11, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 613
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Numeric"

    invoke-interface {v10, v11, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 615
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Solution"

    invoke-interface {v10, v11, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 616
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Manufacture"

    invoke-interface {v10, v11, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 617
    return-void
.end method

.method private InitToDefault()V
    .locals 11

    .prologue
    .line 445
    const/4 v3, 0x0

    .line 446
    .local v3, VALUE_LAWMO_LOCK:I
    const/4 v4, 0x0

    .line 447
    .local v4, VALUE_LAWMO_WIPE:I
    const/4 v2, 0x0

    .line 449
    .local v2, VALUE_LAWMO_FACTORYRESET:I
    const-string v7, "Setting"

    const-string v8, "InitToDefault."

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v5, 0x0

    .line 453
    .local v5, m_bSupport:Z
    iget-object v7, p0, Lcom/htc/omadm/util/Setting;->mPhoneInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;

    invoke-static {}, Lcom/htc/omadm/libdo/system/PhoneInfo;->Product_ID()Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, ProductID:Ljava/lang/String;
    const-string v7, "inc"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 457
    invoke-direct {p0}, Lcom/htc/omadm/util/Setting;->InitIncredible()V

    .line 458
    const/4 v5, 0x1

    .line 462
    :cond_0
    const-string v7, "supersonic"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 463
    invoke-direct {p0}, Lcom/htc/omadm/util/Setting;->InitSupersonic()V

    .line 464
    const/4 v5, 0x1

    .line 468
    :cond_1
    const-string v7, "lexikon"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 469
    invoke-direct {p0}, Lcom/htc/omadm/util/Setting;->InitLexikon()V

    .line 470
    const/4 v5, 0x1

    .line 474
    :cond_2
    if-nez v5, :cond_3

    .line 475
    invoke-direct {p0}, Lcom/htc/omadm/util/Setting;->InitUnsupport()V

    .line 478
    :cond_3
    iget-object v7, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 480
    .local v6, sp:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "LawmoLock"

    invoke-interface {v7, v8, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 481
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "LawmoWipe"

    invoke-interface {v7, v8, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 482
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "FactoryReset"

    invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 485
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "Version_Software"

    iget-object v9, p0, Lcom/htc/omadm/util/Setting;->mPhoneInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;

    invoke-virtual {v9}, Lcom/htc/omadm/libdo/system/PhoneInfo;->Software_Version()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 488
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "Version_Hardware"

    iget-object v9, p0, Lcom/htc/omadm/util/Setting;->mPhoneInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;

    invoke-virtual {v9}, Lcom/htc/omadm/libdo/system/PhoneInfo;->Hardware_Version()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 495
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "Version_Frimware"

    iget-object v9, p0, Lcom/htc/omadm/util/Setting;->mPhoneInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;

    invoke-virtual {v9}, Lcom/htc/omadm/libdo/system/PhoneInfo;->BuildNumber()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 498
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "ID_Model"

    iget-object v9, p0, Lcom/htc/omadm/util/Setting;->mPhoneInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;

    invoke-virtual {v9}, Lcom/htc/omadm/libdo/system/PhoneInfo;->Model_ID()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 500
    iget-object v7, p0, Lcom/htc/omadm/util/Setting;->mPhoneInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;

    invoke-virtual {v7}, Lcom/htc/omadm/libdo/system/PhoneInfo;->Device_ID()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, Device_ID:Ljava/lang/String;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "ID_Device"

    invoke-interface {v7, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 502
    const-string v7, "NONE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 503
    iget-object v7, p0, Lcom/htc/omadm/util/Setting;->mPhoneInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;

    invoke-virtual {v7}, Lcom/htc/omadm/libdo/system/PhoneInfo;->PhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 506
    const-string v7, "Setting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DeviceID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", not retrieve DeviceID on CDMA phone"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :goto_0
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "Change_List"

    iget-object v9, p0, Lcom/htc/omadm/util/Setting;->mPhoneInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;

    invoke-virtual {v9}, Lcom/htc/omadm/libdo/system/PhoneInfo;->ChangeList()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 518
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "pin_code_unlock"

    const-string v9, "NONE"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 520
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "user_unlock_tme"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 523
    return-void

    .line 509
    :cond_4
    iget-object v7, p0, Lcom/htc/omadm/util/Setting;->EventHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/omadm/util/Setting;->mTasks:Ljava/lang/Runnable;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 510
    const-string v7, "Setting"

    const-string v8, "Device ID not ready, delay to retrieve it"

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 513
    :cond_5
    const-string v7, "Setting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Device ID is ready, DeviceID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private InitUnsupport()V
    .locals 12

    .prologue
    .line 620
    iget-object v10, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 622
    .local v9, sp:Landroid/content/SharedPreferences;
    const-string v8, "TBD"

    .line 623
    .local v8, VALUE_VENDOR:Ljava/lang/String;
    const-string v3, "NONE"

    .line 624
    .local v3, VALUE_PROJECT:Ljava/lang/String;
    const-string v5, "00000000000"

    .line 625
    .local v5, VALUE_SERVER_ADDRESS_TEST:Ljava/lang/String;
    const-string v4, "00000000"

    .line 626
    .local v4, VALUE_SERVER_ADDRESS:Ljava/lang/String;
    const-string v6, "00000"

    .line 627
    .local v6, VALUE_SERVER_PORT:Ljava/lang/String;
    const-string v0, "NONE"

    .line 628
    .local v0, VALUE_CUSTOMER:Ljava/lang/String;
    const-string v1, "00000;00000"

    .line 629
    .local v1, VALUE_CUSTOMER_NUMERIC:Ljava/lang/String;
    const-string v7, "NONE"

    .line 630
    .local v7, VALUE_SOLUTION:Ljava/lang/String;
    const-string v2, "HTC"

    .line 632
    .local v2, VALUE_MAN_INFO:Ljava/lang/String;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Init"

    invoke-interface {v10, v11, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 633
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Vendor"

    invoke-interface {v10, v11, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 634
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Project"

    invoke-interface {v10, v11, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 635
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Server_Address"

    invoke-interface {v10, v11, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 637
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Server_Port"

    invoke-interface {v10, v11, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 638
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Customer"

    invoke-interface {v10, v11, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 639
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Numeric"

    invoke-interface {v10, v11, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 641
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Solution"

    invoke-interface {v10, v11, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 642
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Manufacture"

    invoke-interface {v10, v11, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 643
    return-void
.end method

.method static synthetic access$000(Lcom/htc/omadm/util/Setting;)Lcom/htc/omadm/libdo/system/PhoneInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/omadm/util/Setting;->mPhoneInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/htc/omadm/util/Setting;->DeviceIDRetrieveCnt:I

    return v0
.end method

.method static synthetic access$108()I
    .locals 2

    .prologue
    .line 17
    sget v0, Lcom/htc/omadm/util/Setting;->DeviceIDRetrieveCnt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/htc/omadm/util/Setting;->DeviceIDRetrieveCnt:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/omadm/util/Setting;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/omadm/util/Setting;->mTasks:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/omadm/util/Setting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/omadm/util/Setting;->EventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/omadm/util/Setting;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getSingleton()Lcom/htc/omadm/util/Setting;
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/htc/omadm/util/Setting;->mInstance:Lcom/htc/omadm/util/Setting;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/htc/omadm/util/Setting;

    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/omadm/util/Setting;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/util/Setting;->mInstance:Lcom/htc/omadm/util/Setting;

    .line 89
    :cond_0
    sget-object v0, Lcom/htc/omadm/util/Setting;->mInstance:Lcom/htc/omadm/util/Setting;

    return-object v0
.end method


# virtual methods
.method public Change_List()Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 195
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "Change_List"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Customer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 137
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "Customer"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Customer_Numeric()Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 143
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "Numeric"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Device_ID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 185
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "ID_Device"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Firmware_Version()Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 167
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "Version_Frimware"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public GetMDNChange()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 239
    iget-object v6, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 241
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v6, "Phone_Number"

    const-string v7, "NONE"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, PhoneNO:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/omadm/util/Setting;->mPhoneInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;

    invoke-virtual {v6}, Lcom/htc/omadm/libdo/system/PhoneInfo;->PhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, PhoneNow:Ljava/lang/String;
    const-string v6, "Setting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Previous phone number:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v6, "Setting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current phone number:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v6, "NONE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 247
    const/4 v4, -0x1

    .line 264
    :cond_0
    :goto_0
    return v4

    .line 249
    :cond_1
    const-string v6, "NONE"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 250
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "Phone_Number"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    :goto_1
    const-string v6, "Phone_Number_Change"

    const/16 v7, 0x3e8

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 261
    .local v0, PhoneChange:I
    if-eq v0, v4, :cond_0

    move v4, v5

    .line 264
    goto :goto_0

    .line 252
    .end local v0           #PhoneChange:I
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 253
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "Phone_Number_Change"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 255
    :cond_3
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "Phone_Number_Change"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 256
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "Phone_Number"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method public Get_DcmoBtDUE()Ljava/lang/String;
    .locals 3

    .prologue
    .line 359
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 361
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "DCMO_BT_DUE"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Get_DcmoCameraDUE()Ljava/lang/String;
    .locals 3

    .prologue
    .line 371
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 373
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "DCMO_Camera_DUE"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Get_DcmoCameraEnable()Ljava/lang/String;
    .locals 3

    .prologue
    .line 407
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 409
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "DCMO_Camera_Enable"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Get_DcmoGPSDUE()Ljava/lang/String;
    .locals 3

    .prologue
    .line 395
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 397
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "DCMO_GPS_DUE"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Get_DcmoWLanDUE()Ljava/lang/String;
    .locals 3

    .prologue
    .line 383
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 385
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "DCMO_WLan_DUE"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Get_FumoDesc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 329
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 331
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "FumoDesc"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Get_FumoDescTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 341
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 343
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "FumoDescTime"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Get_FumoState()I
    .locals 3

    .prologue
    .line 317
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 319
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "FumoState"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public Get_FumoUIState()I
    .locals 3

    .prologue
    .line 305
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 307
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "FumoUIState"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public Get_LawmoLock()I
    .locals 3

    .prologue
    .line 281
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 283
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "LawmoLock"

    const/16 v2, 0x3e8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public Get_LawmoPin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 293
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 295
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "LawmoPin"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Get_LawmoReset()I
    .locals 3

    .prologue
    .line 269
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 271
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "FactoryReset"

    const/16 v2, 0x3e8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public Get_SessionQueue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 199
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 201
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "SessionQueue"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Get_SessionState()I
    .locals 3

    .prologue
    .line 211
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 213
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "SessionState"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public Get_SessionType()I
    .locals 3

    .prologue
    .line 223
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 225
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "SessionType"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public Hardware_Version()Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 161
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "Version_Hardware"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public IMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/omadm/util/Setting;->mPhoneInfo:Lcom/htc/omadm/libdo/system/PhoneInfo;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/system/PhoneInfo;->IMSI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Manufacture()Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 173
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "Manufacture"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Model_ID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 179
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "ID_Model"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Project()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "Project"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public ServerAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 125
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "Server_Address"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public ServerPort()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "Server_Port"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Set_DcmoBtDUE(Ljava/lang/String;)V
    .locals 3
    .parameter "Value"

    .prologue
    .line 353
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 355
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "DCMO_BT_DUE"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 356
    return-void
.end method

.method public Set_DcmoCameraDUE(Ljava/lang/String;)V
    .locals 3
    .parameter "Value"

    .prologue
    .line 365
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 367
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "DCMO_Camera_DUE"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 368
    return-void
.end method

.method public Set_DcmoCameraEnable(Ljava/lang/String;)V
    .locals 3
    .parameter "Value"

    .prologue
    .line 401
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 403
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "DCMO_Camera_Enable"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 404
    return-void
.end method

.method public Set_DcmoGPSDUE(Ljava/lang/String;)V
    .locals 3
    .parameter "Value"

    .prologue
    .line 389
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 391
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "DCMO_GPS_DUE"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 392
    return-void
.end method

.method public Set_DcmoWLanDUE(Ljava/lang/String;)V
    .locals 3
    .parameter "Value"

    .prologue
    .line 377
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 379
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "DCMO_WLan_DUE"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 380
    return-void
.end method

.method public Set_FumoDesc(Ljava/lang/String;)V
    .locals 3
    .parameter "Value"

    .prologue
    .line 335
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 337
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "FumoDesc"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    return-void
.end method

.method public Set_FumoDescTime(Ljava/lang/String;)V
    .locals 3
    .parameter "Value"

    .prologue
    .line 347
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 349
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "FumoDescTime"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 350
    return-void
.end method

.method public Set_FumoState(I)V
    .locals 3
    .parameter "Value"

    .prologue
    .line 323
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 325
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "FumoState"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 326
    return-void
.end method

.method public Set_FumoUIState(I)V
    .locals 3
    .parameter "Value"

    .prologue
    .line 311
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 313
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "FumoUIState"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 314
    return-void
.end method

.method public Set_LawmoLock(I)V
    .locals 3
    .parameter "Value"

    .prologue
    .line 287
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 289
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LawmoLock"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 290
    return-void
.end method

.method public Set_LawmoPin(Ljava/lang/String;)V
    .locals 3
    .parameter "Value"

    .prologue
    .line 299
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 301
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LawmoPin"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 302
    return-void
.end method

.method public Set_LawmoReset(I)V
    .locals 3
    .parameter "Value"

    .prologue
    .line 275
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 277
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "FactoryReset"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 278
    return-void
.end method

.method public Set_SessionQueue(Ljava/lang/String;)V
    .locals 3
    .parameter "Value"

    .prologue
    .line 205
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 207
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "SessionQueue"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    return-void
.end method

.method public Set_SessionState(I)V
    .locals 3
    .parameter "Value"

    .prologue
    .line 217
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 219
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "SessionState"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    return-void
.end method

.method public Set_SessionType(I)V
    .locals 3
    .parameter "Value"

    .prologue
    .line 229
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 231
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "SessionType"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    return-void
.end method

.method public Software_Version()Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "Version_Software"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Solution()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 149
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "Solution"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Vendor()Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "Vendor"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPeningPackageState()I
    .locals 5

    .prologue
    .line 433
    sget-boolean v1, Lcom/htc/omadm/prop/PropertyFeature;->IS_KINDOM_DEVICE:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/htc/omadm/prop/PropertyFeature;->IS_SPRINT_PROJECT:Z

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 437
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "Setting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get_PeningPackageState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "REPORT_SPECIAL"

    sget v4, Lcom/htc/omadm/prop/PropertyState;->PackageNone:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v1, "REPORT_SPECIAL"

    sget v2, Lcom/htc/omadm/prop/PropertyState;->PackageNone:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 440
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    sget v1, Lcom/htc/omadm/prop/PropertyState;->PackageNone:I

    goto :goto_0
.end method

.method public isPendingPackage()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 423
    sget-boolean v2, Lcom/htc/omadm/prop/PropertyFeature;->IS_KINDOM_DEVICE:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/htc/omadm/prop/PropertyFeature;->IS_SPRINT_PROJECT:Z

    if-eqz v2, :cond_0

    .line 424
    iget-object v2, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 427
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "REPORT_SPECIAL"

    sget v3, Lcom/htc/omadm/prop/PropertyState;->PackageNone:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget v3, Lcom/htc/omadm/prop/PropertyState;->PackagePending:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 429
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return v1
.end method

.method public setPeningPackageState(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 414
    sget-boolean v1, Lcom/htc/omadm/prop/PropertyFeature;->IS_KINDOM_DEVICE:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/htc/omadm/prop/PropertyFeature;->IS_SPRINT_PROJECT:Z

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/htc/omadm/util/Setting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 417
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "REPORT_SPECIAL"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 418
    const-string v1, "Setting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set_IsPeningPackage ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

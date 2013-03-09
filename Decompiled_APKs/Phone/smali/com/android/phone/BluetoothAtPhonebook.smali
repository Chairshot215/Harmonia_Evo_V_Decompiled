.class public Lcom/android/phone/BluetoothAtPhonebook;
.super Ljava/lang/Object;
.source "BluetoothAtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothAtPhonebook$QueryHandler;,
        Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    }
.end annotation


# static fields
.field private static final ACCESS_AUTHORITY_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_AUTHORITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final CALLS_PROJECTION:[Ljava/lang/String; = null

.field private static final DBG:Z = false

.field private static final INCOMING_CALL_WHERE:Ljava/lang/String; = "type=1"

.field private static final MAX_PHONEBOOK_SIZE:I = 0x4000

.field private static final MISSED_CALL_WHERE:Ljava/lang/String; = "type=3"

.field private static final OUTGOING_CALL_WHERE:Ljava/lang/String; = "type=2"

.field private static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field private static final SIM_CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field public static final SPEEDDIAL_CONTENT_URI:Landroid/net/Uri; = null

.field private static final SPEEDDIAL_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BluetoothAtPhonebook"

.field private static final VISIBLE_PHONEBOOK_WHERE:Ljava/lang/String; = "in_visible_group=1"


# instance fields
.field private final DELAY_QUERY_PB:I

.field private mCharacterSet:Ljava/lang/String;

.field private mCheckingAccessPermission:Z

.field private final mContext:Landroid/content/Context;

.field private mCpbrIndex1:I

.field private mCpbrIndex2:I

.field private mCurrentPhonebook:Ljava/lang/String;

.field private final mHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mPbQueryMsgHandler:Landroid/os/Handler;

.field public mPhoneDiscTime:J

.field public mPhoneState:Ljava/lang/String;

.field private final mPhonebooks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHandler:Lcom/android/phone/BluetoothAtPhonebook$QueryHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimPhonebookResult:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/BluetoothAtPhonebook;->CALLS_PROJECTION:[Ljava/lang/String;

    .line 73
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "data2"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/BluetoothAtPhonebook;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 77
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/BluetoothAtPhonebook;->SIM_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 82
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "location"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "recordNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/BluetoothAtPhonebook;->SPEEDDIAL_PROJECTION:[Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/BluetoothAtPhonebook;->SPEEDDIAL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V
    .locals 5
    .parameter "context"
    .parameter "handsfree"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mQueryHandler:Lcom/android/phone/BluetoothAtPhonebook$QueryHandler;

    .line 60
    new-instance v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mSimPhonebookResult:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    .line 119
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    .line 153
    iput-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhoneState:Ljava/lang/String;

    .line 154
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhoneDiscTime:J

    .line 155
    new-instance v0, Lcom/android/phone/BluetoothAtPhonebook$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothAtPhonebook$1;-><init>(Lcom/android/phone/BluetoothAtPhonebook;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 168
    iput v4, p0, Lcom/android/phone/BluetoothAtPhonebook;->DELAY_QUERY_PB:I

    .line 169
    new-instance v0, Lcom/android/phone/BluetoothAtPhonebook$2;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothAtPhonebook$2;-><init>(Lcom/android/phone/BluetoothAtPhonebook;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPbQueryMsgHandler:Landroid/os/Handler;

    .line 134
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 136
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "DC"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "RC"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "MC"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "ME"

    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "ME"

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    iput v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    .line 144
    iput-boolean v4, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mIntentFilter:Landroid/content/IntentFilter;

    .line 148
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/phone/BluetoothAtPhonebook;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/BluetoothAtPhonebook;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/BluetoothAtPhonebook;->checkAccessPermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/BluetoothAtPhonebook;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/BluetoothAtPhonebook;->processCpbrCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothAtPhonebook;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothAtPhonebook;->getMaxPhoneBookSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mSimPhonebookResult:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothAtPhonebook;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPbQueryMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/BluetoothAtPhonebook;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/BluetoothAtPhonebook;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/phone/BluetoothAtPhonebook;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    return p1
.end method

.method private checkAccessPermission()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 708
    iget-object v5, p0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v5}, Lcom/android/phone/BluetoothHandsfree;->getHeadset()Landroid/bluetooth/HeadsetBase;

    move-result-object v0

    .line 709
    .local v0, headset:Landroid/bluetooth/HeadsetBase;
    if-nez v0, :cond_0

    .line 710
    const-string v5, "BluetoothAtPhonebook"

    const-string v6, "checkAccessPermission headset is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :goto_0
    return v4

    .line 713
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 715
    .local v2, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getTrustState()Z

    move-result v3

    .line 717
    .local v3, trust:Z
    if-eqz v3, :cond_1

    .line 718
    const/4 v4, 0x1

    goto :goto_0

    .line 721
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 722
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    const-string v5, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 725
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 728
    iget-object v5, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createContactInfo(Landroid/database/Cursor;)Landroid/provider/HtcUnionContact$SimpleContactInfo;
    .locals 8
    .parameter "cursor"

    .prologue
    const-wide/16 v6, 0x0

    .line 283
    const/4 v4, 0x0

    .line 285
    .local v4, result:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    const/16 v5, 0x8

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 286
    .local v0, personId:J
    const/4 v5, 0x6

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 287
    .local v2, recordNumber:J
    cmp-long v5, v0, v6

    if-gtz v5, :cond_0

    cmp-long v5, v2, v6

    if-lez v5, :cond_1

    .line 288
    :cond_0
    new-instance v4, Landroid/provider/HtcUnionContact$SimpleContactInfo;

    .end local v4           #result:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    invoke-direct {v4}, Landroid/provider/HtcUnionContact$SimpleContactInfo;-><init>()V

    .line 289
    .restart local v4       #result:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    .line 290
    iput-wide v0, v4, Landroid/provider/HtcUnionContact$SimpleContactInfo;->personId:J

    .line 294
    :goto_0
    const/4 v5, 0x2

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/provider/HtcUnionContact$SimpleContactInfo;->name:Ljava/lang/String;

    .line 295
    const/4 v5, 0x3

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    .line 296
    const/4 v5, 0x4

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Landroid/provider/HtcUnionContact$SimpleContactInfo;->numberType:I

    .line 298
    :cond_1
    return-object v4

    .line 292
    :cond_2
    iput-wide v2, v4, Landroid/provider/HtcUnionContact$SimpleContactInfo;->recordNumber:J

    goto :goto_0
.end method

.method private declared-synchronized getMaxPhoneBookSize(I)I
    .locals 2
    .parameter "currSize"

    .prologue
    const/16 v0, 0x64

    .line 579
    monitor-enter p0

    if-ge p1, v0, :cond_0

    .line 580
    .local v0, maxSize:I
    :goto_0
    :try_start_0
    div-int/lit8 v1, v0, 0x2

    add-int/2addr v0, v1

    .line 581
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothAtPhonebook;->roundUpToPowerOfTwo(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .end local v0           #maxSize:I
    :cond_0
    move v0, p1

    .line 579
    goto :goto_0

    .restart local v0       #maxSize:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static getPhoneType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 734
    packed-switch p0, :pswitch_data_0

    .line 747
    const-string v0, "O"

    :goto_0
    return-object v0

    .line 736
    :pswitch_0
    const-string v0, "H"

    goto :goto_0

    .line 738
    :pswitch_1
    const-string v0, "M"

    goto :goto_0

    .line 740
    :pswitch_2
    const-string v0, "W"

    goto :goto_0

    .line 743
    :pswitch_3
    const-string v0, "F"

    goto :goto_0

    .line 734
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    .locals 3
    .parameter "pb"
    .parameter "force"

    .prologue
    const/4 v1, 0x0

    .line 497
    monitor-enter p0

    if-nez p1, :cond_1

    move-object v0, v1

    .line 518
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 499
    :cond_1
    :try_start_0
    const-string v2, "SM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 500
    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook;->mSimPhonebookResult:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    iget-object v2, v2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    .line 501
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mSimPhonebookResult:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 502
    goto :goto_0

    .line 504
    :cond_3
    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    .line 505
    .local v0, pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    if-nez v0, :cond_4

    .line 506
    new-instance v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    .end local v0           #pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Lcom/android/phone/BluetoothAtPhonebook$1;)V

    .line 508
    .restart local v0       #pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    :cond_4
    if-nez p2, :cond_5

    iget-object v2, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-nez v2, :cond_6

    .line 509
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/android/phone/BluetoothAtPhonebook;->queryPhonebook(Ljava/lang/String;Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object v0, v1

    .line 510
    goto :goto_0

    .line 514
    :cond_6
    iget-object v2, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    move-object v0, v1

    .line 515
    goto :goto_0

    .line 497
    .end local v0           #pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 752
    const-string v0, "BluetoothAtPhonebook"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return-void
.end method

.method private processCpbrCommand()Landroid/bluetooth/AtCommandResult;
    .locals 17

    .prologue
    .line 604
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BluetoothAtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v13

    .line 605
    .local v13, pbr:Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;
    if-nez v13, :cond_1

    .line 606
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v15

    .line 701
    :cond_0
    :goto_0
    return-object v15

    .line 614
    :cond_1
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    if-lt v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    iget-object v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 616
    :cond_2
    const-string v1, "BluetoothAtPhonebook"

    const-string v2, "Ouf of Bound but return ok"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v15, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    .line 622
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    if-lez v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    if-gt v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    iget-object v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-le v1, v2, :cond_5

    .line 623
    :cond_4
    const-string v1, "BluetoothAtPhonebook"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sanity checks: index1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    iget-object v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-le v1, v2, :cond_f

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    if-lez v1, :cond_f

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    if-gt v1, v2, :cond_f

    .line 625
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    .line 632
    :cond_5
    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v15, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 633
    .local v15, result:Landroid/bluetooth/AtCommandResult;
    const/4 v8, -0x1

    .line 634
    .local v8, errorDetected:I
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 635
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    .local v9, index:I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    if-gt v9, v1, :cond_0

    .line 636
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->numberColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 637
    .local v12, number:Ljava/lang/String;
    const/4 v10, 0x0

    .line 638
    .local v10, name:Ljava/lang/String;
    const/16 v16, -0x1

    .line 639
    .local v16, type:I
    iget v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    .line 643
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v2, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 647
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_7

    .line 648
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 649
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 650
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 652
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 659
    .end local v7           #c:Landroid/database/Cursor;
    :cond_7
    :goto_2
    if-nez v10, :cond_8

    const-string v10, ""

    .line 660
    :cond_8
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 661
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1c

    if-le v1, v2, :cond_9

    const/4 v1, 0x0

    const/16 v2, 0x1c

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 663
    :cond_9
    iget v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    .line 664
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Lcom/android/phone/BluetoothAtPhonebook;->getPhoneType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 668
    :cond_a
    if-nez v12, :cond_b

    const-string v12, ""

    .line 669
    :cond_b
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v14

    .line 671
    .local v14, regionType:I
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 672
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 673
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_c

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 674
    :cond_c
    const-string v1, "-1"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 676
    const-string v12, ""

    .line 677
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    const v2, 0x7f0e022b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 682
    :cond_d
    const-string v1, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    const-string v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 683
    invoke-static {v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v11

    .line 684
    .local v11, nameByte:[B
    if-nez v11, :cond_11

    .line 685
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    const v2, 0x7f0e022b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 692
    .end local v11           #nameByte:[B
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+CPBR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->PbsendURC(Ljava/lang/String;)V

    .line 697
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 627
    .end local v8           #errorDetected:I
    .end local v9           #index:I
    .end local v10           #name:Ljava/lang/String;
    .end local v12           #number:Ljava/lang/String;
    .end local v14           #regionType:I
    .end local v15           #result:Landroid/bluetooth/AtCommandResult;
    .end local v16           #type:I
    :cond_f
    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    invoke-direct {v15, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    .line 657
    .restart local v8       #errorDetected:I
    .restart local v9       #index:I
    .restart local v10       #name:Ljava/lang/String;
    .restart local v12       #number:Ljava/lang/String;
    .restart local v15       #result:Landroid/bluetooth/AtCommandResult;
    .restart local v16       #type:I
    :cond_10
    iget-object v1, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    iget v2, v13, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 687
    .restart local v11       #nameByte:[B
    .restart local v14       #regionType:I
    :cond_11
    new-instance v10, Ljava/lang/String;

    .end local v10           #name:Ljava/lang/String;
    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    .restart local v10       #name:Ljava/lang/String;
    goto :goto_3
.end method

.method private declared-synchronized queryPhonebook(Ljava/lang/String;Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;)Z
    .locals 8
    .parameter "pb"
    .parameter "pbr"

    .prologue
    const/4 v7, 0x0

    .line 523
    monitor-enter p0

    const/4 v6, 0x1

    .line 525
    .local v6, ancillaryPhonebook:Z
    :try_start_0
    const-string v0, "ME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    const/4 v6, 0x0

    .line 527
    const-string v3, "in_visible_group=1"

    .line 538
    .local v3, where:Ljava/lang/String;
    :goto_0
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 540
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 543
    :cond_0
    if-eqz v6, :cond_6

    .line 544
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/BluetoothAtPhonebook;->CALLS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 16384"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 547
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    move v0, v7

    .line 562
    .end local v3           #where:Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return v0

    .line 528
    :cond_1
    :try_start_1
    const-string v0, "DC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 529
    const-string v3, "type=2"

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_0

    .line 530
    .end local v3           #where:Ljava/lang/String;
    :cond_2
    const-string v0, "RC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 531
    const-string v3, "type=1"

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_0

    .line 532
    .end local v3           #where:Ljava/lang/String;
    :cond_3
    const-string v0, "MC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 533
    const-string v3, "type=3"

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_0

    .end local v3           #where:Ljava/lang/String;
    :cond_4
    move v0, v7

    .line 535
    goto :goto_1

    .line 549
    .restart local v3       #where:Ljava/lang/String;
    :cond_5
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->numberColumn:I

    .line 550
    const/4 v0, -0x1

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    .line 551
    const/4 v0, -0x1

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I

    .line 561
    :goto_2
    const-string v0, "BluetoothAtPhonebook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refreshed phonebook "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " results"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v0, 0x1

    goto :goto_1

    .line 553
    :cond_6
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/BluetoothAtPhonebook;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data1 LIMIT 16384"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 555
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_7

    move v0, v7

    goto :goto_1

    .line 557
    :cond_7
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "data1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->numberColumn:I

    .line 558
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "data2"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->typeColumn:I

    .line 559
    iget-object v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->nameColumn:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 523
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private roundUpToPowerOfTwo(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 585
    shr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    .line 586
    shr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    .line 587
    shr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    .line 588
    shr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    .line 589
    shr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    .line 590
    add-int/lit8 v0, p1, 0x1

    return v0
.end method


# virtual methods
.method public PhoneDisconnectTime()J
    .locals 2

    .prologue
    .line 188
    const-string v0, "OFFHOOK"

    iget-object v1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 191
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mPhoneDiscTime:J

    goto :goto_0
.end method

.method public getLastDialledNumber()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x9b

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 226
    new-array v2, v9, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "number"

    aput-object v1, v2, v0

    .line 227
    .local v2, projection:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 228
    .local v3, selection:Ljava/lang/String;
    const-string v0, "1"

    const-string v1, "htc.bluetooth.pts_test"

    const-string v5, "0"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v10, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v10, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x63

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_1

    .line 237
    :cond_0
    const-string v3, "type=2"

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 243
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 253
    :goto_0
    return-object v4

    .line 245
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v9, :cond_3

    .line 246
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 249
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 250
    const-string v0, "number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 251
    .local v6, column:I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 252
    .local v8, number:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v4, v8

    .line 253
    goto :goto_0
.end method

.method public getSpeedDialNumber(I)Ljava/lang/String;
    .locals 9
    .parameter "location"

    .prologue
    const/4 v3, 0x0

    .line 258
    sget-object v0, Lcom/android/phone/BluetoothAtPhonebook;->SPEEDDIAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 259
    .local v1, numberLoactionUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/phone/BluetoothAtPhonebook;->SPEEDDIAL_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 262
    .local v8, numberCursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 263
    .local v7, number:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {v8}, Lcom/android/phone/BluetoothAtPhonebook;->createContactInfo(Landroid/database/Cursor;)Landroid/provider/HtcUnionContact$SimpleContactInfo;

    move-result-object v6

    .line 265
    .local v6, info:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    if-eqz v6, :cond_0

    .line 267
    iget-object v7, v6, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    .line 270
    .end local v6           #info:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    :cond_0
    if-eqz v8, :cond_1

    .line 271
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_1
    return-object v7
.end method

.method handleAccessPermissionResult(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 458
    iget-boolean v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z

    if-nez v3, :cond_0

    .line 489
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->getHeadset()Landroid/bluetooth/HeadsetBase;

    move-result-object v1

    .line 463
    .local v1, headset:Landroid/bluetooth/HeadsetBase;
    if-nez v1, :cond_1

    .line 464
    const-string v3, "BluetoothAtPhonebook"

    const-string v4, "headset is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 473
    const-string v3, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 476
    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 477
    .local v2, remoteDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v3, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 478
    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    .line 481
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/BluetoothAtPhonebook;->processCpbrCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    .line 482
    .local v0, cpbrResult:Landroid/bluetooth/AtCommandResult;
    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 487
    .end local v0           #cpbrResult:Landroid/bluetooth/AtCommandResult;
    .end local v2           #remoteDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_3
    :goto_1
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    iput v3, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    .line 488
    iput-boolean v5, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z

    goto :goto_0

    .line 484
    :cond_4
    const-string v3, "ERROR"

    invoke-virtual {v1, v3}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public register(Landroid/bluetooth/AtParser;)V
    .locals 2
    .parameter "parser"

    .prologue
    .line 303
    const-string v0, "+CSCS"

    new-instance v1, Lcom/android/phone/BluetoothAtPhonebook$3;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtPhonebook$3;-><init>(Lcom/android/phone/BluetoothAtPhonebook;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 331
    const-string v0, "+CPBS"

    new-instance v1, Lcom/android/phone/BluetoothAtPhonebook$4;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtPhonebook$4;-><init>(Lcom/android/phone/BluetoothAtPhonebook;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 385
    const-string v0, "+CPBR"

    new-instance v1, Lcom/android/phone/BluetoothAtPhonebook$5;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtPhonebook$5;-><init>(Lcom/android/phone/BluetoothAtPhonebook;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 455
    return-void
.end method

.method declared-synchronized resetAtState()V
    .locals 1

    .prologue
    .line 566
    monitor-enter p0

    :try_start_0
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCharacterSet:Ljava/lang/String;

    .line 567
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex2:I

    iput v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCpbrIndex1:I

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mCheckingAccessPermission:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    monitor-exit p0

    return-void

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startQuerySim()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mQueryHandler:Lcom/android/phone/BluetoothAtPhonebook$QueryHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/BluetoothAtPhonebook$QueryHandler;

    iget-object v1, p0, Lcom/android/phone/BluetoothAtPhonebook;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/BluetoothAtPhonebook$QueryHandler;-><init>(Lcom/android/phone/BluetoothAtPhonebook;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mQueryHandler:Lcom/android/phone/BluetoothAtPhonebook$QueryHandler;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothAtPhonebook;->mQueryHandler:Lcom/android/phone/BluetoothAtPhonebook$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Lcom/android/internal/telephony/IccContract$IccPhonebook;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/BluetoothAtPhonebook;->SIM_CONTACTS_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/BluetoothAtPhonebook$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.class public Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;
.super Ljava/lang/Object;
.source "HtcWrapBluetoothUuid.java"


# static fields
.field public static final AdvAudioDist:Landroid/os/ParcelUuid;

.field public static final AudioSink:Landroid/os/ParcelUuid;

.field public static final AudioSource:Landroid/os/ParcelUuid;

.field public static final AvrcpController:Landroid/os/ParcelUuid;

.field public static final AvrcpTarget:Landroid/os/ParcelUuid;

.field public static final BNEP:Landroid/os/ParcelUuid;

.field public static final BasicPrinting:Landroid/os/ParcelUuid;

.field public static final DialUp:Landroid/os/ParcelUuid;

.field public static final FileTransfer:Landroid/os/ParcelUuid;

.field public static final HSP:Landroid/os/ParcelUuid;

.field public static final HSP_AG:Landroid/os/ParcelUuid;

.field public static final Handsfree:Landroid/os/ParcelUuid;

.field public static final Handsfree_AG:Landroid/os/ParcelUuid;

.field public static final Hid:Landroid/os/ParcelUuid;

.field public static final NAP:Landroid/os/ParcelUuid;

.field public static final ObexObjectPush:Landroid/os/ParcelUuid;

.field public static final PANU:Landroid/os/ParcelUuid;

.field public static final PBAP_PSE:Landroid/os/ParcelUuid;

.field public static final PhoneBookAccess:Landroid/os/ParcelUuid;

.field public static final SerialPort:Landroid/os/ParcelUuid;

.field public static final SimAccess:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    .line 10
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    .line 12
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    .line 14
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    .line 16
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    .line 18
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    .line 20
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    .line 22
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    .line 24
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    .line 26
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    .line 28
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    .line 30
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    .line 32
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    .line 34
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    .line 36
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    .line 38
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->FileTransfer:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->FileTransfer:Landroid/os/ParcelUuid;

    .line 40
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PhoneBookAccess:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->PhoneBookAccess:Landroid/os/ParcelUuid;

    .line 42
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->BasicPrinting:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->BasicPrinting:Landroid/os/ParcelUuid;

    .line 45
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->SerialPort:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->SerialPort:Landroid/os/ParcelUuid;

    .line 47
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->DialUp:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->DialUp:Landroid/os/ParcelUuid;

    .line 49
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->SimAccess:Landroid/os/ParcelUuid;

    sput-object v0, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothUuid;->SimAccess:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

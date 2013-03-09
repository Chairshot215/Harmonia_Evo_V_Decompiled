.class public Lcom/htc/wrap/android/nfc/HtcWrapNfcAdapter;
.super Ljava/lang/Object;
.source "HtcWrapNfcAdapter.java"


# static fields
.field public static final ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGED"

.field public static final EXTRA_ADAPTER_STATE:Ljava/lang/String; = "android.nfc.extra.ADAPTER_STATE"

.field public static final STATE_OFF:I = 0x1

.field public static final STATE_ON:I = 0x3

.field public static final STATE_TURNING_OFF:I = 0x4

.field public static final STATE_TURNING_ON:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disable(Landroid/nfc/NfcAdapter;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method public static disableNdefPush(Landroid/nfc/NfcAdapter;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    return v0
.end method

.method public static enable(Landroid/nfc/NfcAdapter;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method public static enableNdefPush(Landroid/nfc/NfcAdapter;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    return v0
.end method

.method public static isNdefPushEnabled(Landroid/nfc/NfcAdapter;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    return v0
.end method

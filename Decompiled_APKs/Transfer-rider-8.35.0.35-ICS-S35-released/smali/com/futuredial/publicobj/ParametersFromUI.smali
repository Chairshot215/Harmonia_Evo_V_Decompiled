.class public Lcom/futuredial/publicobj/ParametersFromUI;
.super Ljava/lang/Object;
.source "ParametersFromUI.java"


# instance fields
.field public btDevice:Landroid/bluetooth/BluetoothDevice;

.field public context:Landroid/content/Context;

.field public sParserPolicy:[Ljava/lang/String;

.field public strAccountName:Ljava/lang/String;

.field public strAccountType:Ljava/lang/String;

.field public strSPhoneInfo:Ljava/lang/String;

.field public uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/futuredial/publicobj/ParametersFromUI;->uiHandler:Landroid/os/Handler;

    .line 11
    iput-object v0, p0, Lcom/futuredial/publicobj/ParametersFromUI;->context:Landroid/content/Context;

    .line 13
    iput-object v0, p0, Lcom/futuredial/publicobj/ParametersFromUI;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 20
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/futuredial/publicobj/ParametersFromUI;->sParserPolicy:[Ljava/lang/String;

    .line 22
    const-string v0, "Unknown XXX"

    iput-object v0, p0, Lcom/futuredial/publicobj/ParametersFromUI;->strSPhoneInfo:Ljava/lang/String;

    .line 25
    const-string v0, "com.htc.android.pcsc"

    iput-object v0, p0, Lcom/futuredial/publicobj/ParametersFromUI;->strAccountType:Ljava/lang/String;

    .line 26
    const-string v0, "pcsc"

    iput-object v0, p0, Lcom/futuredial/publicobj/ParametersFromUI;->strAccountName:Ljava/lang/String;

    return-void
.end method

.class Lcom/android/server/DeviceManager3LMService$2;
.super Ljava/lang/Thread;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DeviceManager3LMService;->setNfcState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;

.field final synthetic val$nfc:Landroid/nfc/NfcAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;Landroid/nfc/NfcAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$2;->this$0:Lcom/android/server/DeviceManager3LMService;

    iput-object p2, p0, Lcom/android/server/DeviceManager3LMService$2;->val$nfc:Landroid/nfc/NfcAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService$2;->val$nfc:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    return-void
.end method

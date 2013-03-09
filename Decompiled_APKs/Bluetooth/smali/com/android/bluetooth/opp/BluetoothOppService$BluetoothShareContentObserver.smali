.class Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;
.super Landroid/database/ContentObserver;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothShareContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 79
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppService;->updateFromProvider()V
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$000(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    .line 85
    return-void
.end method

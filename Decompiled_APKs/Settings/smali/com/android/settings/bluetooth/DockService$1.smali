.class Lcom/android/settings/bluetooth/DockService$1;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DockService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DockService;

.field final synthetic val$d:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$dockstate:I


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService$1;->this$0:Lcom/android/settings/bluetooth/DockService;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DockService$1;->val$d:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Lcom/android/settings/bluetooth/DockService$1;->val$dockstate:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService$1;->this$0:Lcom/android/settings/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService$1;->val$d:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Lcom/android/settings/bluetooth/DockService$1;->val$dockstate:I

    #calls: Lcom/android/settings/bluetooth/DockService;->onProfileManagerReady(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/DockService;->access$000(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 161
    return-void
.end method

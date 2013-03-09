.class Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;
.super Ljava/lang/Object;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->askDisconnect(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

.field final synthetic val$device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->val$device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->val$device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 275
    return-void
.end method

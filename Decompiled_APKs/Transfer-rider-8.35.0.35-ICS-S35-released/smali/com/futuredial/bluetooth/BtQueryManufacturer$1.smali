.class Lcom/futuredial/bluetooth/BtQueryManufacturer$1;
.super Ljava/lang/Object;
.source "BtQueryManufacturer.java"

# interfaces
.implements Lcom/futuredial/bluetooth/ICommCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/bluetooth/BtQueryManufacturer;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/bluetooth/BtQueryManufacturer;


# direct methods
.method constructor <init>(Lcom/futuredial/bluetooth/BtQueryManufacturer;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/futuredial/bluetooth/BtQueryManufacturer$1;->this$0:Lcom/futuredial/bluetooth/BtQueryManufacturer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkDataOver([B)Z
    .locals 3
    .parameter "buf"

    .prologue
    const/4 v2, -0x1

    .line 47
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 48
    .local v0, str:Ljava/lang/String;
    const-string v1, "\r\nOK\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v1, "\r\nERROR\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 49
    :cond_0
    const/4 v1, 0x1

    .line 52
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

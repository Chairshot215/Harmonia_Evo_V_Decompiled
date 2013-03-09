.class Lcom/googlecode/android/wifi/tether/TetherApplication$1;
.super Landroid/os/Handler;
.source "TetherApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/android/wifi/tether/TetherApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/TetherApplication;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/TetherApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherApplication;

    .line 544
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 546
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/googlecode/android/wifi/tether/data/ClientData;

    .line 547
    .local v0, clientData:Lcom/googlecode/android/wifi/tether/data/ClientData;
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0, v2}, Lcom/googlecode/android/wifi/tether/TetherApplication;->showClientConnectNotification(Lcom/googlecode/android/wifi/tether/data/ClientData;I)V

    .line 548
    return-void
.end method

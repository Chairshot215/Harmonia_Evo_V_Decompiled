.class Lcom/googlecode/android/wifi/tether/SetupActivity$2;
.super Landroid/os/Handler;
.source "SetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/android/wifi/tether/SetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/SetupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    .line 256
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 258
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$1(Lcom/googlecode/android/wifi/tether/SetupActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V

    .line 261
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 262
    return-void
.end method

.class Lcom/googlecode/android/wifi/tether/SetupActivity$4;
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
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$4;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    .line 945
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 947
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$4;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    #calls: Lcom/googlecode/android/wifi/tether/SetupActivity;->updateSettingsMenu()V
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$2(Lcom/googlecode/android/wifi/tether/SetupActivity;)V

    .line 948
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 949
    return-void
.end method

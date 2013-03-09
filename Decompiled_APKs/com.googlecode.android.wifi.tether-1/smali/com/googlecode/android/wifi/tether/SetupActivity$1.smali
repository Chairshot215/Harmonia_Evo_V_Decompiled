.class Lcom/googlecode/android/wifi/tether/SetupActivity$1;
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
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    .line 246
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 248
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    invoke-static {}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->showDialog(I)V

    .line 252
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 253
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    invoke-static {}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->dismissDialog(I)V

    goto :goto_0
.end method

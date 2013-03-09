.class Lcom/android/phone/CellBroadcastSettings$1;
.super Landroid/os/Handler;
.source "CellBroadcastSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CellBroadcastSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CellBroadcastSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/CellBroadcastSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/phone/CellBroadcastSettings$1;->this$0:Lcom/android/phone/CellBroadcastSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 139
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 141
    :pswitch_0
    const-string v1, "LOADED"

    sget-object v2, Lcom/android/phone/PhoneApp;->mSimState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings$1;->this$0:Lcom/android/phone/CellBroadcastSettings;

    iget-object v1, v1, Lcom/android/phone/CellBroadcastSettings;->mUiThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 143
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings$1;->this$0:Lcom/android/phone/CellBroadcastSettings;

    iget-object v1, v1, Lcom/android/phone/CellBroadcastSettings;->mUiThreadHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 145
    .end local v0           #message:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings$1;->this$0:Lcom/android/phone/CellBroadcastSettings;

    invoke-virtual {v1}, Lcom/android/phone/CellBroadcastSettings;->updateChannel()V

    .line 146
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings$1;->this$0:Lcom/android/phone/CellBroadcastSettings;

    invoke-virtual {v1}, Lcom/android/phone/CellBroadcastSettings;->updateUi()V

    .line 147
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings$1;->this$0:Lcom/android/phone/CellBroadcastSettings;

    #calls: Lcom/android/phone/CellBroadcastSettings;->dismissProgressDialog()V
    invoke-static {v1}, Lcom/android/phone/CellBroadcastSettings;->access$000(Lcom/android/phone/CellBroadcastSettings;)V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

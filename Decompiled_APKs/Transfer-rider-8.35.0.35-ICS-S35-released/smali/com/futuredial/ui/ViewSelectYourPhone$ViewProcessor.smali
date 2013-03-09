.class Lcom/futuredial/ui/ViewSelectYourPhone$ViewProcessor;
.super Ljava/lang/Object;
.source "ViewSelectYourPhone.java"

# interfaces
.implements Lcom/futuredial/ui/UIProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/ui/ViewSelectYourPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/ViewSelectYourPhone;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewSelectYourPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/futuredial/ui/ViewSelectYourPhone$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMsg(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 140
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectYourPhone;->ViewName:Ljava/lang/String;

    const-string v3, "name changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/futuredial/service/DMIBTDevice;

    .line 146
    .local v0, device:Lcom/futuredial/service/DMIBTDevice;
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectYourPhone;->m_btDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 147
    .local v1, idx:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectYourPhone;->m_btDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/service/DMIBTDevice;

    iget-object v3, v0, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    iput-object v3, v2, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    .line 150
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectYourPhone;->m_devicesAround:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectYourPhone;->m_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 157
    .end local v0           #device:Lcom/futuredial/service/DMIBTDevice;
    .end local v1           #idx:I
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/futuredial/service/DMIBTDevice;

    .line 158
    .restart local v0       #device:Lcom/futuredial/service/DMIBTDevice;
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectYourPhone;->m_btDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectYourPhone;->m_devicesAround:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectYourPhone;->m_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 165
    .end local v0           #device:Lcom/futuredial/service/DMIBTDevice;
    :pswitch_2
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectYourPhone;->ViewName:Ljava/lang/String;

    const-string v3, "scan completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    invoke-virtual {v2}, Lcom/futuredial/ui/ViewSelectYourPhone;->set_rescan_status()V

    goto :goto_0

    .line 171
    :pswitch_3
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectYourPhone;->ViewName:Ljava/lang/String;

    const-string v3, "scan started"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectYourPhone;->m_devicesAround:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 173
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectYourPhone;->m_btDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 174
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    invoke-virtual {v2}, Lcom/futuredial/ui/ViewSelectYourPhone;->set_stop_status()V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

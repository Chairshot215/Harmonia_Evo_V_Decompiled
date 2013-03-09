.class Lcom/futuredial/ui/ViewSelectYourPhone$preViewProcessor;
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
    name = "preViewProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/ViewSelectYourPhone;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewSelectYourPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/futuredial/ui/ViewSelectYourPhone$preViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMsg(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 109
    :sswitch_0
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$preViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectYourPhone;->ViewName:Ljava/lang/String;

    const-string v1, "fail open bt"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$preViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    invoke-virtual {v0}, Lcom/futuredial/ui/ViewSelectYourPhone;->alert_cannot_open_bt()V

    goto :goto_0

    .line 115
    :sswitch_1
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$preViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectYourPhone;->ViewName:Ljava/lang/String;

    const-string v1, "existing discoverying finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :sswitch_2
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$preViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectYourPhone;->ViewName:Ljava/lang/String;

    const-string v1, "everything ready/existing discovery finished -> chanage new message processor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$preViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_gHandler:Lcom/futuredial/ui/UIHandler;

    new-instance v1, Lcom/futuredial/ui/ViewSelectYourPhone$ViewProcessor;

    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectYourPhone$preViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    invoke-direct {v1, v2}, Lcom/futuredial/ui/ViewSelectYourPhone$ViewProcessor;-><init>(Lcom/futuredial/ui/ViewSelectYourPhone;)V

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/UIHandler;->set_processor(Lcom/futuredial/ui/UIProcessor;)V

    goto :goto_0

    .line 126
    :sswitch_3
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$preViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectYourPhone;->ViewName:Ljava/lang/String;

    const-string v1, "wireless setting closed, try to scan again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$preViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/futuredial/ui/ViewSelectYourPhone;->m_bWaitForOSSetting:Z

    .line 128
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectYourPhone$preViewProcessor;->this$0:Lcom/futuredial/ui/ViewSelectYourPhone;

    invoke-virtual {v0}, Lcom/futuredial/ui/ViewSelectYourPhone;->do_scan()V

    goto :goto_0

    .line 105
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x68 -> :sswitch_1
        0x6c -> :sswitch_2
        0x9e -> :sswitch_3
    .end sparse-switch
.end method

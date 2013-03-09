.class Lcom/htc/musicenhancer/provider/ProviderTestActivity$1;
.super Landroid/os/Handler;
.source "ProviderTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/provider/ProviderTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/musicenhancer/provider/ProviderTestActivity;


# direct methods
.method constructor <init>(Lcom/htc/musicenhancer/provider/ProviderTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity$1;->this$0:Lcom/htc/musicenhancer/provider/ProviderTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 61
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 105
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported msg.what"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :pswitch_1
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity$1;->this$0:Lcom/htc/musicenhancer/provider/ProviderTestActivity;

    #calls: Lcom/htc/musicenhancer/provider/ProviderTestActivity;->testInsert()Z
    invoke-static {v1}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->access$000(Lcom/htc/musicenhancer/provider/ProviderTestActivity;)Z

    .line 107
    :goto_0
    return-void

    .line 67
    :pswitch_2
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity$1;->this$0:Lcom/htc/musicenhancer/provider/ProviderTestActivity;

    #calls: Lcom/htc/musicenhancer/provider/ProviderTestActivity;->testQuery()Z
    invoke-static {v1}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->access$100(Lcom/htc/musicenhancer/provider/ProviderTestActivity;)Z

    goto :goto_0

    .line 71
    :pswitch_3
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity$1;->this$0:Lcom/htc/musicenhancer/provider/ProviderTestActivity;

    #calls: Lcom/htc/musicenhancer/provider/ProviderTestActivity;->testUpdate()Z
    invoke-static {v1}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->access$200(Lcom/htc/musicenhancer/provider/ProviderTestActivity;)Z

    goto :goto_0

    .line 75
    :pswitch_4
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity$1;->this$0:Lcom/htc/musicenhancer/provider/ProviderTestActivity;

    #calls: Lcom/htc/musicenhancer/provider/ProviderTestActivity;->testDelete()Z
    invoke-static {v1}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->access$300(Lcom/htc/musicenhancer/provider/ProviderTestActivity;)Z

    goto :goto_0

    .line 79
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 80
    .local v0, id:I
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity$1;->this$0:Lcom/htc/musicenhancer/provider/ProviderTestActivity;

    #calls: Lcom/htc/musicenhancer/provider/ProviderTestActivity;->testQuery(I)Z
    invoke-static {v1, v0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->access$400(Lcom/htc/musicenhancer/provider/ProviderTestActivity;I)Z

    goto :goto_0

    .line 85
    .end local v0           #id:I
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 86
    .restart local v0       #id:I
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity$1;->this$0:Lcom/htc/musicenhancer/provider/ProviderTestActivity;

    #calls: Lcom/htc/musicenhancer/provider/ProviderTestActivity;->testUpdate(I)Z
    invoke-static {v1, v0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->access$500(Lcom/htc/musicenhancer/provider/ProviderTestActivity;I)Z

    goto :goto_0

    .line 91
    .end local v0           #id:I
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 92
    .restart local v0       #id:I
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity$1;->this$0:Lcom/htc/musicenhancer/provider/ProviderTestActivity;

    #calls: Lcom/htc/musicenhancer/provider/ProviderTestActivity;->testDelete(I)Z
    invoke-static {v1, v0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->access$600(Lcom/htc/musicenhancer/provider/ProviderTestActivity;I)Z

    goto :goto_0

    .line 97
    .end local v0           #id:I
    :pswitch_8
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity$1;->this$0:Lcom/htc/musicenhancer/provider/ProviderTestActivity;

    #calls: Lcom/htc/musicenhancer/provider/ProviderTestActivity;->testQuerySetting()Z
    invoke-static {v1}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->access$700(Lcom/htc/musicenhancer/provider/ProviderTestActivity;)Z

    goto :goto_0

    .line 101
    :pswitch_9
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity$1;->this$0:Lcom/htc/musicenhancer/provider/ProviderTestActivity;

    #calls: Lcom/htc/musicenhancer/provider/ProviderTestActivity;->testUpdateSetting()Z
    invoke-static {v1}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->access$800(Lcom/htc/musicenhancer/provider/ProviderTestActivity;)Z

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

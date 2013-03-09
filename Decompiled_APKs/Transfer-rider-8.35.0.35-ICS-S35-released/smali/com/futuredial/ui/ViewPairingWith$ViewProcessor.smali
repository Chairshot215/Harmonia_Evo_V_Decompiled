.class Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;
.super Ljava/lang/Object;
.source "ViewPairingWith.java"

# interfaces
.implements Lcom/futuredial/ui/UIProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/ui/ViewPairingWith;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/ViewPairingWith;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewPairingWith;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMsg(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const v12, 0x7f0601a3

    const v11, 0x7f060191

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 51
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "coming msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 206
    :goto_0
    return-void

    .line 58
    :sswitch_0
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    const-string v6, "pair fail"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v6, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    invoke-virtual {v6, v12}, Lcom/futuredial/ui/ViewPairingWith;->get_resource_string(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    invoke-virtual {v7, v11}, Lcom/futuredial/ui/ViewPairingWith;->get_resource_string(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v9, v9}, Lcom/futuredial/ui/ViewPairingWith;->resume_process(Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/ui/ViewController;Lcom/futuredial/ui/ViewController;)V

    goto :goto_0

    .line 67
    :sswitch_1
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    const-string v6, "pair fail timeout"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v6, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    invoke-virtual {v6, v12}, Lcom/futuredial/ui/ViewPairingWith;->get_resource_string(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/futuredial/ui/ViewPairingWith;->resume_times_out(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :sswitch_2
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    const-string v6, "pair successful"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v5, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    iget-object v6, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v6, v6, Lcom/futuredial/ui/ViewPairingWith;->m_rmtDevice:Lcom/futuredial/service/DMIBTDevice;

    invoke-interface {v5, v6}, Lcom/futuredial/service/DMISrvInterface;->dmi_bt_query_phone_model(Lcom/futuredial/service/DMIBTDevice;)Z

    goto :goto_0

    .line 79
    :sswitch_3
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    const-string v6, "pair pin request"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v6, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iput-object v5, v6, Lcom/futuredial/ui/ViewPairingWith;->pairkey:Ljava/lang/String;

    .line 82
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->pairkey:Ljava/lang/String;

    sget-object v6, Lcom/futuredial/service/DMIBTPairModule;->DEFAULT_PAIRKEY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    const v6, 0x7f060247

    iput v6, v5, Lcom/futuredial/ui/ViewPairingWith;->sTipId:I

    .line 89
    :goto_1
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    const v6, 0x7f060258

    iput v6, v5, Lcom/futuredial/ui/ViewPairingWith;->sTitleId:I

    .line 90
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->headerText:Lcom/htc/widget/HeaderBarText;

    iget-object v6, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v7, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget v7, v7, Lcom/futuredial/ui/ViewPairingWith;->sTitleId:I

    invoke-virtual {v6, v7}, Lcom/futuredial/ui/ViewPairingWith;->getStringByResid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 91
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->m_text1:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v7, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget v7, v7, Lcom/futuredial/ui/ViewPairingWith;->sTipId:I

    invoke-virtual {v6, v7}, Lcom/futuredial/ui/ViewPairingWith;->getStringByResid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 86
    :cond_0
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    const v6, 0x7f060235

    iput v6, v5, Lcom/futuredial/ui/ViewPairingWith;->sTipId:I

    goto :goto_1

    .line 96
    :sswitch_4
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    const-string v6, "query start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    const v6, 0x7f06025a

    iput v6, v5, Lcom/futuredial/ui/ViewPairingWith;->sTitleId:I

    .line 98
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->headerText:Lcom/htc/widget/HeaderBarText;

    iget-object v6, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v7, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget v7, v7, Lcom/futuredial/ui/ViewPairingWith;->sTitleId:I

    invoke-virtual {v6, v7}, Lcom/futuredial/ui/ViewPairingWith;->getStringByResid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 99
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iput v8, v5, Lcom/futuredial/ui/ViewPairingWith;->sTipId:I

    .line 100
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->m_text1:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 105
    :sswitch_5
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    const-string v6, "dun query fail"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v6, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    const v7, 0x7f0601a4

    invoke-virtual {v6, v7}, Lcom/futuredial/ui/ViewPairingWith;->get_resource_string(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    invoke-virtual {v7, v11}, Lcom/futuredial/ui/ViewPairingWith;->get_resource_string(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v9, v9}, Lcom/futuredial/ui/ViewPairingWith;->resume_process(Ljava/lang/String;Ljava/lang/String;Lcom/futuredial/ui/ViewController;Lcom/futuredial/ui/ViewController;)V

    goto/16 :goto_0

    .line 115
    :sswitch_6
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    const-string v6, "dun query fail timeout"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v6, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    const v7, 0x7f0601a4

    invoke-virtual {v6, v7}, Lcom/futuredial/ui/ViewPairingWith;->get_resource_string(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/futuredial/ui/ViewPairingWith;->resume_times_out(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :sswitch_7
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    const-string v6, "load phone config start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    const v6, 0x7f060256

    iput v6, v5, Lcom/futuredial/ui/ViewPairingWith;->sTitleId:I

    .line 123
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->headerText:Lcom/htc/widget/HeaderBarText;

    iget-object v6, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v7, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget v7, v7, Lcom/futuredial/ui/ViewPairingWith;->sTitleId:I

    invoke-virtual {v6, v7}, Lcom/futuredial/ui/ViewPairingWith;->getStringByResid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 124
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iput v8, v5, Lcom/futuredial/ui/ViewPairingWith;->sTipId:I

    .line 125
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->m_text1:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 130
    :sswitch_8
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v6, v5, Lcom/futuredial/ui/ViewPairingWith;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iput-object v5, v6, Lcom/futuredial/service/DMIPhone;->m_phonemodel:Ljava/lang/String;

    .line 131
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get phone model: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v7, v7, Lcom/futuredial/ui/ViewPairingWith;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v7, v7, Lcom/futuredial/service/DMIPhone;->m_phonemodel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 136
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 137
    .local v0, cfg:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v6, v5, Lcom/futuredial/ui/ViewPairingWith;->m_phone:Lcom/futuredial/service/DMIPhone;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v6, Lcom/futuredial/service/DMIPhone;->m_phoneProcType:Ljava/lang/String;

    .line 138
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v6, v5, Lcom/futuredial/ui/ViewPairingWith;->m_phone:Lcom/futuredial/service/DMIPhone;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v6, Lcom/futuredial/service/DMIPhone;->m_cfgPhoneInfo:Ljava/lang/String;

    .line 139
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get phone proc type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v7, v7, Lcom/futuredial/ui/ViewPairingWith;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v7, v7, Lcom/futuredial/service/DMIPhone;->m_phoneProcType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get phone info in xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 145
    .end local v0           #cfg:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    .line 146
    .local v3, module:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get phone module: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->get_moduleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ;policy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_policy:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v5, v5, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 152
    .end local v3           #module:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    :sswitch_b
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    const-string v6, "load phone config end, going to load phone history"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v5, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    iget-object v6, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v6, v6, Lcom/futuredial/ui/ViewPairingWith;->m_rmtDevice:Lcom/futuredial/service/DMIBTDevice;

    iget-object v7, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v7, v7, Lcom/futuredial/ui/ViewPairingWith;->m_phone:Lcom/futuredial/service/DMIPhone;

    invoke-interface {v5, v6, v7}, Lcom/futuredial/service/DMISrvInterface;->dmi_bt_query_phone_history(Lcom/futuredial/service/DMIBTDevice;Lcom/futuredial/service/DMIPhone;)V

    goto/16 :goto_0

    .line 158
    :sswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/futuredial/ui/DataStructures$SerialOpHistory;

    .line 159
    .local v1, his:Lcom/futuredial/ui/DataStructures$SerialOpHistory;
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get dmi operation history: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/futuredial/ui/DataStructures$SerialOpHistory;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    const-string v6, "opHistory"

    invoke-virtual {v5, v6, v1}, Lcom/futuredial/ui/ViewPairingWith;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 166
    .end local v1           #his:Lcom/futuredial/ui/DataStructures$SerialOpHistory;
    :sswitch_d
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 167
    .local v2, importedMods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/service/DMIPhone$DMIPhoneModule;>;"
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get imported modules: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    const-string v6, "importedMod"

    invoke-virtual {v5, v6, v2}, Lcom/futuredial/ui/ViewPairingWith;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    const-string v6, "phone_info"

    iget-object v7, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v7, v7, Lcom/futuredial/ui/ViewPairingWith;->m_phone:Lcom/futuredial/service/DMIPhone;

    invoke-virtual {v5, v6, v7}, Lcom/futuredial/ui/ViewPairingWith;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    new-instance v5, Lcom/futuredial/ui/ViewSelectDataType;

    invoke-direct {v5}, Lcom/futuredial/ui/ViewSelectDataType;-><init>()V

    invoke-virtual {v5}, Lcom/futuredial/ui/ViewSelectDataType;->show()V

    goto/16 :goto_0

    .line 179
    .end local v2           #importedMods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/service/DMIPhone$DMIPhoneModule;>;"
    :sswitch_e
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    const-string v6, "phone_info"

    iget-object v7, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v7, v7, Lcom/futuredial/ui/ViewPairingWith;->m_phone:Lcom/futuredial/service/DMIPhone;

    invoke-virtual {v5, v6, v7}, Lcom/futuredial/ui/ViewPairingWith;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    new-instance v5, Lcom/futuredial/ui/ViewNotSupportedModel;

    invoke-direct {v5}, Lcom/futuredial/ui/ViewNotSupportedModel;-><init>()V

    invoke-virtual {v5}, Lcom/futuredial/ui/ViewNotSupportedModel;->show()V

    goto/16 :goto_0

    .line 185
    :sswitch_f
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->ViewName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notify show?: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v10, :cond_3

    .line 188
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v5, v5, Lcom/futuredial/service/DMIPhone;->m_bt:Lcom/futuredial/service/DMIBTDevice;

    iget-object v4, v5, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    .line 189
    .local v4, tip:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 190
    :cond_1
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    const v6, 0x7f060222

    invoke-virtual {v5, v6}, Lcom/futuredial/ui/ViewPairingWith;->get_resource_string(I)Ljava/lang/String;

    move-result-object v4

    .line 193
    :goto_2
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const/16 v6, 0x12c

    invoke-virtual {v5, v4, v6}, Lcom/futuredial/ui/DMIUI;->dmi_notify(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 192
    :cond_2
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    const v6, 0x7f060223

    invoke-virtual {v5, v6}, Lcom/futuredial/ui/ViewPairingWith;->get_resource_string(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v7, v7, Lcom/futuredial/ui/ViewPairingWith;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v7, v7, Lcom/futuredial/service/DMIPhone;->m_bt:Lcom/futuredial/service/DMIBTDevice;

    iget-object v7, v7, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 196
    .end local v4           #tip:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    iget-object v5, v5, Lcom/futuredial/ui/ViewPairingWith;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v5}, Lcom/futuredial/ui/DMIUI;->dmi_notify_close()V

    goto/16 :goto_0

    .line 201
    :sswitch_10
    iget-object v5, p0, Lcom/futuredial/ui/ViewPairingWith$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewPairingWith;

    invoke-virtual {v5}, Lcom/futuredial/ui/ViewPairingWith;->fetchUUIDFail()V

    goto/16 :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_f
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xca -> :sswitch_2
        0xcb -> :sswitch_3
        0x12c -> :sswitch_4
        0x12d -> :sswitch_5
        0x12e -> :sswitch_6
        0x12f -> :sswitch_7
        0x130 -> :sswitch_8
        0x131 -> :sswitch_a
        0x132 -> :sswitch_9
        0x133 -> :sswitch_b
        0x134 -> :sswitch_c
        0x135 -> :sswitch_d
        0x136 -> :sswitch_e
        0x137 -> :sswitch_10
    .end sparse-switch
.end method

.class Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;
.super Ljava/lang/Object;
.source "ViewReadWriteData.java"

# interfaces
.implements Lcom/futuredial/ui/UIProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/ui/ViewReadWriteData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/ViewReadWriteData;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewReadWriteData;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMsg(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->ViewName:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "coming msg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",arg1:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",arg2:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",obj:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget v6, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v6, :sswitch_data_0

    .line 249
    :goto_0
    monitor-exit p0

    return-void

    .line 116
    :sswitch_0
    :try_start_1
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v6, v6, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/futuredial/ui/DialogManager;->dismissAll(Z)V

    .line 117
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    check-cast v6, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->bClick:Z

    .line 119
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iput v7, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_curmoduleID:I

    .line 120
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->ViewName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "R/W "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget v8, v8, Lcom/futuredial/ui/ViewReadWriteData;->m_curmoduleID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " start"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_importingProgressBar:Landroid/widget/ProgressBar;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 123
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    const-string v7, ""

    iput-object v7, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_curwrotecount:Ljava/lang/String;

    .line 124
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_importingNotice:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v7, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v7, v7, Lcom/futuredial/ui/ViewReadWriteData;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v8, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget v8, v8, Lcom/futuredial/ui/ViewReadWriteData;->m_curmoduleID:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/futuredial/service/DMIPhone;->get_modulebyID(Ljava/lang/Integer;)Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    move-result-object v7

    invoke-virtual {v7}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->get_moduleName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_curModuleName:Ljava/lang/String;

    .line 126
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_CurrentModuleName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v7, v7, Lcom/futuredial/ui/ViewReadWriteData;->m_curModuleName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v7, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget v7, v7, Lcom/futuredial/ui/ViewReadWriteData;->m_curmoduleID:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/futuredial/ui/ViewReadWriteData;->clear_module_status_in_listview(Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 111
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 135
    :sswitch_1
    :try_start_2
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_importingProgressBar:Landroid/widget/ProgressBar;

    iget-object v9, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v9, v9, Lcom/futuredial/ui/ViewReadWriteData;->m_importingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Landroid/widget/ProgressBar;->getMax()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 136
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 137
    .local v1, moduleID:I
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 138
    .local v5, writeCount:I
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 139
    .local v3, rwResult:I
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->ViewName:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "R/W "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " end"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_phone:Lcom/futuredial/service/DMIPhone;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/futuredial/service/DMIPhone;->get_modulebyID(Ljava/lang/Integer;)Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    move-result-object v0

    .line 144
    .local v0, m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    iput v3, v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_result:I

    .line 145
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_writeCount:Ljava/lang/Integer;

    .line 147
    if-ne v3, v7, :cond_0

    .line 149
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/futuredial/ui/ViewReadWriteData;->set_module_status_in_listview(Ljava/lang/Integer;Z)V

    .line 150
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_bImported:Z

    .line 158
    :goto_1
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v9, v6, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v6, v6, Lcom/futuredial/ui/DMIUI;->m_cfgChg:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Lcom/futuredial/ui/DialogManager;->dismissAll(Z)V

    .line 159
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    check-cast v6, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/futuredial/ui/ViewReadWriteData$CCancelRWBtnListener;->bClick:Z

    goto/16 :goto_0

    .line 154
    :cond_0
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_bImported:Z

    .line 155
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lcom/futuredial/ui/ViewReadWriteData;->set_module_status_in_listview(Ljava/lang/Integer;Z)V

    goto :goto_1

    :cond_1
    move v6, v8

    .line 158
    goto :goto_2

    .line 164
    .end local v0           #m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    .end local v1           #moduleID:I
    .end local v3           #rwResult:I
    .end local v5           #writeCount:I
    :sswitch_2
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    invoke-virtual {v6}, Lcom/futuredial/ui/ViewReadWriteData;->resume_process()Z

    goto/16 :goto_0

    .line 169
    :sswitch_3
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    invoke-virtual {v6}, Lcom/futuredial/ui/ViewReadWriteData;->resume_times_out()V

    goto/16 :goto_0

    .line 174
    :sswitch_4
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->ViewName:Ljava/lang/String;

    const-string v7, "all modules finished, going to report page"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v6, Lcom/futuredial/ui/ViewReport;

    invoke-direct {v6}, Lcom/futuredial/ui/ViewReport;-><init>()V

    invoke-virtual {v6}, Lcom/futuredial/ui/ViewReport;->show()V

    goto/16 :goto_0

    .line 181
    :sswitch_5
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 182
    .local v2, progress:I
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iput v2, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_curprogress:I

    .line 183
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->ViewName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set progress bar to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_importingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 189
    .end local v2           #progress:I
    :sswitch_6
    new-instance v6, Lcom/futuredial/ui/ViewAppFinish;

    invoke-direct {v6}, Lcom/futuredial/ui/ViewAppFinish;-><init>()V

    invoke-virtual {v6}, Lcom/futuredial/ui/ViewAppFinish;->show()V

    goto/16 :goto_0

    .line 194
    :sswitch_7
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_phone:Lcom/futuredial/service/DMIPhone;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/futuredial/service/DMIPhone;->get_modulebyID(Ljava/lang/Integer;)Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v6, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_hasDroppedField:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 199
    :sswitch_8
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_curcancelable:Z

    .line 201
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setClickable(Z)V

    .line 202
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 207
    :sswitch_9
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_curcancelable:Z

    .line 208
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setClickable(Z)V

    .line 209
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 215
    :sswitch_a
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->ViewName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notify show?: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_4

    .line 218
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v6, v6, Lcom/futuredial/service/DMIPhone;->m_bt:Lcom/futuredial/service/DMIBTDevice;

    iget-object v4, v6, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    .line 219
    .local v4, tip:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 220
    :cond_2
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    const v7, 0x7f060222

    invoke-virtual {v6, v7}, Lcom/futuredial/ui/ViewReadWriteData;->get_resource_string(I)Ljava/lang/String;

    move-result-object v4

    .line 223
    :goto_3
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const/16 v7, 0x12c

    invoke-virtual {v6, v4, v7}, Lcom/futuredial/ui/DMIUI;->dmi_notify(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 222
    :cond_3
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    const v7, 0x7f060223

    invoke-virtual {v6, v7}, Lcom/futuredial/ui/ViewReadWriteData;->get_resource_string(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v9, v9, Lcom/futuredial/ui/ViewReadWriteData;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v9, v9, Lcom/futuredial/service/DMIPhone;->m_bt:Lcom/futuredial/service/DMIBTDevice;

    iget-object v9, v9, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 226
    .end local v4           #tip:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v6}, Lcom/futuredial/ui/DMIUI;->dmi_notify_close()V

    goto/16 :goto_0

    .line 231
    :sswitch_b
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->ViewName:Ljava/lang/String;

    const-string v7, "need password"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    invoke-virtual {v6}, Lcom/futuredial/ui/ViewReadWriteData;->bb_pin_request()V

    goto/16 :goto_0

    .line 238
    :sswitch_c
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->ViewName:Ljava/lang/String;

    const-string v7, "disconnected"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 243
    :sswitch_d
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_curwrotecount:Ljava/lang/String;

    .line 244
    iget-object v6, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewReadWriteData;->m_importingNotice:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/futuredial/ui/ViewReadWriteData$ViewProcessor;->this$0:Lcom/futuredial/ui/ViewReadWriteData;

    iget-object v7, v7, Lcom/futuredial/ui/ViewReadWriteData;->m_curwrotecount:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 112
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_a
        0x191 -> :sswitch_0
        0x192 -> :sswitch_1
        0x193 -> :sswitch_2
        0x194 -> :sswitch_3
        0x195 -> :sswitch_4
        0x196 -> :sswitch_5
        0x197 -> :sswitch_6
        0x198 -> :sswitch_7
        0x199 -> :sswitch_8
        0x19a -> :sswitch_9
        0x19b -> :sswitch_b
        0x19c -> :sswitch_c
        0x19d -> :sswitch_d
    .end sparse-switch
.end method

.class Lcom/htc/omadm/gui/ext/DMGui$2;
.super Landroid/content/BroadcastReceiver;
.source "DMGui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/gui/ext/DMGui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/gui/ext/DMGui;


# direct methods
.method constructor <init>(Lcom/htc/omadm/gui/ext/DMGui;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/DMGui$2;->this$0:Lcom/htc/omadm/gui/ext/DMGui;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.andorid.omadm.dialog.resume"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    const-string v2, "libgo"

    const-string v3, "DMGui: AutoResumeDialog"

    invoke-static {v2, v3}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v1, sendIntent:Landroid/content/Intent;
    const-string v2, "com.htc.omadm.gui.ext.BaseDialog"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 113
    iget-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui$2;->this$0:Lcom/htc/omadm/gui/ext/DMGui;

    #calls: Lcom/htc/omadm/gui/ext/DMGui;->retryResumeUIToForeground()V
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/DMGui;->access$200(Lcom/htc/omadm/gui/ext/DMGui;)V

    .line 210
    .end local v1           #sendIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 118
    .local v0, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui$2;->this$0:Lcom/htc/omadm/gui/ext/DMGui;

    #getter for: Lcom/htc/omadm/gui/ext/DMGui;->mCallbackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/DMGui;->access$300(Lcom/htc/omadm/gui/ext/DMGui;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "option"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 123
    const-string v2, "libgo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DMGui onReceive -> Intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.andorid.omadm.gui.callback.normal.positive"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    const-string v2, "libgo"

    const-string v3, "Send MSG -> CALLBACK_NORMAL_POSITIVE_KEY"

    invoke-static {v2, v3}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/16 v2, 0x64

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 131
    invoke-static {v5}, Lcom/htc/omadm/gui/ext/DMGui;->access$402(Z)Z

    .line 208
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui$2;->this$0:Lcom/htc/omadm/gui/ext/DMGui;

    #getter for: Lcom/htc/omadm/gui/ext/DMGui;->mCallbackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/DMGui;->access$300(Lcom/htc/omadm/gui/ext/DMGui;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 209
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 132
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.andorid.omadm.gui.callback.normal.negative"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 134
    const-string v2, "libgo"

    const-string v3, "Send MSG -> CALLBACK_NORMAL_NEGATIVE_KEY"

    invoke-static {v2, v3}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/16 v2, 0x65

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 136
    invoke-static {v5}, Lcom/htc/omadm/gui/ext/DMGui;->access$402(Z)Z

    goto :goto_1

    .line 137
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.andorid.omadm.gui.callback.normal.neutral"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 139
    const-string v2, "libgo"

    const-string v3, "Send MSG -> CALLBACK_NORMAL_NEUTRAL_KEY"

    invoke-static {v2, v3}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/16 v2, 0x66

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 141
    invoke-static {v5}, Lcom/htc/omadm/gui/ext/DMGui;->access$402(Z)Z

    goto :goto_1

    .line 142
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.andorid.omadm.gui.callback.normal.back"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 144
    const-string v2, "libgo"

    const-string v3, "Send MSG -> CALLBACK_NORMAL_BACK_KEY"

    invoke-static {v2, v3}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/16 v2, 0x67

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 146
    invoke-static {v5}, Lcom/htc/omadm/gui/ext/DMGui;->access$402(Z)Z

    goto :goto_1

    .line 147
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.andorid.omadm.gui.callback.normal.autoclose"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 149
    const-string v2, "libgo"

    const-string v3, "Send MSG -> CALLBACK_NORMAL_AUTO_CLOSE"

    invoke-static {v2, v3}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/16 v2, 0x68

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 151
    invoke-static {v5}, Lcom/htc/omadm/gui/ext/DMGui;->access$402(Z)Z

    goto :goto_1

    .line 152
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.andorid.omadm.gui.callback.normal.close"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 154
    const-string v2, "libgo"

    const-string v3, "Send MSG -> CALLBACK_NORMAL_CLOSE"

    invoke-static {v2, v3}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/16 v2, 0x69

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 156
    invoke-static {v5}, Lcom/htc/omadm/gui/ext/DMGui;->access$402(Z)Z

    goto/16 :goto_1

    .line 160
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.andorid.omadm.gui.callback.high.positive"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 162
    const-string v2, "libgo"

    const-string v3, "Send MSG -> CALLBACK_HIGH_POSITIVE_KEY"

    invoke-static {v2, v3}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/16 v2, 0xc8

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 164
    invoke-static {v5}, Lcom/htc/omadm/gui/ext/DMGui;->access$502(Z)Z

    goto/16 :goto_1

    .line 165
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.andorid.omadm.gui.callback.high.negative"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 167
    const-string v2, "libgo"

    const-string v3, "Send MSG -> CALLBACK_HIGH_NEGATIVE_KEY"

    invoke-static {v2, v3}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/16 v2, 0xc9

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 169
    invoke-static {v5}, Lcom/htc/omadm/gui/ext/DMGui;->access$502(Z)Z

    goto/16 :goto_1

    .line 170
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.andorid.omadm.gui.callback.high.neutral"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 172
    const-string v2, "libgo"

    const-string v3, "Send MSG -> CALLBACK_HIGH_NEUTRAL_KEY"

    invoke-static {v2, v3}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/16 v2, 0xca

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 174
    invoke-static {v5}, Lcom/htc/omadm/gui/ext/DMGui;->access$502(Z)Z

    goto/16 :goto_1

    .line 175
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.andorid.omadm.gui.callback.high.back"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 177
    const-string v2, "libgo"

    const-string v3, "Send MSG -> CALLBACK_HIGH_BACK_KEY"

    invoke-static {v2, v3}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/16 v2, 0xcb

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 179
    invoke-static {v5}, Lcom/htc/omadm/gui/ext/DMGui;->access$502(Z)Z

    goto/16 :goto_1

    .line 180
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.andorid.omadm.gui.callback.high.autoclose"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 182
    const-string v2, "libgo"

    const-string v3, "Send MSG -> CALLBACK_HIGH_AUTO_CLOSE"

    invoke-static {v2, v3}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/16 v2, 0xcc

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 184
    invoke-static {v5}, Lcom/htc/omadm/gui/ext/DMGui;->access$502(Z)Z

    goto/16 :goto_1

    .line 185
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.andorid.omadm.gui.callback.high.close"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 187
    const-string v2, "libgo"

    const-string v3, "Send MSG -> CALLBACK_HIGH_CLOSE"

    invoke-static {v2, v3}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/16 v2, 0xcd

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 189
    invoke-static {v5}, Lcom/htc/omadm/gui/ext/DMGui;->access$502(Z)Z

    goto/16 :goto_1

    .line 193
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.andorid.omadm.gui.callback.progressbar.success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 195
    const-string v2, "libgo"

    const-string v3, "Send MSG -> CALLBACK_PROGRESS_BAR_SUCCESS"

    invoke-static {v2, v3}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/16 v2, 0x12c

    iput v2, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 197
    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.andorid.omadm.gui.callback.progressbar.fail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 199
    const-string v2, "libgo"

    const-string v3, "Send MSG -> CALLBACK_PROGRESS_BAR_FAIL"

    invoke-static {v2, v3}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/16 v2, 0x12d

    iput v2, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 201
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.andorid.omadm.gui.callback.progressbar.close"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    const-string v2, "libgo"

    const-string v3, "Send MSG -> CALLBACK_PROGRESS_BAR_CLOSE"

    invoke-static {v2, v3}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/16 v2, 0x12e

    iput v2, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1
.end method

.class Lcom/android/phone/IccNetworkDepersonalizationPanel$2;
.super Landroid/os/Handler;
.source "IccNetworkDepersonalizationPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccNetworkDepersonalizationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/16 v10, 0x96

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 124
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_2

    .line 125
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 126
    .local v3, res:Landroid/os/AsyncResult;
    iget-object v6, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 128
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateError()V
    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$100(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    .line 131
    const-wide/high16 v6, 0x4000

    iget-object v8, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I
    invoke-static {v8}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$200(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v8

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x403e

    mul-double/2addr v6, v8

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    double-to-long v1, v6

    .line 132
    .local v1, delayTime:J
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$208(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    .line 133
    const-string v6, "IccNetworkDeperson"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delaytime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v6, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;

    invoke-direct {v6, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$1;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    invoke-virtual {p0, v6, v1, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    .end local v1           #delayTime:J
    .end local v3           #res:Landroid/os/AsyncResult;
    :cond_0
    :goto_0
    return-void

    .line 154
    .restart local v3       #res:Landroid/os/AsyncResult;
    :cond_1
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$400(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {p0, v10}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Lcom/android/internal/telephony/Phone;->getSubsidyLock(ILandroid/os/Message;)V

    goto :goto_0

    .line 160
    .end local v3           #res:Landroid/os/AsyncResult;
    :cond_2
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v10, :cond_3

    .line 161
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 162
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_0

    .line 164
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 165
    .local v5, type:I
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->processSubsidyLockType(I)V
    invoke-static {v6, v5}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$500(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)V

    .line 166
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #calls: Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateSuccess()V
    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$600(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    .line 167
    new-instance v6, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;

    invoke-direct {v6, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2$2;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel$2;)V

    const-wide/16 v7, 0xbb8

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 185
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v5           #type:I
    :cond_3
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x65

    if-ne v6, v7, :cond_0

    .line 187
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$400(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 189
    .local v4, state:Lcom/android/internal/telephony/Phone$State;
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$000(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->clear()V

    .line 191
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v6, :cond_4

    .line 193
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$1000(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f0e03c1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 194
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$1100(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$1200(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 199
    :cond_4
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$1100(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    #getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$1200(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

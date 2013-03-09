.class Lcom/android/mms/ui/MessageTextEditor$1;
.super Ljava/lang/Object;
.source "MessageTextEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageTextEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field beforeText:Ljava/lang/CharSequence;

.field initialized:Z

.field mSafeString:Ljava/lang/String;

.field preserve:Z

.field final synthetic this$0:Lcom/android/mms/ui/MessageTextEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageTextEditor;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 124
    iput-object p1, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTextEditor$1;->mSafeString:Ljava/lang/String;

    .line 128
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageTextEditor$1;->initialized:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageTextEditor$1;->preserve:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .parameter "s"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 259
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mBlockCompletion:Z
    invoke-static {v2}, Lcom/android/mms/ui/MessageTextEditor;->access$000(Lcom/android/mms/ui/MessageTextEditor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mNli:I
    invoke-static {v2}, Lcom/android/mms/ui/MessageTextEditor;->access$400(Lcom/android/mms/ui/MessageTextEditor;)I

    move-result v2

    invoke-static {v1, v6, v2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;ZI)[I

    move-result-object v0

    .line 265
    .local v0, params:[I
    aget v2, v0, v6

    iget-object v3, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mSmsToMmsThreshold:I
    invoke-static {v3}, Lcom/android/mms/ui/MessageTextEditor;->access$500(Lcom/android/mms/ui/MessageTextEditor;)I

    move-result v3

    if-le v2, v3, :cond_2

    .line 266
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    iget-object v3, p0, Lcom/android/mms/ui/MessageTextEditor$1;->mSafeString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageTextEditor;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessageTextEditor$1;->mSafeString:Ljava/lang/String;

    .line 270
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageTextEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageTextEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_3

    .line 273
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageTextEditor;->updateCounter()V

    goto :goto_0

    .line 275
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    aget v3, v0, v5

    aget v4, v0, v7

    add-int/2addr v3, v4

    #setter for: Lcom/android/mms/ui/MessageTextEditor;->mMaxChar:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageTextEditor;->access$802(Lcom/android/mms/ui/MessageTextEditor;I)I

    .line 278
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    aget v3, v0, v6

    aget v4, v0, v5

    aget v5, v0, v5

    aget v6, v0, v7

    add-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/MessageTextEditor;->updateLandscapeCounter(III)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mBlockCompletion:Z
    invoke-static {v0}, Lcom/android/mms/ui/MessageTextEditor;->access$000(Lcom/android/mms/ui/MessageTextEditor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageTextEditor$1;->preserve:Z

    if-nez v0, :cond_0

    .line 141
    if-eqz p1, :cond_2

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageTextEditor$1;->beforeText:Ljava/lang/CharSequence;

    .line 143
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    iget-object v1, p0, Lcom/android/mms/ui/MessageTextEditor$1;->beforeText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, v0, Lcom/android/mms/ui/MessageTextEditor;->mBeforeTextCount:I

    goto :goto_0

    .line 145
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageTextEditor$1;->beforeText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 12
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 153
    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mBlockCompletion:Z
    invoke-static {v7}, Lcom/android/mms/ui/MessageTextEditor;->access$000(Lcom/android/mms/ui/MessageTextEditor;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-boolean v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->preserve:Z

    if-eqz v7, :cond_2

    .line 161
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->preserve:Z

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 175
    .local v6, text:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v7}, Lcom/android/mms/ui/MessageTextEditor;->access$100(Lcom/android/mms/ui/MessageTextEditor;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 176
    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v7}, Lcom/android/mms/ui/MessageTextEditor;->access$100(Lcom/android/mms/ui/MessageTextEditor;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v8, v7}, Lcom/android/mms/ui/StateWatcher;->updateHasText(Z)V

    .line 180
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mSmsMode:Z
    invoke-static {v7}, Lcom/android/mms/ui/MessageTextEditor;->access$200(Lcom/android/mms/ui/MessageTextEditor;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 181
    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v7}, Lcom/android/mms/ui/MessageTextEditor;->access$100(Lcom/android/mms/ui/MessageTextEditor;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/StateWatcher;->isMultimediaMessage()Z

    move-result v7

    if-nez v7, :cond_4

    .line 182
    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    const/4 v8, 0x1

    #setter for: Lcom/android/mms/ui/MessageTextEditor;->mSmsMode:Z
    invoke-static {v7, v8}, Lcom/android/mms/ui/MessageTextEditor;->access$202(Lcom/android/mms/ui/MessageTextEditor;Z)Z

    .line 185
    :cond_4
    const-string v7, "MessageTextEditor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTextChanged:set SmsMode> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mSmsMode:Z
    invoke-static {v9}, Lcom/android/mms/ui/MessageTextEditor;->access$200(Lcom/android/mms/ui/MessageTextEditor;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v7}, Lcom/android/mms/ui/MessageTextEditor;->access$100(Lcom/android/mms/ui/MessageTextEditor;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 188
    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v7}, Lcom/android/mms/ui/MessageTextEditor;->access$100(Lcom/android/mms/ui/MessageTextEditor;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/StateWatcher;->updateHasHugeText(Z)V

    goto :goto_0

    .line 176
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 197
    :cond_6
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0xa8

    if-ne v7, v8, :cond_7

    const/4 v1, 0x1

    .line 199
    .local v1, isVerizon:Z
    :goto_2
    if-eqz v1, :cond_8

    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mSmsMode:Z
    invoke-static {v7}, Lcom/android/mms/ui/MessageTextEditor;->access$200(Lcom/android/mms/ui/MessageTextEditor;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mIsForward:Z
    invoke-static {v7}, Lcom/android/mms/ui/MessageTextEditor;->access$300(Lcom/android/mms/ui/MessageTextEditor;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 202
    iget-boolean v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->initialized:Z

    if-nez v7, :cond_8

    .line 203
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->initialized:Z

    goto/16 :goto_0

    .line 197
    .end local v1           #isVerizon:Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    .line 208
    .restart local v1       #isVerizon:Z
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageTextEditor;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 216
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mNli:I
    invoke-static {v8}, Lcom/android/mms/ui/MessageTextEditor;->access$400(Lcom/android/mms/ui/MessageTextEditor;)I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;ZI)[I

    move-result-object v4

    .line 217
    .local v4, params:[I
    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v7}, Lcom/android/mms/ui/MessageTextEditor;->access$100(Lcom/android/mms/ui/MessageTextEditor;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 218
    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v7}, Lcom/android/mms/ui/MessageTextEditor;->access$100(Lcom/android/mms/ui/MessageTextEditor;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v8

    const/4 v7, 0x0

    aget v7, v4, v7

    iget-object v9, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mSmsToMmsThreshold:I
    invoke-static {v9}, Lcom/android/mms/ui/MessageTextEditor;->access$500(Lcom/android/mms/ui/MessageTextEditor;)I

    move-result v9

    if-le v7, v9, :cond_a

    const/4 v7, 0x1

    :goto_3
    invoke-virtual {v8, v7}, Lcom/android/mms/ui/StateWatcher;->updateHasHugeText(Z)V

    .line 220
    :cond_9
    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageTextEditor;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 222
    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageTextEditor;->updateCounter()V

    goto/16 :goto_0

    .line 218
    :cond_a
    const/4 v7, 0x0

    goto :goto_3

    .line 223
    :cond_b
    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v7}, Lcom/android/mms/ui/MessageTextEditor;->access$100(Lcom/android/mms/ui/MessageTextEditor;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 225
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMS2Email()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mSMSEmailString:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/MessageTextEditor;->access$600(Lcom/android/mms/ui/MessageTextEditor;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 227
    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mSMSEmailString:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/MessageTextEditor;->access$600(Lcom/android/mms/ui/MessageTextEditor;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mNli:I
    invoke-static {v8}, Lcom/android/mms/ui/MessageTextEditor;->access$400(Lcom/android/mms/ui/MessageTextEditor;)I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/mms/transaction/SmsMessageSender;->getEmailBodyLimit(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 229
    .local v2, limit:I
    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    iget-object v8, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mSMSEmailString:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/mms/ui/MessageTextEditor;->access$600(Lcom/android/mms/ui/MessageTextEditor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8, v2}, Lcom/android/mms/ui/MessageTextEditor;->getAppendEmailMsgCount(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 232
    .local v3, nCount:I
    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    const/4 v8, 0x0

    #setter for: Lcom/android/mms/ui/MessageTextEditor;->bForceEmailMMS:Z
    invoke-static {v7, v8}, Lcom/android/mms/ui/MessageTextEditor;->access$702(Lcom/android/mms/ui/MessageTextEditor;Z)Z

    .line 233
    if-lez v3, :cond_e

    .line 234
    move-object v5, v6

    .line 235
    .local v5, tText:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v3, :cond_c

    .line 236
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mSMSEmailString:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/mms/ui/MessageTextEditor;->access$600(Lcom/android/mms/ui/MessageTextEditor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 238
    :cond_c
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    #getter for: Lcom/android/mms/ui/MessageTextEditor;->mNli:I
    invoke-static {v8}, Lcom/android/mms/ui/MessageTextEditor;->access$400(Lcom/android/mms/ui/MessageTextEditor;)I

    move-result v8

    invoke-static {v5, v7, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;ZI)[I

    move-result-object v4

    .line 250
    .end local v0           #i:I
    .end local v2           #limit:I
    .end local v3           #nCount:I
    .end local v5           #tText:Ljava/lang/String;
    :cond_d
    :goto_5
    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    const/4 v8, 0x1

    aget v8, v4, v8

    const/4 v9, 0x2

    aget v9, v4, v9

    add-int/2addr v8, v9

    #setter for: Lcom/android/mms/ui/MessageTextEditor;->mMaxChar:I
    invoke-static {v7, v8}, Lcom/android/mms/ui/MessageTextEditor;->access$802(Lcom/android/mms/ui/MessageTextEditor;I)I

    .line 252
    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    const/4 v8, 0x0

    aget v8, v4, v8

    const/4 v9, 0x1

    aget v9, v4, v9

    const/4 v10, 0x1

    aget v10, v4, v10

    const/4 v11, 0x2

    aget v11, v4, v11

    add-int/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/mms/ui/MessageTextEditor;->updateLandscapeCounter(III)V

    goto/16 :goto_0

    .line 246
    .restart local v2       #limit:I
    .restart local v3       #nCount:I
    :cond_e
    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor$1;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    const/4 v8, 0x1

    #setter for: Lcom/android/mms/ui/MessageTextEditor;->bForceEmailMMS:Z
    invoke-static {v7, v8}, Lcom/android/mms/ui/MessageTextEditor;->access$702(Lcom/android/mms/ui/MessageTextEditor;Z)Z

    goto :goto_5
.end method

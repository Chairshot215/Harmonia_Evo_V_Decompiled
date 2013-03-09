.class Lcom/android/phone/NetworkSetting$1;
.super Landroid/os/Handler;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 161
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 163
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V
    invoke-static {v13, v12, v14}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/util/List;I)V

    goto :goto_0

    .line 168
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v13, 0x64

    invoke-virtual {v12, v13}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v12}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 171
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 172
    .local v2, ar:Landroid/os/AsyncResult;
    iget-object v12, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_1

    .line 174
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v13, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v12, v13}, Lcom/android/phone/NetworkSetting;->access$100(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 177
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded()V
    invoke-static {v12}, Lcom/android/phone/NetworkSetting;->access$200(Lcom/android/phone/NetworkSetting;)V

    goto :goto_0

    .line 183
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    iget-boolean v12, v12, Lcom/android/phone/NetworkSetting;->mIsForeground:Z

    if-eqz v12, :cond_2

    .line 184
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v13, 0x12c

    invoke-virtual {v12, v13}, Lcom/android/phone/NetworkSetting;->dismissDialog(I)V

    .line 186
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v12}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 188
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 189
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v12, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_3

    .line 191
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v13, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v12, v13}, Lcom/android/phone/NetworkSetting;->access$100(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V

    .line 197
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v12}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;)Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "network_selection"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 194
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded()V
    invoke-static {v12}, Lcom/android/phone/NetworkSetting;->access$200(Lcom/android/phone/NetworkSetting;)V

    goto :goto_1

    .line 204
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 205
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v12, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_4

    .line 207
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v13}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e01e7

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 212
    :cond_4
    iget-object v10, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    .line 213
    .local v10, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PreferredOperator;>;"
    if-eqz v10, :cond_0

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v13, ""

    #setter for: Lcom/android/phone/NetworkSetting;->mCodeList:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/phone/NetworkSetting;->access$402(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v13, ""

    #setter for: Lcom/android/phone/NetworkSetting;->mNameList:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/phone/NetworkSetting;->access$502(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    const-string v8, ""

    .local v8, name:Ljava/lang/String;
    const-string v11, ""

    .line 220
    .local v11, tempName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 221
    .local v1, act:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const/4 v13, 0x0

    #setter for: Lcom/android/phone/NetworkSetting;->mIndexList:[I
    invoke-static {v12, v13}, Lcom/android/phone/NetworkSetting;->access$602(Lcom/android/phone/NetworkSetting;[I)[I

    .line 222
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [I

    #setter for: Lcom/android/phone/NetworkSetting;->mIndexList:[I
    invoke-static {v12, v13}, Lcom/android/phone/NetworkSetting;->access$602(Lcom/android/phone/NetworkSetting;[I)[I

    .line 224
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_a

    .line 225
    const-string v8, ""

    .line 226
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PreferredOperator;

    .line 227
    .local v3, entry:Lcom/android/internal/telephony/PreferredOperator;
    if-eqz v3, :cond_5

    .line 228
    iget v1, v3, Lcom/android/internal/telephony/PreferredOperator;->act:I

    .line 229
    if-nez v1, :cond_6

    .line 230
    iget-object v11, v3, Lcom/android/internal/telephony/PreferredOperator;->operatorNumeric:Ljava/lang/String;

    .line 236
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/phone/NetworkSetting;->access$484(Lcom/android/phone/NetworkSetting;Ljava/lang/Object;)Ljava/lang/String;

    .line 237
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mIndexList:[I
    invoke-static {v12}, Lcom/android/phone/NetworkSetting;->access$600(Lcom/android/phone/NetworkSetting;)[I

    move-result-object v12

    iget v13, v3, Lcom/android/internal/telephony/PreferredOperator;->index:I

    aput v13, v12, v5

    .line 238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v13, v3, Lcom/android/internal/telephony/PreferredOperator;->operatorNumeric:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/android/phone/prefernetwork/OperatorData;->getOperatorName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 240
    if-nez v1, :cond_8

    .line 241
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "(2G)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 249
    :goto_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_5

    .line 250
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/phone/NetworkSetting;->access$584(Lcom/android/phone/NetworkSetting;Ljava/lang/Object;)Ljava/lang/String;

    .line 224
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 231
    :cond_6
    const/4 v12, 0x1

    if-ne v12, v1, :cond_7

    .line 232
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "G"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Lcom/android/internal/telephony/PreferredOperator;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 234
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "B"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Lcom/android/internal/telephony/PreferredOperator;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 242
    :cond_8
    const/4 v12, 0x1

    if-ne v12, v1, :cond_9

    .line 243
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "(3G)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 245
    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v13}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e01e6

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 257
    .end local v3           #entry:Lcom/android/internal/telephony/PreferredOperator;
    :cond_a
    new-instance v7, Landroid/content/Intent;

    const-string v12, "network_op_list"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v7, intent:Landroid/content/Intent;
    const-string v12, "code_list"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mCodeList:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v12, "name_list"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mNameList:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/phone/NetworkSetting;->access$500(Lcom/android/phone/NetworkSetting;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v13, 0x3c

    invoke-virtual {v12, v7, v13}, Lcom/android/phone/NetworkSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 267
    .end local v1           #act:I
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v5           #i:I
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #name:Ljava/lang/String;
    .end local v10           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PreferredOperator;>;"
    .end local v11           #tempName:Ljava/lang/String;
    :sswitch_4
    const-string v12, "phone"

    const-string v13, "EVENT_OP_LIST_GET_RETRY"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 269
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v12, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_f

    .line 270
    const-string v12, "phone"

    const-string v13, "get prefer op list: succeeded!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v10, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    .line 274
    .restart local v10       #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PreferredOperator;>;"
    if-eqz v10, :cond_0

    .line 277
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const/4 v13, 0x0

    #setter for: Lcom/android/phone/NetworkSetting;->mIndexList:[I
    invoke-static {v12, v13}, Lcom/android/phone/NetworkSetting;->access$602(Lcom/android/phone/NetworkSetting;[I)[I

    .line 278
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [I

    #setter for: Lcom/android/phone/NetworkSetting;->mIndexList:[I
    invoke-static {v12, v13}, Lcom/android/phone/NetworkSetting;->access$602(Lcom/android/phone/NetworkSetting;[I)[I

    .line 280
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_b

    .line 281
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v12}, Lcom/android/phone/NetworkSetting;->addOPList()V

    goto/16 :goto_0

    .line 283
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v12}, Lcom/android/phone/NetworkSetting;->access$708(Lcom/android/phone/NetworkSetting;)I

    .line 284
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mListRetry:I
    invoke-static {v12}, Lcom/android/phone/NetworkSetting;->access$700(Lcom/android/phone/NetworkSetting;)I

    move-result v12

    const/4 v13, 0x3

    if-ge v12, v13, :cond_e

    .line 285
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_d

    .line 286
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PreferredOperator;

    .line 287
    .restart local v3       #entry:Lcom/android/internal/telephony/PreferredOperator;
    if-eqz v3, :cond_c

    .line 288
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mIndexList:[I
    invoke-static {v12}, Lcom/android/phone/NetworkSetting;->access$600(Lcom/android/phone/NetworkSetting;)[I

    move-result-object v12

    iget v13, v3, Lcom/android/internal/telephony/PreferredOperator;->index:I

    aput v13, v12, v5

    .line 285
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 292
    .end local v3           #entry:Lcom/android/internal/telephony/PreferredOperator;
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mIndexList:[I
    invoke-static {v13}, Lcom/android/phone/NetworkSetting;->access$600(Lcom/android/phone/NetworkSetting;)[I

    move-result-object v13

    array-length v13, v13

    #setter for: Lcom/android/phone/NetworkSetting;->mListCount:I
    invoke-static {v12, v13}, Lcom/android/phone/NetworkSetting;->access$802(Lcom/android/phone/NetworkSetting;I)I

    .line 293
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v9, v12, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v9, Lcom/android/internal/telephony/PhoneProxy;

    .line 294
    .local v9, phoneproxy:Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "GSM"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 295
    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v4, v12

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 296
    .local v4, gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    if-eqz v4, :cond_0

    .line 297
    const/4 v5, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mListCount:I
    invoke-static {v12}, Lcom/android/phone/NetworkSetting;->access$800(Lcom/android/phone/NetworkSetting;)I

    move-result v12

    if-ge v5, v12, :cond_0

    .line 298
    add-int/lit8 v12, v5, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x384

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v5, v15}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->removePreferredOperatorList(ILandroid/os/Message;)V

    .line 297
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 304
    .end local v4           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v5           #i:I
    .end local v9           #phoneproxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_e
    const-string v12, "phone"

    const-string v13, "mListRetry == REMOVE_OP_LIST_RETRY, Stop it"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 309
    .end local v10           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PreferredOperator;>;"
    :cond_f
    const-string v12, "phone"

    const-string v13, "get prefer op list: failed!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 316
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    const-string v12, "phone"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EVENT_OP_REMOVE_ITEM"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mListCount:I
    invoke-static {v14}, Lcom/android/phone/NetworkSetting;->access$800(Lcom/android/phone/NetworkSetting;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 319
    .restart local v2       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 321
    .local v6, index:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v12}, Lcom/android/phone/NetworkSetting;->access$810(Lcom/android/phone/NetworkSetting;)I

    .line 323
    iget-object v12, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_10

    .line 324
    const-string v12, "phone"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "remove op list item : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " failed!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mRemovedError:[Z
    invoke-static {v12}, Lcom/android/phone/NetworkSetting;->access$1000(Lcom/android/phone/NetworkSetting;)[Z

    move-result-object v12

    const/4 v13, 0x1

    aput-boolean v13, v12, v6

    .line 331
    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mListCount:I
    invoke-static {v12}, Lcom/android/phone/NetworkSetting;->access$800(Lcom/android/phone/NetworkSetting;)I

    move-result v12

    if-nez v12, :cond_0

    .line 332
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v9, v12, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v9, Lcom/android/internal/telephony/PhoneProxy;

    .line 333
    .restart local v9       #phoneproxy:Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "GSM"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 334
    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v4, v12

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 335
    .restart local v4       #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    if-eqz v4, :cond_0

    .line 336
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x2bd

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPreferredOperatorList(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 327
    .end local v4           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v9           #phoneproxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_10
    const-string v12, "phone"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "remove op list item : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " succeeded!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mRemovedError:[Z
    invoke-static {v12}, Lcom/android/phone/NetworkSetting;->access$1000(Lcom/android/phone/NetworkSetting;)[Z

    move-result-object v12

    const/4 v13, 0x0

    aput-boolean v13, v12, v6

    goto :goto_7

    .line 343
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v6           #index:I
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 344
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v12, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_0

    .line 346
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v13}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e01e7

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 161
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x2bc -> :sswitch_3
        0x2bd -> :sswitch_4
        0x320 -> :sswitch_6
        0x384 -> :sswitch_5
    .end sparse-switch
.end method

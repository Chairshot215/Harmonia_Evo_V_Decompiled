.class Lcom/android/phone/HtcAdvancedSettings$MyHandler;
.super Landroid/os/Handler;
.source "HtcAdvancedSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field private lengthOfCmdHeader:I

.field private lengthOfManufacturerCode:I

.field final synthetic this$0:Lcom/android/phone/HtcAdvancedSettings;


# direct methods
.method public constructor <init>(Lcom/android/phone/HtcAdvancedSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 122
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->lengthOfCmdHeader:I

    .line 123
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->lengthOfManufacturerCode:I

    .line 120
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .parameter "msg"

    .prologue
    .line 127
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 407
    :goto_0
    :pswitch_0
    return-void

    .line 130
    :pswitch_1
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "EVENT_UPDATE_ENABLE_BUTTON !!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :pswitch_2
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "EVENT_GET_SPC_CODE !!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 137
    .local v3, ar:Landroid/os/AsyncResult;
    const-string v5, "00000400"

    .line 138
    .local v5, command:Ljava/lang/String;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 139
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "OoO ERR_NV_CMD_FAILED-ar.result == null."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_1
    const-string v17, ""

    .line 145
    .local v17, result:Ljava/lang/String;
    #calls: Lcom/android/phone/HtcAdvancedSettings;->validateStateOfNv(Ljava/lang/String;)I
    invoke-static {v5}, Lcom/android/phone/HtcAdvancedSettings;->access$000(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_1

    .line 146
    const/16 v19, 0xa

    const/16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 147
    .local v11, length:Ljava/lang/String;
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v11, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 148
    .local v10, len:I
    const/16 v19, 0xc

    mul-int/lit8 v20, v10, 0x2

    add-int/lit8 v20, v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/HtcAdvancedSettings;->doStringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 157
    .end local v10           #len:I
    .end local v11           #length:Ljava/lang/String;
    :goto_2
    iget-object v9, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 158
    .local v9, key:Ljava/lang/String;
    monitor-enter v9

    .line 160
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_3
    :try_start_1
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v19

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v19

    .line 141
    .end local v9           #key:Ljava/lang/String;
    .end local v17           #result:Ljava/lang/String;
    :cond_0
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 154
    .restart local v17       #result:Ljava/lang/String;
    :cond_1
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "OoO error to get spc code"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 161
    .restart local v9       #key:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 162
    .local v6, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 169
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v5           #command:Ljava/lang/String;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v9           #key:Ljava/lang/String;
    .end local v17           #result:Ljava/lang/String;
    :pswitch_3
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "EVENT_SET_MANUAL_NAI ID!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 171
    .restart local v3       #ar:Landroid/os/AsyncResult;
    const-string v5, "00000400"

    .line 172
    .restart local v5       #command:Ljava/lang/String;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 173
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "OoO ERR_NV_CMD_FAILED-ar.result == null."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_4
    const-string v17, ""

    .line 179
    .restart local v17       #result:Ljava/lang/String;
    #calls: Lcom/android/phone/HtcAdvancedSettings;->validateStateOfNv(Ljava/lang/String;)I
    invoke-static {v5}, Lcom/android/phone/HtcAdvancedSettings;->access$000(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_3

    .line 180
    const/16 v19, 0x8

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 181
    .restart local v11       #length:Ljava/lang/String;
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v11, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 182
    .restart local v10       #len:I
    const/16 v19, 0xa

    mul-int/lit8 v20, v10, 0x2

    add-int/lit8 v20, v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/HtcAdvancedSettings;->doStringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    #setter for: Lcom/android/phone/HtcAdvancedSettings;->mNaiId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/HtcAdvancedSettings;->access$102(Lcom/android/phone/HtcAdvancedSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/HtcAdvancedSettings;->access$200(Lcom/android/phone/HtcAdvancedSettings;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 185
    .local v18, sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "cpa_nai_id_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mNaiId:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/HtcAdvancedSettings;->access$100(Lcom/android/phone/HtcAdvancedSettings;)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 193
    .end local v10           #len:I
    .end local v11           #length:Ljava/lang/String;
    .end local v18           #sp:Landroid/content/SharedPreferences;
    :goto_5
    iget-object v9, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 194
    .restart local v9       #key:Ljava/lang/String;
    monitor-enter v9

    .line 196
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 200
    :goto_6
    :try_start_4
    monitor-exit v9

    goto/16 :goto_0

    :catchall_1
    move-exception v19

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v19

    .line 175
    .end local v9           #key:Ljava/lang/String;
    .end local v17           #result:Ljava/lang/String;
    :cond_2
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 190
    .restart local v17       #result:Ljava/lang/String;
    :cond_3
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "OoO error to set manual NAI ID"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 197
    .restart local v9       #key:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 198
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    .line 205
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v5           #command:Ljava/lang/String;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v9           #key:Ljava/lang/String;
    .end local v17           #result:Ljava/lang/String;
    :pswitch_4
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "EVENT_SET_MANUAL_NAI PWD!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 207
    .restart local v3       #ar:Landroid/os/AsyncResult;
    const-string v5, "00000400"

    .line 208
    .restart local v5       #command:Ljava/lang/String;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 209
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "OoO ERR_NV_CMD_FAILED-ar.result == null."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_7
    const-string v17, ""

    .line 215
    .restart local v17       #result:Ljava/lang/String;
    #calls: Lcom/android/phone/HtcAdvancedSettings;->validateStateOfNv(Ljava/lang/String;)I
    invoke-static {v5}, Lcom/android/phone/HtcAdvancedSettings;->access$000(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_5

    .line 216
    const/16 v19, 0xa

    const/16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 217
    .restart local v11       #length:Ljava/lang/String;
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v11, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 218
    .restart local v10       #len:I
    const/16 v19, 0xc

    mul-int/lit8 v20, v10, 0x2

    add-int/lit8 v20, v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/HtcAdvancedSettings;->doStringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 226
    .end local v10           #len:I
    .end local v11           #length:Ljava/lang/String;
    :goto_8
    iget-object v9, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 227
    .restart local v9       #key:Ljava/lang/String;
    monitor-enter v9

    .line 229
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 233
    :goto_9
    :try_start_7
    monitor-exit v9

    goto/16 :goto_0

    :catchall_2
    move-exception v19

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v19

    .line 211
    .end local v9           #key:Ljava/lang/String;
    .end local v17           #result:Ljava/lang/String;
    :cond_4
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 223
    .restart local v17       #result:Ljava/lang/String;
    :cond_5
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "OoO error to set manual NAI PWD"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 230
    .restart local v9       #key:Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 231
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_9

    .line 240
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v5           #command:Ljava/lang/String;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v9           #key:Ljava/lang/String;
    .end local v17           #result:Ljava/lang/String;
    :pswitch_5
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "EVENT_SET_ACTIVE_NAI_INDEX !!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 243
    .restart local v3       #ar:Landroid/os/AsyncResult;
    const-string v5, "00000400"

    .line 244
    .restart local v5       #command:Ljava/lang/String;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    if-nez v19, :cond_8

    .line 245
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "OoO ERR_NV_CMD_FAILED-ar.result == null."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_a
    #calls: Lcom/android/phone/HtcAdvancedSettings;->validateStateOfNv(Ljava/lang/String;)I
    invoke-static {v5}, Lcom/android/phone/HtcAdvancedSettings;->access$000(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_c

    .line 252
    const/16 v19, 0x8

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 253
    .restart local v17       #result:Ljava/lang/String;
    const-string v19, "HtcAdvancedSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "OoO active("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/HtcAdvancedSettings;->access$300(Lcom/android/phone/HtcAdvancedSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 256
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "phone type is CDMA, re-trigger the data call !!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/HtcAdvancedSettings;->access$300(Lcom/android/phone/HtcAdvancedSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v4, v19

    check-cast v4, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 258
    .local v4, cdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    iget-object v0, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    move-object/from16 v19, v0

    const-string v20, "re-trigger the data call since CPA enable"

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/DataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 263
    .end local v4           #cdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v19, v0

    const-string v20, "fourG_wimax"

    invoke-virtual/range {v19 .. v20}, Lcom/android/phone/HtcAdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/net/FourG/FourGManager;

    .local v13, mFourGManager:Lcom/htc/net/FourG/FourGManager;
    move-object v14, v13

    .line 264
    check-cast v14, Lcom/htc/net/wimax/HTCWimax4GManager;

    .line 265
    .local v14, mHTCWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;
    if-eqz v13, :cond_9

    if-eqz v14, :cond_9

    .line 266
    invoke-virtual {v13}, Lcom/htc/net/FourG/FourGManager;->get4GState()I

    move-result v7

    .line 268
    .local v7, fourGState:I
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v7, v0, :cond_7

    .line 269
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "OoO 4G State: Enabled"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v14}, Lcom/htc/net/wimax/HTCWimax4GManager;->disconnect()Z

    .line 272
    invoke-virtual {v14}, Lcom/htc/net/wimax/HTCWimax4GManager;->reconnect()Z

    .line 283
    .end local v7           #fourGState:I
    .end local v13           #mFourGManager:Lcom/htc/net/FourG/FourGManager;
    .end local v14           #mHTCWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;
    .end local v17           #result:Ljava/lang/String;
    :cond_7
    :goto_b
    iget-object v9, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 284
    .restart local v9       #key:Ljava/lang/String;
    monitor-enter v9

    .line 286
    :try_start_9
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 290
    :goto_c
    :try_start_a
    monitor-exit v9

    goto/16 :goto_0

    :catchall_3
    move-exception v19

    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v19

    .line 247
    .end local v9           #key:Ljava/lang/String;
    :cond_8
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_a

    .line 275
    .restart local v13       #mFourGManager:Lcom/htc/net/FourG/FourGManager;
    .restart local v14       #mHTCWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;
    .restart local v17       #result:Ljava/lang/String;
    :cond_9
    const-string v20, "HtcAdvancedSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mFourGManager is null:"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-nez v13, :cond_a

    const/16 v19, 0x1

    :goto_d
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "; mHTCWimax4GManager is null:"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-nez v14, :cond_b

    const/16 v19, 0x1

    :goto_e
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_a
    const/16 v19, 0x0

    goto :goto_d

    :cond_b
    const/16 v19, 0x0

    goto :goto_e

    .line 280
    .end local v13           #mFourGManager:Lcom/htc/net/FourG/FourGManager;
    .end local v14           #mHTCWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;
    .end local v17           #result:Ljava/lang/String;
    :cond_c
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "OoO error to set active index"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 287
    .restart local v9       #key:Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 288
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_c

    .line 295
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v5           #command:Ljava/lang/String;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v9           #key:Ljava/lang/String;
    :pswitch_6
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "EVENT_GET_ACTIVE_NAI_INDEX !!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 297
    .restart local v3       #ar:Landroid/os/AsyncResult;
    const-string v5, "00000400"

    .line 298
    .restart local v5       #command:Ljava/lang/String;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    if-nez v19, :cond_d

    .line 299
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "OoO ERR_NV_CMD_FAILED-ar.result == null."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_f
    #calls: Lcom/android/phone/HtcAdvancedSettings;->validateStateOfNv(Ljava/lang/String;)I
    invoke-static {v5}, Lcom/android/phone/HtcAdvancedSettings;->access$000(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_f

    .line 305
    const/16 v19, 0x8

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 306
    .restart local v17       #result:Ljava/lang/String;
    const-string v19, "HtcAdvancedSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "OoO active("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 308
    .local v12, m:Landroid/os/Message;
    const/16 v19, 0x3ee

    move/from16 v0, v19

    iput v0, v12, Landroid/os/Message;->what:I

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/HtcAdvancedSettings;->access$200(Lcom/android/phone/HtcAdvancedSettings;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 310
    .restart local v18       #sp:Landroid/content/SharedPreferences;
    const-string v19, "01"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 311
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/HtcAdvancedSettings;->access$400(Lcom/android/phone/HtcAdvancedSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 313
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "cpa_enabled_pref_key"

    const/16 v21, 0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 320
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 325
    .end local v12           #m:Landroid/os/Message;
    .end local v17           #result:Ljava/lang/String;
    .end local v18           #sp:Landroid/content/SharedPreferences;
    :goto_11
    iget-object v9, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 326
    .restart local v9       #key:Ljava/lang/String;
    monitor-enter v9

    .line 328
    :try_start_c
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 332
    :goto_12
    :try_start_d
    monitor-exit v9

    goto/16 :goto_0

    :catchall_4
    move-exception v19

    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v19

    .line 301
    .end local v9           #key:Ljava/lang/String;
    :cond_d
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_f

    .line 315
    .restart local v12       #m:Landroid/os/Message;
    .restart local v17       #result:Ljava/lang/String;
    .restart local v18       #sp:Landroid/content/SharedPreferences;
    :cond_e
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mButtonEnableSetting:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/HtcAdvancedSettings;->access$400(Lcom/android/phone/HtcAdvancedSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 317
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "cpa_enabled_pref_key"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_10

    .line 322
    .end local v12           #m:Landroid/os/Message;
    .end local v17           #result:Ljava/lang/String;
    .end local v18           #sp:Landroid/content/SharedPreferences;
    :cond_f
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "OoO error to get active index"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 329
    .restart local v9       #key:Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 330
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_12

    .line 337
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v5           #command:Ljava/lang/String;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v9           #key:Ljava/lang/String;
    :pswitch_7
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "EVENT_GET_MANUAL_NAI ID!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 339
    .restart local v3       #ar:Landroid/os/AsyncResult;
    const-string v5, "00000400"

    .line 340
    .restart local v5       #command:Ljava/lang/String;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    if-nez v19, :cond_10

    .line 341
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "ERR_NV_CMD_FAILED-ar.result == null."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_13
    const-string v17, ""

    .line 347
    .restart local v17       #result:Ljava/lang/String;
    #calls: Lcom/android/phone/HtcAdvancedSettings;->validateStateOfNv(Ljava/lang/String;)I
    invoke-static {v5}, Lcom/android/phone/HtcAdvancedSettings;->access$000(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_11

    .line 348
    const/16 v19, 0x8

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 349
    .restart local v11       #length:Ljava/lang/String;
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v11, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 350
    .restart local v10       #len:I
    const/16 v19, 0xa

    mul-int/lit8 v20, v10, 0x2

    add-int/lit8 v20, v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/HtcAdvancedSettings;->doStringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    #setter for: Lcom/android/phone/HtcAdvancedSettings;->mNaiId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/HtcAdvancedSettings;->access$102(Lcom/android/phone/HtcAdvancedSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/HtcAdvancedSettings;->access$200(Lcom/android/phone/HtcAdvancedSettings;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 353
    .restart local v18       #sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "cpa_nai_id_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v21, v0

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mNaiId:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/phone/HtcAdvancedSettings;->access$100(Lcom/android/phone/HtcAdvancedSettings;)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 361
    .end local v10           #len:I
    .end local v11           #length:Ljava/lang/String;
    .end local v18           #sp:Landroid/content/SharedPreferences;
    :goto_14
    iget-object v9, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 362
    .restart local v9       #key:Ljava/lang/String;
    monitor-enter v9

    .line 364
    :try_start_f
    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    .line 368
    :goto_15
    :try_start_10
    monitor-exit v9

    goto/16 :goto_0

    :catchall_5
    move-exception v19

    monitor-exit v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v19

    .line 343
    .end local v9           #key:Ljava/lang/String;
    .end local v17           #result:Ljava/lang/String;
    :cond_10
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    .line 358
    .restart local v17       #result:Ljava/lang/String;
    :cond_11
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "OoO error to get manual NAI ID"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 365
    .restart local v9       #key:Ljava/lang/String;
    :catch_5
    move-exception v6

    .line 366
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_11
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_15

    .line 374
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v5           #command:Ljava/lang/String;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v9           #key:Ljava/lang/String;
    .end local v17           #result:Ljava/lang/String;
    :pswitch_8
    const-string v19, "HtcAdvancedSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "EVENT_UPDATE_NOTIFICATION_CPA_SERVICE !!msg.arg1:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/HtcAdvancedSettings;->access$500(Lcom/android/phone/HtcAdvancedSettings;)Landroid/app/NotificationManager;

    move-result-object v19

    if-nez v19, :cond_12

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/HtcAdvancedSettings;->access$200(Lcom/android/phone/HtcAdvancedSettings;)Landroid/content/Context;

    move-result-object v19

    const-string v21, "notification"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/NotificationManager;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    #setter for: Lcom/android/phone/HtcAdvancedSettings;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0, v1}, Lcom/android/phone/HtcAdvancedSettings;->access$502(Lcom/android/phone/HtcAdvancedSettings;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 378
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/HtcAdvancedSettings;->access$500(Lcom/android/phone/HtcAdvancedSettings;)Landroid/app/NotificationManager;

    move-result-object v19

    if-eqz v19, :cond_14

    .line 379
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 380
    new-instance v8, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v8, it:Landroid/content/Intent;
    const-string v19, "com.android.phone"

    const-string v20, "com.android.phone.HtcAdvancedSettings"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const/high16 v19, 0x1084

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/HtcAdvancedSettings;->access$200(Lcom/android/phone/HtcAdvancedSettings;)Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x0

    const/high16 v21, 0x800

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 388
    .local v16, pending:Landroid/app/PendingIntent;
    new-instance v19, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/HtcAdvancedSettings;->access$200(Lcom/android/phone/HtcAdvancedSettings;)Landroid/content/Context;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v19

    const-wide/16 v20, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v19

    const v20, 0x7f0200ba

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/HtcAdvancedSettings;->access$200(Lcom/android/phone/HtcAdvancedSettings;)Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0e0191

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/HtcAdvancedSettings;->access$200(Lcom/android/phone/HtcAdvancedSettings;)Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0e0190

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v15

    .line 396
    .local v15, notification:Landroid/app/Notification;
    const/16 v19, 0x22

    move/from16 v0, v19

    iput v0, v15, Landroid/app/Notification;->flags:I

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/HtcAdvancedSettings;->access$500(Lcom/android/phone/HtcAdvancedSettings;)Landroid/app/NotificationManager;

    move-result-object v19

    const v20, 0x7f0200ba

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 399
    .end local v8           #it:Landroid/content/Intent;
    .end local v15           #notification:Landroid/app/Notification;
    .end local v16           #pending:Landroid/app/PendingIntent;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/HtcAdvancedSettings$MyHandler;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/HtcAdvancedSettings;->access$500(Lcom/android/phone/HtcAdvancedSettings;)Landroid/app/NotificationManager;

    move-result-object v19

    const v20, 0x7f0200ba

    invoke-virtual/range {v19 .. v20}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 402
    :cond_14
    const-string v19, "HtcAdvancedSettings"

    const-string v20, "mNotificationManager is null!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

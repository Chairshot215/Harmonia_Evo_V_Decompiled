.class Lcom/android/mms/ui/MessageListAdapter$3;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListAdapter;->updateSimSmsReadStatus(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1287
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$3;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0xad

    const/16 v12, 0x61

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1289
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v5

    .line 1290
    .local v5, smsManager:Landroid/telephony/SmsManager;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter$3;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mSimSms:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListAdapter;->access$2000(Lcom/android/mms/ui/MessageListAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_7

    .line 1291
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter$3;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mSimSms:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListAdapter;->access$2000(Lcom/android/mms/ui/MessageListAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/MessageListAdapter$SimSms;

    iget-object v6, v6, Lcom/android/mms/ui/MessageListAdapter$SimSms;->mIndexOnSim:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1293
    .local v2, index:Ljava/lang/Integer;
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v6, v12, :cond_1

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v6, v13, :cond_3

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    if-ne v6, v11, :cond_3

    .line 1296
    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter$3;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mSimSms:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListAdapter;->access$2000(Lcom/android/mms/ui/MessageListAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/MessageListAdapter$SimSms;

    iget-boolean v6, v6, Lcom/android/mms/ui/MessageListAdapter$SimSms;->mIsCdmaFormat:Z

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/telephony/SmsManager;->getMessageFromSimWithType(ZI)[B

    move-result-object v4

    .line 1302
    .local v4, record:[B
    :goto_2
    if-eqz v4, :cond_0

    .line 1305
    aget-byte v6, v4, v9

    and-int/lit16 v6, v6, 0xfd

    int-to-byte v6, v6

    aput-byte v6, v4, v9

    .line 1306
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    new-array v3, v6, [B

    .line 1307
    .local v3, pdu:[B
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v10, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1308
    const-string v6, "MessageListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mark as read in sim index : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v6, v12, :cond_2

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v6, v13, :cond_5

    .line 1311
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    if-ne v6, v11, :cond_4

    iget-object v6, p0, Lcom/android/mms/ui/MessageListAdapter$3;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    #getter for: Lcom/android/mms/ui/MessageListAdapter;->mSimSms:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListAdapter;->access$2000(Lcom/android/mms/ui/MessageListAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/MessageListAdapter$SimSms;

    iget-boolean v6, v6, Lcom/android/mms/ui/MessageListAdapter$SimSms;->mIsCdmaFormat:Z

    if-ne v6, v10, :cond_4

    .line 1313
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-byte v7, v4, v9

    invoke-virtual {v5, v9, v6, v7, v3}, Landroid/telephony/SmsManager;->updateMessageOnIcc(ZII[B)Z

    goto/16 :goto_1

    .line 1298
    .end local v3           #pdu:[B
    .end local v4           #record:[B
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/SmsManager;->getMessageFromSim(I)[B

    move-result-object v4

    .restart local v4       #record:[B
    goto :goto_2

    .line 1315
    .restart local v3       #pdu:[B
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-byte v7, v4, v9

    invoke-virtual {v5, v6, v7, v3}, Landroid/telephony/SmsManager;->updateMessageOnIcc(II[B)Z

    goto/16 :goto_1

    .line 1317
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-byte v7, v4, v9

    invoke-virtual {v5, v6, v7, v3}, Landroid/telephony/SmsManager;->updateMessageOnIcc(II[B)Z

    goto/16 :goto_1

    .line 1290
    .end local v2           #index:Ljava/lang/Integer;
    .end local v3           #pdu:[B
    .end local v4           #record:[B
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1322
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_7
    return-void
.end method

.class Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;
.super Landroid/os/AsyncTask;
.source "ManageSimMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeReadStatusTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/mms/ui/ManageSimMessages$SimSms;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 741
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/ManageSimMessages$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 741
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 741
    check-cast p1, [Lcom/android/mms/ui/ManageSimMessages$SimSms;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;->doInBackground([Lcom/android/mms/ui/ManageSimMessages$SimSms;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/mms/ui/ManageSimMessages$SimSms;)Ljava/lang/Void;
    .locals 14
    .parameter "smses"

    .prologue
    const/16 v13, 0xad

    const/16 v12, 0x61

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 746
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v5

    .line 749
    .local v5, smsManager:Landroid/telephony/SmsManager;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v7, p1

    if-ge v0, v7, :cond_9

    .line 750
    aget-object v7, p1, v0

    iget-object v7, v7, Lcom/android/mms/ui/ManageSimMessages$SimSms;->mIndexOnSim:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 752
    .local v2, index:Ljava/lang/Integer;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v7

    if-eq v7, v9, :cond_1

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v7, v12, :cond_0

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v7, v13, :cond_2

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    if-ne v7, v11, :cond_2

    .line 756
    :cond_1
    aget-object v7, p1, v0

    iget-boolean v7, v7, Lcom/android/mms/ui/ManageSimMessages$SimSms;->mIsCdmaFormat:Z

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/telephony/SmsManager;->getMessageFromSimWithType(ZI)[B

    move-result-object v4

    .line 759
    .local v4, record:[B
    :goto_2
    if-nez v4, :cond_3

    .line 760
    const-string v7, "ManageSimMessages"

    const-string v8, "getMessageFromSim() return null, can\'t update read status!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 758
    .end local v4           #record:[B
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/telephony/SmsManager;->getMessageFromSim(I)[B

    move-result-object v4

    .restart local v4       #record:[B
    goto :goto_2

    .line 763
    :cond_3
    aget-byte v7, v4, v10

    and-int/lit16 v7, v7, 0xfd

    int-to-byte v7, v7

    aput-byte v7, v4, v10

    .line 764
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    new-array v3, v7, [B

    .line 765
    .local v3, pdu:[B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    invoke-static {v4, v9, v3, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 766
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v7

    if-eq v7, v9, :cond_5

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v7, v12, :cond_4

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v7, v13, :cond_7

    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    if-ne v7, v11, :cond_7

    .line 770
    :cond_5
    aget-object v7, p1, v0

    iget-boolean v7, v7, Lcom/android/mms/ui/ManageSimMessages$SimSms;->mIsCdmaFormat:Z

    if-ne v7, v9, :cond_6

    .line 773
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-byte v8, v4, v10

    invoke-virtual {v5, v9, v7, v8, v3}, Landroid/telephony/SmsManager;->updateMessageOnIcc(ZII[B)Z

    goto :goto_1

    .line 777
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-byte v8, v4, v10

    invoke-virtual {v5, v10, v7, v8, v3}, Landroid/telephony/SmsManager;->updateMessageOnIcc(ZII[B)Z

    goto/16 :goto_1

    .line 780
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-byte v8, v4, v10

    invoke-virtual {v5, v7, v8, v3}, Landroid/telephony/SmsManager;->updateMessageOnIcc(II[B)Z

    goto/16 :goto_1

    .line 749
    .end local v2           #index:Ljava/lang/Integer;
    .end local v3           #pdu:[B
    .end local v4           #record:[B
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 788
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_9
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 789
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "read"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 790
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v7}, Lcom/android/mms/ui/ManageSimMessages;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "index_on_sim <> -1 AND Length(index_on_sim) > 0"

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 793
    iget-object v7, p0, Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    new-instance v8, Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask$1;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask$1;-><init>(Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;)V

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/ManageSimMessages;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 801
    const/4 v7, 0x0

    return-object v7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 741
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ManageSimMessages$ChangeReadStatusTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 806
    return-void
.end method

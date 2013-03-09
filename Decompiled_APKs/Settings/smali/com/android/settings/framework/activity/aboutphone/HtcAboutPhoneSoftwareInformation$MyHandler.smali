.class Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation$MyHandler;
.super Landroid/os/Handler;
.source "HtcAboutPhoneSoftwareInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mStatus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 219
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 220
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    .line 221
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 225
    iget-object v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;

    .line 226
    .local v7, status:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;
    if-nez v7, :cond_0

    .line 278
    :goto_0
    return-void

    .line 230
    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 235
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 240
    .local v0, ar:Landroid/os/AsyncResult;
    const-string v6, "Not available"

    .line 242
    .local v6, nERIVersion:Ljava/lang/String;
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v8, :cond_1

    .line 243
    const-string v8, "HtcAboutPhoneSoftwareInformation"

    const-string v9, "ERR_NV_CMD_FAILED-ar.result == null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_1
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, command:Ljava/lang/String;
    const-string v8, "HtcAboutPhoneSoftwareInformation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "command:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v8, 0x4

    const/4 v9, 0x6

    :try_start_0
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, nCMDType:Ljava/lang/String;
    const/4 v8, 0x6

    const/16 v9, 0x8

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, nCMDStatus:Ljava/lang/String;
    const/16 v8, 0x18

    const/16 v9, 0x1c

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 257
    :goto_1
    const-string v8, "00"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 258
    const-string v8, "HtcAboutPhoneSoftwareInformation"

    const-string v9, "OoO Get ERI type ok"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v5, 0x0

    .line 262
    .local v5, nERINumber:I
    const/16 v8, 0x10

    :try_start_1
    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 266
    :goto_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 267
    const-string v8, "HtcAboutPhoneSoftwareInformation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OoO eri:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    .end local v3           #nCMDStatus:Ljava/lang/String;
    .end local v4           #nCMDType:Ljava/lang/String;
    .end local v5           #nERINumber:I
    :catch_0
    move-exception v2

    .line 252
    .local v2, e:Ljava/lang/Exception;
    const-string v4, ""

    .line 253
    .restart local v4       #nCMDType:Ljava/lang/String;
    const-string v3, "11"

    .line 254
    .restart local v3       #nCMDStatus:Ljava/lang/String;
    const-string v6, "Not available"

    .line 255
    const-string v8, "HtcAboutPhoneSoftwareInformation"

    const-string v9, "Get ERI version error!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 263
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v5       #nERINumber:I
    :catch_1
    move-exception v2

    .line 264
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "HtcAboutPhoneSoftwareInformation"

    const-string v9, "OoO Integer.parseInt(nERIVersion, 16)ERROR"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 270
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #nERINumber:I
    :cond_2
    const-string v8, "HtcAboutPhoneSoftwareInformation"

    const-string v9, "OoO Get ERI status unsuccessful"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

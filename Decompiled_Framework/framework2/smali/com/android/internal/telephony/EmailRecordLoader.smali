.class Lcom/android/internal/telephony/EmailRecordLoader;
.super Landroid/os/Handler;
.source "EmailRecord.java"


# static fields
.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x3

.field static final EVENT_EMAIL_LOAD_ALL_DONE:I = 0x2

.field static final EVENT_EMAIL_LOAD_DONE:I = 0x1

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field ef:I

.field emailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/EmailRecord;",
            ">;"
        }
    .end annotation
.end field

.field mEmailPresentInIAP:Z

.field private mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field phone:Lcom/android/internal/telephony/PhoneBase;

.field recordNumber:I

.field result:Ljava/lang/Object;

.field userResponse:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/EmailRecordLoader;->ef:I

    iput-object p1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/EmailRecordLoader;->ef:I

    iput-object p1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iput-object p2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    return-void
.end method

.method private getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/EmailRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/EmailRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/EmailRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15

    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/EmailRecordLoader;->result:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    iget-object v2, v7, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/EmailRecord;

    move-object v9, v0

    iget-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get EF record size failed"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v11

    iget-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v11, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v2, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v13, v0

    array-length v2, v13

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v13, v3

    if-le v2, v3, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_4
    const/4 v2, 0x0

    aget v2, v13, v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/EmailRecordLoader;->mEmailPresentInIAP:Z

    invoke-virtual {v9, v2, v3}, Lcom/android/internal/telephony/EmailRecord;->buildEmailString(IZ)[B

    move-result-object v4

    if-nez v4, :cond_5

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "worong Email format"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/EmailRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    if-eqz v1, :cond_6

    iget v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->ef:I

    iget v3, p0, Lcom/android/internal/telephony/EmailRecordLoader;->recordNumber:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/EmailRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "phone.mIccFileHandler is null"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "phone is null"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    iget-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "update EF email record failed"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_8
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    iget-object v2, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v4, v0

    iget-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "load failed"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_9
    new-instance v9, Lcom/android/internal/telephony/EmailRecord;

    iget v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->recordNumber:I

    iget-boolean v3, p0, Lcom/android/internal/telephony/EmailRecordLoader;->mEmailPresentInIAP:Z

    invoke-direct {v9, v2, v4, v3}, Lcom/android/internal/telephony/EmailRecord;-><init>(I[BZ)V

    iput-object v9, p0, Lcom/android/internal/telephony/EmailRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    iget-object v2, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    iget-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "load failed"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->emailList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->emailList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->result:Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    :goto_2
    if-ge v12, v14, :cond_0

    new-instance v9, Lcom/android/internal/telephony/EmailRecord;

    add-int/lit8 v3, v12, 0x1

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-boolean v5, p0, Lcom/android/internal/telephony/EmailRecordLoader;->mEmailPresentInIAP:Z

    invoke-direct {v9, v3, v2, v5}, Lcom/android/internal/telephony/EmailRecord;-><init>(I[BZ)V

    iget-object v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v12, :cond_c

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v10, v2

    iget-boolean v2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->mEmailPresentInIAP:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    add-int/lit8 v10, v10, -0x2

    :cond_b
    const-string v2, "gsm.usim.email.length"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method loadAllFromEF(ILandroid/os/Message;)V
    .locals 3

    iput p1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->ef:I

    iput-object p2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/EmailRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/EmailRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "GSM"

    const-string v2, "phone.mIccFileHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "GSM"

    const-string v2, "Phone is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method loadAllFromEF(IZLandroid/os/Message;)V
    .locals 3

    iput p1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->ef:I

    iput-boolean p2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->mEmailPresentInIAP:Z

    iput-object p3, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/EmailRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/EmailRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "GSM"

    const-string v2, "phone.mIccFileHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "GSM"

    const-string v2, "Phone is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method loadFromEF(IILandroid/os/Message;)V
    .locals 3

    iput p1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->ef:I

    iput p2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->recordNumber:I

    iput-object p3, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/EmailRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/EmailRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "GSM"

    const-string v2, "phone.mIccFileHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "GSM"

    const-string v2, "Phone is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateEF(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V
    .locals 3

    iput p2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->recordNumber:I

    iput-object p4, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    iput p1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->ef:I

    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/EmailRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/EmailRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "GSM"

    const-string v2, "phone.mIccFileHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "GSM"

    const-string v2, "Phone is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateEF(IILcom/android/internal/telephony/EmailRecord;ZLandroid/os/Message;)V
    .locals 3

    iput p2, p0, Lcom/android/internal/telephony/EmailRecordLoader;->recordNumber:I

    iput-boolean p4, p0, Lcom/android/internal/telephony/EmailRecordLoader;->mEmailPresentInIAP:Z

    iput-object p5, p0, Lcom/android/internal/telephony/EmailRecordLoader;->userResponse:Landroid/os/Message;

    iput p1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->ef:I

    iget-object v1, p0, Lcom/android/internal/telephony/EmailRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/EmailRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/EmailRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "GSM"

    const-string v2, "phone.mIccFileHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "GSM"

    const-string v2, "Phone is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

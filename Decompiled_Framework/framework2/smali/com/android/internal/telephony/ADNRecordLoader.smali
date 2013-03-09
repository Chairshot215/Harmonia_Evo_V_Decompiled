.class Lcom/android/internal/telephony/ADNRecordLoader;
.super Landroid/os/Handler;
.source "HtcAdnRecord.java"


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x1

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x2

.field static final EVENT_EXT_RECORD_UPDATE:I = 0x4

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x3

.field static final LOG_TAG:Ljava/lang/String; = "HtcADNRecord"


# instance fields
.field adnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcAdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field ef:I

.field mExt1List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcExt1Record;",
            ">;"
        }
    .end annotation
.end field

.field private mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field phone:Lcom/android/internal/telephony/PhoneBase;

.field recordNumber:I

.field result:Ljava/lang/Object;

.field userResponse:Landroid/os/Message;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcExt1Record;",
            ">;",
            "Lcom/android/internal/telephony/PhoneBase;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/internal/telephony/ADNRecordLoader;->ef:I

    iput-object p2, p0, Lcom/android/internal/telephony/ADNRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iput-object p1, p0, Lcom/android/internal/telephony/ADNRecordLoader;->mExt1List:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcExt1Record;",
            ">;",
            "Lcom/android/internal/telephony/PhoneBase;",
            "Lcom/android/internal/telephony/IccFileHandler;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/internal/telephony/ADNRecordLoader;->ef:I

    iput-object p2, p0, Lcom/android/internal/telephony/ADNRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iput-object p1, p0, Lcom/android/internal/telephony/ADNRecordLoader;->mExt1List:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/internal/telephony/ADNRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    return-void
.end method

.method private getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/ADNRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ADNRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ADNRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/android/internal/telephony/ADNRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ADNRecordLoader;->result:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->userResponse:Landroid/os/Message;

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    :try_start_1
    const-string v2, "HtcADNRecord"

    const-string v3, "EVENT_EF_LINEAR_RECORD_SIZE_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    iget-object v2, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/HtcAdnRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/HtcAdnRecord;

    move-object v7, v0

    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get EF record size failed"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v10, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v15, v0

    array-length v2, v15

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v15, v3

    if-le v2, v3, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->mExt1List:Ljava/util/ArrayList;

    const/4 v3, 0x0

    aget v3, v15, v3

    invoke-virtual {v7, v2, v3}, Lcom/android/internal/telephony/HtcAdnRecord;->buildAdnString(Ljava/util/ArrayList;I)[B

    move-result-object v4

    if-nez v4, :cond_5

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "worong IAP format"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ADNRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/ADNRecordLoader;->recordNumber:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ADNRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "HtcADNRecord"

    const-string v3, "mIccFileHandler is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    const-string v2, "HtcADNRecord"

    const-string v3, "EVENT_UPDATE_RECORD_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "update EF IAP record failed"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "HtcADNRecord"

    const-string v3, "EVENT_IAP_LOAD_ALL_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object v9, v0

    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "load failed"

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->adnList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->adnList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->result:Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v16

    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    new-instance v7, Lcom/android/internal/telephony/HtcAdnRecord;

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {v7, v3, v2}, Lcom/android/internal/telephony/HtcAdnRecord;-><init>(I[B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->adnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v13, :cond_9

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v14, v2

    const/16 v2, 0xe

    if-ge v14, v2, :cond_b

    const/4 v14, 0x0

    :goto_3
    const-string v2, "gsm.usim.alpha-tag.length"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v7}, Lcom/android/internal/telephony/HtcAdnRecord;->hasExtendedRecord()Z

    move-result v2

    if-eqz v2, :cond_a

    iget v12, v7, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->mExt1List:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->mExt1List:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v12, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ADNRecordLoader;->mExt1List:Ljava/util/ArrayList;

    add-int/lit8 v3, v12, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/HtcExt1Record;

    invoke-virtual {v11}, Lcom/android/internal/telephony/HtcExt1Record;->getBytes()[B

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/HtcAdnRecord;->appendExtRecord([B)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_b
    add-int/lit8 v14, v14, -0xe

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method loadAllFromEF(ILandroid/os/Message;)V
    .locals 3

    iput p1, p0, Lcom/android/internal/telephony/ADNRecordLoader;->ef:I

    iput-object p2, p0, Lcom/android/internal/telephony/ADNRecordLoader;->userResponse:Landroid/os/Message;

    invoke-direct {p0}, Lcom/android/internal/telephony/ADNRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ADNRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "HtcADNRecord"

    const-string v2, "mIccFileHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateEF(IILcom/android/internal/telephony/HtcAdnRecord;Landroid/os/Message;)V
    .locals 3

    iput p1, p0, Lcom/android/internal/telephony/ADNRecordLoader;->ef:I

    iput p2, p0, Lcom/android/internal/telephony/ADNRecordLoader;->recordNumber:I

    iput-object p4, p0, Lcom/android/internal/telephony/ADNRecordLoader;->userResponse:Landroid/os/Message;

    invoke-direct {p0}, Lcom/android/internal/telephony/ADNRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/ADNRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "HtcADNRecord"

    const-string v2, "mIccFileHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

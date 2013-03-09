.class public abstract Lcom/android/mms/custom/CustomizedManager;
.super Ljava/lang/Object;
.source "CustomizedManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/mms/custom/CustomizedManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/android/mms/custom/CustomizedManager;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/android/mms/custom/CustomizedManager;->sInstance:Lcom/android/mms/custom/CustomizedManager;

    if-nez v0, :cond_1

    .line 16
    const-class v1, Lcom/android/mms/custom/CustomizedManager;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/android/mms/custom/CustomizedManager;->sInstance:Lcom/android/mms/custom/CustomizedManager;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/android/mms/custom/impl/CustomizedManagerImpl;

    invoke-direct {v0}, Lcom/android/mms/custom/impl/CustomizedManagerImpl;-><init>()V

    sput-object v0, Lcom/android/mms/custom/CustomizedManager;->sInstance:Lcom/android/mms/custom/CustomizedManager;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/android/mms/custom/CustomizedManager;->sInstance:Lcom/android/mms/custom/CustomizedManager;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getKddiCustomizedString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 338
    invoke-static {p1}, Lcom/android/mms/custom/CustomizedManager;->getKddiCustomizedStringResId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getKddiCustomizedStringResId(I)I
    .locals 0
    .parameter "resId"

    .prologue
    .line 341
    sparse-switch p0, :sswitch_data_0

    .line 373
    :goto_0
    :sswitch_0
    return p0

    .line 343
    :sswitch_1
    const p0, 0x7f090007

    .line 344
    goto :goto_0

    .line 346
    :sswitch_2
    const p0, 0x7f090007

    .line 347
    goto :goto_0

    .line 358
    :sswitch_3
    const p0, 0x7f09000e

    .line 359
    goto :goto_0

    .line 361
    :sswitch_4
    const p0, 0x7f09000f

    .line 362
    goto :goto_0

    .line 341
    :sswitch_data_0
    .sparse-switch
        0x7f09030a -> :sswitch_1
        0x7f09030c -> :sswitch_2
        0x7f090310 -> :sswitch_0
        0x7f090316 -> :sswitch_0
        0x7f09031c -> :sswitch_0
        0x7f090325 -> :sswitch_0
        0x7f09032b -> :sswitch_3
        0x7f09032d -> :sswitch_4
        0x7f0903d3 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getSprintCustomizedString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 381
    invoke-static {p1}, Lcom/android/mms/custom/CustomizedManager;->getSprintCustomizedStringResId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSprintCustomizedStringResId(I)I
    .locals 0
    .parameter "resId"

    .prologue
    .line 385
    sparse-switch p0, :sswitch_data_0

    .line 417
    :goto_0
    return p0

    .line 387
    :sswitch_0
    const p0, 0x7f09030b

    .line 388
    goto :goto_0

    .line 390
    :sswitch_1
    const p0, 0x7f09030d

    .line 391
    goto :goto_0

    .line 393
    :sswitch_2
    const p0, 0x7f090311

    .line 394
    goto :goto_0

    .line 396
    :sswitch_3
    const p0, 0x7f090317

    .line 397
    goto :goto_0

    .line 399
    :sswitch_4
    const p0, 0x7f09031d

    .line 400
    goto :goto_0

    .line 402
    :sswitch_5
    const p0, 0x7f09032c

    .line 403
    goto :goto_0

    .line 405
    :sswitch_6
    const p0, 0x7f09032e

    .line 406
    goto :goto_0

    .line 408
    :sswitch_7
    const p0, 0x7f0903d4

    .line 409
    goto :goto_0

    .line 411
    :sswitch_8
    const p0, 0x7f090326

    .line 412
    goto :goto_0

    .line 414
    :sswitch_9
    const p0, 0x7f09030f

    goto :goto_0

    .line 385
    :sswitch_data_0
    .sparse-switch
        0x7f09030a -> :sswitch_0
        0x7f09030c -> :sswitch_1
        0x7f09030e -> :sswitch_9
        0x7f090310 -> :sswitch_2
        0x7f090316 -> :sswitch_3
        0x7f09031c -> :sswitch_4
        0x7f090325 -> :sswitch_8
        0x7f09032b -> :sswitch_5
        0x7f09032d -> :sswitch_6
        0x7f0903d3 -> :sswitch_7
    .end sparse-switch
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 423
    invoke-static {}, Lcom/android/mms/MmsApp;->isFollowSprintCmas()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-static {p0, p1}, Lcom/android/mms/custom/CustomizedManager;->getSprintCustomizedString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 434
    :goto_0
    return-object v0

    .line 426
    :cond_0
    const/16 v0, 0xa8

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    invoke-static {p0, p1}, Lcom/android/mms/custom/CustomizedManager;->getVzwCustomizedString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 430
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEarthquakeAlert()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    invoke-static {p0, p1}, Lcom/android/mms/custom/CustomizedManager;->getKddiCustomizedString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 434
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStringResId(I)I
    .locals 1
    .parameter "resId"

    .prologue
    .line 480
    invoke-static {}, Lcom/android/mms/MmsApp;->isFollowSprintCmas()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    invoke-static {p0}, Lcom/android/mms/custom/CustomizedManager;->getSprintCustomizedStringResId(I)I

    move-result p0

    .line 491
    .end local p0
    :cond_0
    :goto_0
    return p0

    .line 483
    .restart local p0
    :cond_1
    const/16 v0, 0xa8

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 484
    invoke-static {p0}, Lcom/android/mms/custom/CustomizedManager;->getVzwCustomizedStringResId(I)I

    move-result p0

    goto :goto_0

    .line 487
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEarthquakeAlert()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-static {p0}, Lcom/android/mms/custom/CustomizedManager;->getKddiCustomizedStringResId(I)I

    move-result p0

    goto :goto_0
.end method

.method public static getVzwCustomizedString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 475
    invoke-static {p1}, Lcom/android/mms/custom/CustomizedManager;->getVzwCustomizedStringResId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVzwCustomizedStringResId(I)I
    .locals 0
    .parameter "resId"

    .prologue
    .line 439
    packed-switch p0, :pswitch_data_0

    .line 471
    :goto_0
    :pswitch_0
    return p0

    .line 441
    :pswitch_1
    const p0, 0x7f09030b

    .line 442
    goto :goto_0

    .line 444
    :pswitch_2
    const p0, 0x7f09030d

    .line 445
    goto :goto_0

    .line 447
    :pswitch_3
    const p0, 0x7f090311

    .line 448
    goto :goto_0

    .line 450
    :pswitch_4
    const p0, 0x7f09031f

    .line 451
    goto :goto_0

    .line 453
    :pswitch_5
    const p0, 0x7f090320

    .line 454
    goto :goto_0

    .line 456
    :pswitch_6
    const p0, 0x7f090321

    .line 457
    goto :goto_0

    .line 459
    :pswitch_7
    const p0, 0x7f090323

    .line 460
    goto :goto_0

    .line 462
    :pswitch_8
    const p0, 0x7f090322

    .line 463
    goto :goto_0

    .line 465
    :pswitch_9
    const p0, 0x7f090324

    .line 466
    goto :goto_0

    .line 468
    :pswitch_a
    const p0, 0x7f09031e

    goto :goto_0

    .line 439
    :pswitch_data_0
    .packed-switch 0x7f09030a
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method protected getKddiResultStCancelCompleted()I
    .locals 1

    .prologue
    .line 325
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultStErrorCNoRegister()I
    .locals 1

    .prologue
    .line 253
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultStErrorCNoUser()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultStErrorCRestricted()I
    .locals 1

    .prologue
    .line 265
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultStErrorCSuspend()I
    .locals 1

    .prologue
    .line 259
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultStErrorGenericFailure()I
    .locals 1

    .prologue
    .line 319
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultStErrorImfDoesntUse()I
    .locals 1

    .prologue
    .line 301
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultStErrorImfDoesntWork()I
    .locals 1

    .prologue
    .line 295
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultStErrorMailBoxOver()I
    .locals 1

    .prologue
    .line 307
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultStErrorOnCalling()I
    .locals 1

    .prologue
    .line 313
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultStErrorRNoRegister()I
    .locals 1

    .prologue
    .line 277
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultStErrorRNoUser()I
    .locals 1

    .prologue
    .line 271
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultStErrorRRestricted()I
    .locals 1

    .prologue
    .line 289
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultStErrorRSuspend()I
    .locals 1

    .prologue
    .line 283
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultStOk()I
    .locals 1

    .prologue
    .line 241
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultTrCancelCompleted()I
    .locals 1

    .prologue
    .line 235
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultTrErrorCNoRegister()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultTrErrorCNoUser()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultTrErrorCRestricted()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultTrErrorCSuspend()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultTrErrorGenericFailure()I
    .locals 1

    .prologue
    .line 229
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultTrErrorImfDoesntUse()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultTrErrorImfDoesntWork()I
    .locals 1

    .prologue
    .line 205
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultTrErrorImfUnexpectedOccurrence()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultTrErrorOnCalling()I
    .locals 1

    .prologue
    .line 223
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultTrErrorRNoRegister()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultTrErrorRNoUser()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultTrErrorRRestricted()I
    .locals 1

    .prologue
    .line 199
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultTrErrorRSuspend()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiResultTrOk()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiSendModeStandardAPI()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiSendModeStore()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, -0x1

    return v0
.end method

.method protected getKddiSendModeTransaction()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, -0x1

    return v0
.end method

.method public kddiCalculateMsgSize(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public kddiSendCancel(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public kddiSendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ILandroid/content/Context;)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "sendingMode"
    .parameter "context"

    .prologue
    .line 332
    return-void
.end method

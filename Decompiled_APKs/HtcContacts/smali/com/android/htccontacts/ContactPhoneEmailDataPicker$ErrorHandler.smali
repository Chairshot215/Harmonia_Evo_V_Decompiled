.class final Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;
.super Ljava/lang/Object;
.source "ContactPhoneEmailDataPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactPhoneEmailDataPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ErrorHandler"
.end annotation


# instance fields
.field public final ERROR_500_SERVER_ERROR:I

.field public final ERROR_PHONE_STATUS_AIRPLANEMODE:I

.field public final ERROR_PHONE_STATUS_EXCHANGE_NOT_SETUP_YET:I

.field public final ERROR_PHONE_STATUS_ROAMING:I

.field public final ERROR_SYSTEM_FATAL_ERROR:I

.field public final ERROR_SYSTEM_SERVICE_ERROR:I

.field public final ERROR_USER_INPUT_EMPTY:I

.field public nCountOfErrorHandler:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3464
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3465
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->nCountOfErrorHandler:I

    .line 3466
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->nCountOfErrorHandler:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->nCountOfErrorHandler:I

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->ERROR_SYSTEM_FATAL_ERROR:I

    .line 3467
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->nCountOfErrorHandler:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->nCountOfErrorHandler:I

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->ERROR_SYSTEM_SERVICE_ERROR:I

    .line 3468
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->nCountOfErrorHandler:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->nCountOfErrorHandler:I

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->ERROR_PHONE_STATUS_EXCHANGE_NOT_SETUP_YET:I

    .line 3469
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->nCountOfErrorHandler:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->nCountOfErrorHandler:I

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->ERROR_PHONE_STATUS_AIRPLANEMODE:I

    .line 3470
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->nCountOfErrorHandler:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->nCountOfErrorHandler:I

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->ERROR_PHONE_STATUS_ROAMING:I

    .line 3471
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->nCountOfErrorHandler:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->nCountOfErrorHandler:I

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->ERROR_USER_INPUT_EMPTY:I

    .line 3472
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->nCountOfErrorHandler:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->nCountOfErrorHandler:I

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->ERROR_500_SERVER_ERROR:I

    return-void
.end method


# virtual methods
.method public getDetailErrorMsg(I)Ljava/lang/String;
    .locals 1
    .parameter "code"

    .prologue
    .line 3475
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->ERROR_SYSTEM_FATAL_ERROR:I

    if-ne p1, v0, :cond_0

    .line 3476
    const-string v0, "System error"

    .line 3490
    :goto_0
    return-object v0

    .line 3477
    :cond_0
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->ERROR_SYSTEM_SERVICE_ERROR:I

    if-ne p1, v0, :cond_1

    .line 3478
    const-string v0, "Can\'t get system service"

    goto :goto_0

    .line 3479
    :cond_1
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->ERROR_PHONE_STATUS_EXCHANGE_NOT_SETUP_YET:I

    if-ne p1, v0, :cond_2

    .line 3480
    const-string v0, "You need setup exchange server first"

    goto :goto_0

    .line 3481
    :cond_2
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->ERROR_PHONE_STATUS_AIRPLANEMODE:I

    if-ne p1, v0, :cond_3

    .line 3482
    const-string v0, "Phone status: Airplane mode"

    goto :goto_0

    .line 3483
    :cond_3
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->ERROR_PHONE_STATUS_ROAMING:I

    if-ne p1, v0, :cond_4

    .line 3484
    const-string v0, "Phone status: Roaming"

    goto :goto_0

    .line 3485
    :cond_4
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->ERROR_USER_INPUT_EMPTY:I

    if-ne p1, v0, :cond_5

    .line 3486
    const-string v0, "Empty input"

    goto :goto_0

    .line 3487
    :cond_5
    iget v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$ErrorHandler;->ERROR_500_SERVER_ERROR:I

    if-ne p1, v0, :cond_6

    .line 3488
    const-string v0, "The search could not be completed. Please try again later."

    goto :goto_0

    .line 3490
    :cond_6
    const-string v0, "None define!"

    goto :goto_0
.end method

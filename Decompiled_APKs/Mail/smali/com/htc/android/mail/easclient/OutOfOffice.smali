.class public Lcom/htc/android/mail/easclient/OutOfOffice;
.super Landroid/app/Activity;
.source "OutOfOffice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;,
        Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_LENGTH_OF_TIME:I = 0x5265c00

.field private static final DIALOG_DISCARD_OOF:I = 0x66

.field private static final DIALOG_GET_SETTING:I = 0x64

.field private static final DIALOG_GET_SETTING_FAILED:I = 0x68

.field private static final DIALOG_SET_SETTING:I = 0x65

.field private static final DIALOG_SET_SETTING_FAILED:I = 0x69

.field private static final MESSAGE_GET_SETTING:I = 0x64

.field private static final MESSAGE_SET_SETTING:I = 0x65


# instance fields
.field private DEBUG:Z

.field private final OOF_OPERATION_GET:I

.field private final OOF_OPERATION_SET:I

.field private final TAG:Ljava/lang/String;

.field private accountId:J

.field private cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private endDateListner:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

.field private endTimeListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

.field private final first_year:I

.field private final last_month:I

.field private final last_monthday:I

.field private final last_year:I

.field private mAryDoing:[Ljava/lang/String;

.field private mBtnDateTimeListener:Landroid/view/View$OnClickListener;

.field private mBtnDiscard:Lcom/htc/android/mail/widget/MailFooterBarButton;

.field private mBtnEndDate:Landroid/widget/Button;

.field private mBtnEndTime:Landroid/widget/Button;

.field private mBtnListener:Landroid/view/View$OnClickListener;

.field private mBtnSave:Lcom/htc/android/mail/widget/MailFooterBarButton;

.field private mBtnStartDate:Landroid/widget/Button;

.field private mBtnStartTime:Landroid/widget/Button;

.field private mCancelled:Z

.field private mChkExternalRecipient:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mDestroy:Z

.field private mEditOofMsgListener:Landroid/text/TextWatcher;

.field private mEndTime:Landroid/text/format/Time;

.field private mEtOofMessage:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mModified:Z

.field private mReplyExternalListener:Landroid/view/View$OnClickListener;

.field private mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

.field private mSpDoing:Lcom/htc/widget/HtcSpinner;

.field private mSpinnerListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

.field private mSpinnerPos:I

.field private mStartTime:Landroid/text/format/Time;

.field private mSvcConnection:Landroid/content/ServiceConnection;

.field private startDateListner:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

.field private startTimeListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const-string v0, "OutOfOffice"

    iput-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->TAG:Ljava/lang/String;

    .line 56
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    iput-boolean v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z

    .line 70
    const/16 v0, 0x7c7

    iput v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->first_year:I

    .line 71
    const/16 v0, 0x7ee

    iput v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->last_year:I

    .line 72
    const/16 v0, 0xb

    iput v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->last_month:I

    .line 73
    const/16 v0, 0x1f

    iput v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->last_monthday:I

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J

    .line 76
    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;

    .line 79
    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnSave:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 80
    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnDiscard:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 81
    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnStartDate:Landroid/widget/Button;

    .line 82
    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnStartTime:Landroid/widget/Button;

    .line 83
    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndDate:Landroid/widget/Button;

    .line 84
    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndTime:Landroid/widget/Button;

    .line 85
    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEtOofMessage:Landroid/widget/EditText;

    .line 86
    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mSpDoing:Lcom/htc/widget/HtcSpinner;

    .line 87
    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mChkExternalRecipient:Landroid/widget/CheckBox;

    .line 88
    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mAryDoing:[Ljava/lang/String;

    .line 90
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    .line 91
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    .line 93
    iput-boolean v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mDestroy:Z

    .line 94
    iput-boolean v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mModified:Z

    .line 95
    iput-boolean v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mCancelled:Z

    .line 96
    iput v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mSpinnerPos:I

    .line 98
    new-instance v0, Lcom/htc/android/mail/easclient/OutOfOffice$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/OutOfOffice$1;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 726
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->OOF_OPERATION_GET:I

    .line 727
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->OOF_OPERATION_SET:I

    .line 728
    new-instance v0, Lcom/htc/android/mail/easclient/OutOfOffice$2;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/OutOfOffice$2;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mHandler:Landroid/os/Handler;

    .line 757
    new-instance v0, Lcom/htc/android/mail/easclient/OutOfOffice$3;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/OutOfOffice$3;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnListener:Landroid/view/View$OnClickListener;

    .line 810
    new-instance v0, Lcom/htc/android/mail/easclient/OutOfOffice$4;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/OutOfOffice$4;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEditOofMsgListener:Landroid/text/TextWatcher;

    .line 824
    new-instance v0, Lcom/htc/android/mail/easclient/OutOfOffice$5;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/OutOfOffice$5;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mSpinnerListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    .line 855
    new-instance v0, Lcom/htc/android/mail/easclient/OutOfOffice$6;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/OutOfOffice$6;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnDateTimeListener:Landroid/view/View$OnClickListener;

    .line 899
    new-instance v0, Lcom/htc/android/mail/easclient/OutOfOffice$7;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/OutOfOffice$7;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->startDateListner:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    .line 938
    new-instance v0, Lcom/htc/android/mail/easclient/OutOfOffice$8;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/OutOfOffice$8;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->endDateListner:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    .line 960
    new-instance v0, Lcom/htc/android/mail/easclient/OutOfOffice$9;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/OutOfOffice$9;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->startTimeListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    .line 982
    new-instance v0, Lcom/htc/android/mail/easclient/OutOfOffice$10;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/OutOfOffice$10;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->endTimeListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    .line 1003
    new-instance v0, Lcom/htc/android/mail/easclient/OutOfOffice$11;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/OutOfOffice$11;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mReplyExternalListener:Landroid/view/View$OnClickListener;

    .line 1026
    new-instance v0, Lcom/htc/android/mail/easclient/OutOfOffice$12;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/OutOfOffice$12;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method private EncodingDateTimeFormat(Z)Ljava/lang/String;
    .locals 9
    .parameter "bStart"

    .prologue
    .line 431
    const/4 v8, 0x0

    .line 434
    .local v8, ret:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 435
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    iget v6, v1, Landroid/text/format/Time;->year:I

    .line 436
    .local v6, year:I
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    iget v5, v1, Landroid/text/format/Time;->month:I

    .line 437
    .local v5, month:I
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    iget v4, v1, Landroid/text/format/Time;->monthDay:I

    .line 438
    .local v4, day:I
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    iget v3, v1, Landroid/text/format/Time;->hour:I

    .line 439
    .local v3, hour:I
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    iget v2, v1, Landroid/text/format/Time;->minute:I

    .line 448
    .local v2, minute:I
    :goto_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 449
    .local v0, time:Landroid/text/format/Time;
    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 450
    const-string v1, "UTC"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 451
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v8

    .line 457
    .end local v0           #time:Landroid/text/format/Time;
    .end local v2           #minute:I
    .end local v3           #hour:I
    .end local v4           #day:I
    .end local v5           #month:I
    .end local v6           #year:I
    :goto_1
    return-object v8

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    iget v6, v1, Landroid/text/format/Time;->year:I

    .line 442
    .restart local v6       #year:I
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    iget v5, v1, Landroid/text/format/Time;->month:I

    .line 443
    .restart local v5       #month:I
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    iget v4, v1, Landroid/text/format/Time;->monthDay:I

    .line 444
    .restart local v4       #day:I
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    iget v3, v1, Landroid/text/format/Time;->hour:I

    .line 445
    .restart local v3       #hour:I
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    iget v2, v1, Landroid/text/format/Time;->minute:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #minute:I
    goto :goto_0

    .line 452
    .end local v2           #minute:I
    .end local v3           #hour:I
    .end local v4           #day:I
    .end local v5           #month:I
    .end local v6           #year:I
    :catch_0
    move-exception v7

    .line 453
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 454
    const/4 v8, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/htc/android/mail/easclient/OutOfOffice;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/htc/android/mail/easclient/OutOfOffice;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mSpinnerPos:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/android/mail/easclient/OutOfOffice;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mSpinnerPos:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/android/mail/easclient/OutOfOffice;ZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/easclient/OutOfOffice;->decodingDateTimeFormat(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnStartDate:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndDate:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnStartTime:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndTime:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/android/mail/widget/MailFooterBarButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnSave:Lcom/htc/android/mail/widget/MailFooterBarButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/android/mail/eassvc/pim/IEASService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/android/mail/easclient/OutOfOffice;Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/easclient/OutOfOffice;->setButtonEnable(Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/htc/android/mail/easclient/OutOfOffice;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/android/mail/widget/MailFooterBarButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnDiscard:Lcom/htc/android/mail/widget/MailFooterBarButton;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/htc/android/mail/easclient/OutOfOffice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mModified:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/android/mail/easclient/OutOfOffice;Z)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/OutOfOffice;->EncodingDateTimeFormat(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/android/mail/easclient/OutOfOffice;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/OutOfOffice;->saveSetting()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/android/mail/easclient/OutOfOffice;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/OutOfOffice;->expandDateTimePicker(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/android/mail/easclient/OutOfOffice;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/OutOfOffice;->expandReplyEditor(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->startDateListner:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->startTimeListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->endDateListner:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->endTimeListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/android/mail/easclient/OutOfOffice;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/OutOfOffice;->getLastDate(Landroid/text/format/Time;)Landroid/text/format/Time;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/mail/easclient/OutOfOffice;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mCancelled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/android/mail/easclient/OutOfOffice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mCancelled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/android/mail/easclient/OutOfOffice;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mDestroy:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mChkExternalRecipient:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEtOofMessage:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/widget/HtcSpinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mSpDoing:Lcom/htc/widget/HtcSpinner;

    return-object v0
.end method

.method private decodingDateTimeFormat(ZLjava/lang/String;)V
    .locals 16
    .parameter "bStart"
    .parameter "strDate"

    .prologue
    .line 390
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    :goto_0
    return-void

    .line 394
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "OutOfOffice"

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "decodingDateFormat: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v12, v13, v14}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 396
    :cond_1
    :try_start_0
    const-string v2, "T"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 397
    .local v8, Date_Time:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v8, v2

    const-string v12, "-"

    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 398
    .local v9, Date_split:[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v8, v2

    const-string v12, ":"

    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 401
    .local v10, Time_split:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 402
    .local v7, year:I
    const/4 v2, 0x1

    aget-object v2, v9, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v6, v2, -0x1

    .line 403
    .local v6, month:I
    const/4 v2, 0x2

    aget-object v2, v9, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 404
    .local v5, day:I
    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 405
    .local v4, hour:I
    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 407
    .local v3, minute:I
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 408
    .local v1, time:Landroid/text/format/Time;
    const-string v2, "UTC"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 409
    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/text/format/Time;->set(IIIIII)V

    .line 410
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 412
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    iget v12, v1, Landroid/text/format/Time;->year:I

    iput v12, v2, Landroid/text/format/Time;->year:I

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    iget v12, v1, Landroid/text/format/Time;->month:I

    iput v12, v2, Landroid/text/format/Time;->month:I

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    iget v12, v1, Landroid/text/format/Time;->monthDay:I

    iput v12, v2, Landroid/text/format/Time;->monthDay:I

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    iget v12, v1, Landroid/text/format/Time;->hour:I

    iput v12, v2, Landroid/text/format/Time;->hour:I

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    iget v12, v1, Landroid/text/format/Time;->minute:I

    iput v12, v2, Landroid/text/format/Time;->minute:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 425
    .end local v1           #time:Landroid/text/format/Time;
    .end local v3           #minute:I
    .end local v4           #hour:I
    .end local v5           #day:I
    .end local v6           #month:I
    .end local v7           #year:I
    .end local v8           #Date_Time:[Ljava/lang/String;
    .end local v9           #Date_split:[Ljava/lang/String;
    .end local v10           #Time_split:[Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 426
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 419
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v1       #time:Landroid/text/format/Time;
    .restart local v3       #minute:I
    .restart local v4       #hour:I
    .restart local v5       #day:I
    .restart local v6       #month:I
    .restart local v7       #year:I
    .restart local v8       #Date_Time:[Ljava/lang/String;
    .restart local v9       #Date_split:[Ljava/lang/String;
    .restart local v10       #Time_split:[Ljava/lang/String;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    iget v12, v1, Landroid/text/format/Time;->year:I

    iput v12, v2, Landroid/text/format/Time;->year:I

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    iget v12, v1, Landroid/text/format/Time;->month:I

    iput v12, v2, Landroid/text/format/Time;->month:I

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    iget v12, v1, Landroid/text/format/Time;->monthDay:I

    iput v12, v2, Landroid/text/format/Time;->monthDay:I

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    iget v12, v1, Landroid/text/format/Time;->hour:I

    iput v12, v2, Landroid/text/format/Time;->hour:I

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    iget v12, v1, Landroid/text/format/Time;->minute:I

    iput v12, v2, Landroid/text/format/Time;->minute:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private expandDateTimePicker(Z)V
    .locals 5
    .parameter "isExpand"

    .prologue
    const v4, 0x7f09002e

    const v3, 0x7f09002a

    const v0, 0x7f090029

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 778
    if-eqz p1, :cond_0

    .line 779
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 780
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 781
    invoke-virtual {p0, v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 782
    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 784
    const v0, 0x7f090121

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 785
    const v0, 0x7f090123

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 786
    const v0, 0x7f090125

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 797
    :goto_0
    return-void

    .line 788
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 789
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 790
    invoke-virtual {p0, v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 791
    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 793
    const v0, 0x7f090121

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 794
    const v0, 0x7f090123

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 795
    const v0, 0x7f090125

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private expandReplyEditor(Z)V
    .locals 4
    .parameter "isExpand"

    .prologue
    const v3, 0x7f090127

    const v0, 0x7f090126

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 800
    if-eqz p1, :cond_0

    .line 801
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 802
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 808
    :goto_0
    return-void

    .line 805
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 806
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private getLastDate(Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 2
    .parameter "startTime"

    .prologue
    .line 1017
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1020
    .local v0, lastDate:Landroid/text/format/Time;
    const/16 v1, 0x7ee

    iput v1, v0, Landroid/text/format/Time;->year:I

    .line 1021
    const/16 v1, 0xb

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 1022
    const/16 v1, 0x1f

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 1023
    return-object v0
.end method

.method private initValue()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 213
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnStartDate:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnStartDate:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/MailCommon;->setDate(Landroid/widget/Button;JLandroid/content/Context;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndDate:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndDate:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/MailCommon;->setDate(Landroid/widget/Button;JLandroid/content/Context;)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnStartTime:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnStartTime:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/MailCommon;->setTime(Landroid/widget/Button;JLandroid/content/Context;)V

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndTime:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndTime:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/MailCommon;->setTime(Landroid/widget/Button;JLandroid/content/Context;)V

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mSpDoing:Lcom/htc/widget/HtcSpinner;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mSpDoing:Lcom/htc/widget/HtcSpinner;

    iget v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mSpinnerPos:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 219
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mChkExternalRecipient:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 221
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnSave:Lcom/htc/android/mail/widget/MailFooterBarButton;

    if-eqz v0, :cond_5

    .line 222
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mModified:Z

    if-eqz v0, :cond_7

    .line 223
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnSave:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-direct {p0, v0, v5}, Lcom/htc/android/mail/easclient/OutOfOffice;->setButtonEnable(Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V

    .line 228
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnDiscard:Lcom/htc/android/mail/widget/MailFooterBarButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnDiscard:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-direct {p0, v0, v5}, Lcom/htc/android/mail/easclient/OutOfOffice;->setButtonEnable(Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V

    .line 229
    :cond_6
    return-void

    .line 225
    :cond_7
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnSave:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-direct {p0, v0, v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->setButtonEnable(Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V

    goto :goto_0
.end method

.method private initWidget()V
    .locals 7

    .prologue
    .line 157
    iget-boolean v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "OutOfOffice"

    iget-wide v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J

    const-string v5, "> initWidget"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/OutOfOffice;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mAryDoing:[Ljava/lang/String;

    .line 167
    const v2, 0x7f090120

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcSpinner;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mSpDoing:Lcom/htc/widget/HtcSpinner;

    .line 168
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x7f030047

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mAryDoing:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 170
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x20900af

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 171
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mSpDoing:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 172
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mSpDoing:Lcom/htc/widget/HtcSpinner;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mSpinnerListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 177
    const v2, 0x7f090122

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnStartDate:Landroid/widget/Button;

    .line 178
    const v2, 0x7f09002b

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnStartTime:Landroid/widget/Button;

    .line 179
    const v2, 0x7f090124

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndDate:Landroid/widget/Button;

    .line 180
    const v2, 0x7f090030

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndTime:Landroid/widget/Button;

    .line 182
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnStartDate:Landroid/widget/Button;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnDateTimeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnStartTime:Landroid/widget/Button;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnDateTimeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndDate:Landroid/widget/Button;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnDateTimeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndTime:Landroid/widget/Button;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnDateTimeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 188
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 193
    const v2, 0x7f09006f

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/widget/MailFooterBar2Btn;

    .line 194
    .local v1, footerBar:Lcom/htc/android/mail/widget/MailFooterBar2Btn;
    invoke-virtual {v1}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getLeftButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnDiscard:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 195
    invoke-virtual {v1}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getRightButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnSave:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 196
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnSave:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const v3, 0x7f0b027e

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 197
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnDiscard:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const v3, 0x7f0b008e

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 198
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnSave:Lcom/htc/android/mail/widget/MailFooterBarButton;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnDiscard:Lcom/htc/android/mail/widget/MailFooterBarButton;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v2, 0x7f090126

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEtOofMessage:Landroid/widget/EditText;

    .line 202
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEtOofMessage:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEditOofMsgListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 204
    const v2, 0x7f090127

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mChkExternalRecipient:Landroid/widget/CheckBox;

    .line 205
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mChkExternalRecipient:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mReplyExternalListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mModified:Z

    .line 209
    iget-boolean v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "OutOfOffice"

    iget-wide v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J

    const-string v5, "< initWidget"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 210
    :cond_1
    return-void
.end method

.method private saveSetting()V
    .locals 2

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1060
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1061
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 1062
    return-void
.end method

.method private setButtonEnable(Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V
    .locals 2
    .parameter "btn"
    .parameter "isModified"

    .prologue
    const/4 v1, 0x1

    .line 461
    if-ne p2, v1, :cond_1

    invoke-virtual {p1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    invoke-virtual {p1, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->enableButton(Z)V

    .line 467
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mModified:Z

    .line 468
    return-void

    .line 463
    :cond_1
    if-nez p2, :cond_0

    .line 464
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/android/mail/widget/MailFooterBarButton;->enableButton(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/OutOfOffice;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 124
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 125
    const-string v1, "accountId"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J

    .line 127
    :cond_0
    iget-wide v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 128
    const-string v1, "OutOfOffice"

    const-string v2, "OOF cannot get accountId"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/OutOfOffice;->finish()V

    .line 154
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    iget-boolean v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "OutOfOffice"

    iget-wide v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J

    const-string v4, "> onCreate"

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 134
    :cond_3
    iput-object p0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;

    .line 135
    iput-boolean v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mDestroy:Z

    .line 136
    iput-boolean v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mCancelled:Z

    .line 137
    invoke-virtual {p0, v6}, Lcom/htc/android/mail/easclient/OutOfOffice;->requestWindowFeature(I)Z

    .line 138
    const v1, 0x7f030032

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->setContentView(I)V

    .line 140
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/OutOfOffice;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x20806a9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 142
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/OutOfOffice;->initWidget()V

    .line 143
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/OutOfOffice;->initValue()V

    .line 145
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/OutOfOffice;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 148
    const-string v1, "OutOfOffice"

    iget-wide v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J

    const-string v4, "Fail to bind EAS AppSvc!"

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/OutOfOffice;->finish()V

    .line 152
    :cond_4
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->showDialog(I)V

    .line 153
    iget-boolean v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "OutOfOffice"

    iget-wide v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J

    const-string v4, "< onCreate"

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0b02b9

    const v7, 0x7f0b0291

    const/4 v6, 0x1

    .line 331
    iget-boolean v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OutOfOffice"

    iget-wide v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateDialog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 333
    :cond_0
    const/4 v0, 0x0

    .line 334
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    packed-switch p1, :pswitch_data_0

    .line 385
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 336
    :pswitch_1
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 337
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    const v1, 0x7f0b02be

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {v0, v6}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 339
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 340
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    move-object v1, v0

    .line 341
    goto :goto_0

    .line 344
    :pswitch_2
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 345
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    const v1, 0x7f0b02bf

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 346
    invoke-virtual {v0, v6}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 347
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 348
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    move-object v1, v0

    .line 349
    goto :goto_0

    .line 352
    :pswitch_3
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b02c1

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 359
    :pswitch_4
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b02c2

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 472
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 473
    iget-boolean v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OutOfOffice"

    iget-wide v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J

    const-string v4, "onDestroy"

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 475
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mDestroy:Z

    .line 477
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->removeDialog(I)V

    .line 478
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->removeDialog(I)V

    .line 480
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/OutOfOffice;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 481
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 482
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 484
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1044
    packed-switch p1, :pswitch_data_0

    .line 1055
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 1046
    :pswitch_0
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OutOfOffice"

    iget-wide v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J

    const-string v3, "KEYCODE_BACK>"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1047
    :cond_1
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mModified:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mDestroy:Z

    if-nez v0, :cond_2

    .line 1048
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/OutOfOffice;->saveSetting()V

    .line 1049
    const/4 v0, 0x1

    goto :goto_1

    .line 1051
    :cond_2
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OutOfOffice"

    iget-wide v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J

    const-string v3, "modified: false"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 1044
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 327
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-boolean v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "OutOfOffice"

    iget-wide v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J

    const-string v4, "- onRestoreInstanceState"

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEtOofMessage:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    .line 306
    const-string v1, "replyMessage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, replyMsg:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    const-string v0, ""

    .line 310
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEtOofMessage:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 313
    .end local v0           #replyMsg:Ljava/lang/String;
    :cond_3
    const-string v1, "mDestroy"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mDestroy:Z

    .line 314
    const-string v1, "mModified"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mModified:Z

    .line 315
    const-string v1, "mSpinnerPos"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mSpinnerPos:I

    .line 317
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    const-string v2, "startYear"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->year:I

    .line 318
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    const-string v2, "startMonth"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->month:I

    .line 319
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    const-string v2, "startDay"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 320
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    const-string v2, "startHour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->hour:I

    .line 321
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    const-string v2, "startMinute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->minute:I

    .line 322
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    const-string v2, "endYear"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->year:I

    .line 323
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    const-string v2, "endMonth"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->month:I

    .line 324
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    const-string v2, "endDay"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 325
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    const-string v2, "endHour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->hour:I

    .line 326
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    const-string v2, "endMinute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->minute:I

    goto/16 :goto_0
.end method

.method protected final onResume()V
    .locals 4

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 234
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OutOfOffice"

    iget-wide v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J

    const-string v3, "- onResume: "

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 237
    :cond_0
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 16
    .parameter "state"

    .prologue
    .line 258
    if-nez p1, :cond_0

    .line 295
    :goto_0
    return-void

    .line 262
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z

    if-eqz v12, :cond_1

    const-string v12, "OutOfOffice"

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J

    const-string v15, "- onSaveInstanceState"

    invoke-static {v12, v13, v14, v15}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 263
    :cond_1
    const-string v12, "mDestroy"

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mDestroy:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    const-string v12, "mModified"

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mModified:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    const-string v12, "mSpinnerPos"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mSpinnerPos:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEtOofMessage:Landroid/widget/EditText;

    if-eqz v12, :cond_2

    .line 268
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEtOofMessage:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, replyMsg:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 270
    const-string v12, "replyMessage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .end local v6           #replyMsg:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    iget v11, v12, Landroid/text/format/Time;->year:I

    .line 275
    .local v11, startYear:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    iget v10, v12, Landroid/text/format/Time;->month:I

    .line 276
    .local v10, startMonth:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    iget v7, v12, Landroid/text/format/Time;->monthDay:I

    .line 277
    .local v7, startDay:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    iget v8, v12, Landroid/text/format/Time;->hour:I

    .line 278
    .local v8, startHour:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;

    iget v9, v12, Landroid/text/format/Time;->minute:I

    .line 279
    .local v9, startMinute:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    iget v5, v12, Landroid/text/format/Time;->year:I

    .line 280
    .local v5, endYear:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    iget v4, v12, Landroid/text/format/Time;->month:I

    .line 281
    .local v4, endMonth:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    iget v1, v12, Landroid/text/format/Time;->monthDay:I

    .line 282
    .local v1, endDay:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    iget v2, v12, Landroid/text/format/Time;->hour:I

    .line 283
    .local v2, endHour:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;

    iget v3, v12, Landroid/text/format/Time;->minute:I

    .line 285
    .local v3, endMinute:I
    const-string v12, "startYear"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    const-string v12, "startMonth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 287
    const-string v12, "startDay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    const-string v12, "startHour"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    const-string v12, "startMinute"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 290
    const-string v12, "endYear"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    const-string v12, "endMonth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 292
    const-string v12, "endDay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 293
    const-string v12, "endHour"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 294
    const-string v12, "endMinute"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public declared-synchronized oofOperation(I)V
    .locals 3
    .parameter "operation"

    .prologue
    .line 492
    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 493
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice;Lcom/htc/android/mail/easclient/OutOfOffice$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 494
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 495
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

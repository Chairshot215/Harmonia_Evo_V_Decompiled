.class public Lcom/htc/widget/HtcDatePickerDialog;
.super Lcom/htc/widget/HtcAlertDialog;
.source "HtcDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;
.implements Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final TAG:Ljava/lang/String; = "HtcDatePickerDialog"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private isAutoUpdateTitle:Z

.field isWithoutDayPicker:Z

.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

.field private mContext:Landroid/content/Context;

.field private final mDatePicker:Lcom/htc/widget/HtcDatePicker;

.field mHandler:Landroid/os/Handler;

.field mInitDatePickerDialog:Z

.field private mInitialDay:I

.field private mInitialMonth:I

.field private mInitialYear:I

.field private final mWeekDays:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;III)V
    .locals 9
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 214
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mHandler:Landroid/os/Handler;

    .line 63
    iput-boolean v8, p0, Lcom/htc/widget/HtcDatePickerDialog;->isWithoutDayPicker:Z

    .line 314
    iput-boolean v7, p0, Lcom/htc/widget/HtcDatePickerDialog;->isAutoUpdateTitle:Z

    .line 215
    iput-object p1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mContext:Landroid/content/Context;

    .line 216
    iput-object p3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCallBack:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    .line 217
    iput p4, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    .line 218
    iput p5, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    .line 219
    iput p6, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    .line 220
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 221
    .local v1, symbols:Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mWeekDays:[Ljava/lang/String;

    .line 222
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 224
    iget v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    iget v5, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    iget v6, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    invoke-direct {p0, v3, v5, v6}, Lcom/htc/widget/HtcDatePickerDialog;->updateTitle(III)V

    .line 226
    const v3, 0x104000a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3, p0}, Lcom/htc/widget/HtcDatePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 227
    const/high16 v3, 0x104

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v3, v4

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v3}, Lcom/htc/widget/HtcDatePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 228
    const v3, 0x10802be

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcDatePickerDialog;->setIcon(I)V

    .line 230
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 232
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x2090044

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 233
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcDatePickerDialog;->setView(Landroid/view/View;)V

    .line 234
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcDatePickerDialog;->setInverseBackgroundForced(Z)V

    .line 235
    const v3, 0x20200f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcDatePicker;

    iput-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    .line 236
    iget-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcDatePicker;->setRepeatEnable(Z)V

    .line 237
    iput-boolean v7, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitDatePickerDialog:Z

    .line 240
    iget v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    iget v4, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    iget v5, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/widget/HtcDatePickerDialog;->updateDateInternal(III)V

    .line 242
    iget-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v3}, Lcom/htc/widget/HtcDatePicker;->requestFocus()Z

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;IIIIIZ)V
    .locals 6
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "yearStart"
    .parameter "yearEnd"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "repeatEnable"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mHandler:Landroid/os/Handler;

    .line 63
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->isWithoutDayPicker:Z

    .line 314
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->isAutoUpdateTitle:Z

    .line 168
    iput-object p1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mContext:Landroid/content/Context;

    .line 169
    iput-object p3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCallBack:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    .line 170
    iput p6, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    .line 171
    iput p7, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    .line 172
    iput p8, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    .line 173
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 174
    .local v1, symbols:Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mWeekDays:[Ljava/lang/String;

    .line 175
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 177
    iget v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    iget v4, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    iget v5, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/widget/HtcDatePickerDialog;->updateTitle(III)V

    .line 179
    const v3, 0x104000a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3, p0}, Lcom/htc/widget/HtcDatePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 180
    const/high16 v3, 0x104

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v3, 0x0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v3}, Lcom/htc/widget/HtcDatePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 181
    const v3, 0x10802be

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcDatePickerDialog;->setIcon(I)V

    .line 183
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 185
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x2090044

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 186
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcDatePickerDialog;->setView(Landroid/view/View;)V

    .line 187
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcDatePickerDialog;->setInverseBackgroundForced(Z)V

    .line 188
    const v3, 0x20200f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcDatePicker;

    iput-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    .line 189
    iget-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v3, p4, p5}, Lcom/htc/widget/HtcDatePicker;->setYearRange(II)V

    .line 190
    iget-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v3, p9}, Lcom/htc/widget/HtcDatePicker;->setRepeatEnable(Z)V

    .line 191
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitDatePickerDialog:Z

    .line 194
    iget v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    iget v4, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    iget v5, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/widget/HtcDatePickerDialog;->updateDateInternal(III)V

    .line 196
    iget-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v3}, Lcom/htc/widget/HtcDatePicker;->requestFocus()Z

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .parameter "context"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 143
    const v2, 0x10302ec

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/widget/HtcDatePickerDialog;-><init>(Landroid/content/Context;ILcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;III)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;IIIIIZ)V
    .locals 10
    .parameter "context"
    .parameter "callBack"
    .parameter "yearStart"
    .parameter "yearEnd"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "repeatEnable"

    .prologue
    .line 126
    const v2, 0x10302ec

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/htc/widget/HtcDatePickerDialog;-><init>(Landroid/content/Context;ILcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;IIIIIZ)V

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcDatePickerDialog;->setInverseBackgroundForced(Z)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;IIIILjava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "callBack"
    .parameter "yearStart"
    .parameter "yearEnd"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dateOrder"

    .prologue
    .line 98
    const v4, 0x10302ec

    const/16 v10, 0x1e

    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v11}, Lcom/htc/widget/HtcDatePickerDialog;-><init>(Landroid/content/Context;ILcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;IIIIIZ)V

    .line 100
    iget-object v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcDatePicker;->setPickersOrder(Ljava/lang/String;)V

    .line 103
    :cond_0
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/HtcDatePickerDialog;->updateTitleWithoutDay(II)V

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->isWithoutDayPicker:Z

    .line 105
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcDatePickerDialog;->setInverseBackgroundForced(Z)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcDatePickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcDatePickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcDatePickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcDatePickerDialog;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcDatePickerDialog;->updateDateInternal(III)V

    return-void
.end method

.method private adjustDayNumber(III)V
    .locals 6
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 436
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 437
    .local v0, cal:Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2}, Ljava/util/Calendar;->set(III)V

    .line 438
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 440
    .local v1, max:I
    if-le p3, v1, :cond_0

    .line 441
    move p3, v1

    .line 444
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    .line 445
    iput p2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    .line 446
    iput p3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    .line 447
    iget-object v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/htc/widget/HtcDatePickerDialog$2;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcDatePickerDialog$2;-><init>(Lcom/htc/widget/HtcDatePickerDialog;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 454
    return-void
.end method

.method private parseEventUsingCalendar(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 13
    .parameter "timeInRfc3339"
    .parameter "calendar"

    .prologue
    const/16 v12, 0xe

    const/16 v4, 0xc

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 362
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal RFC3339 format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_0
    const-string v10, ""

    .line 367
    .local v10, processStr:Ljava/lang/String;
    const-string v0, "T"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 368
    .local v8, indexOfT:I
    if-lez v8, :cond_2

    .line 369
    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 375
    :goto_0
    const-string v0, "-"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 383
    .local v11, splitStr:[Ljava/lang/String;
    array-length v9, v11

    .line 384
    .local v9, numOfItem:I
    const/4 v7, 0x0

    .line 385
    .local v7, hasYearInfo:Z
    if-ne v9, v6, :cond_3

    .line 386
    aget-object v0, v11, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x1

    aget-object v0, v11, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    aget-object v0, v11, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object v0, p2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 391
    invoke-virtual {p2, v12, v5}, Ljava/util/Calendar;->set(II)V

    .line 392
    const/4 v7, 0x1

    .line 406
    :cond_1
    :goto_1
    return v7

    .line 372
    .end local v7           #hasYearInfo:Z
    .end local v9           #numOfItem:I
    .end local v11           #splitStr:[Ljava/lang/String;
    :cond_2
    move-object v10, p1

    goto :goto_0

    .line 394
    .restart local v7       #hasYearInfo:Z
    .restart local v9       #numOfItem:I
    .restart local v11       #splitStr:[Ljava/lang/String;
    :cond_3
    const/4 v0, 0x4

    if-ne v9, v0, :cond_1

    .line 398
    const/16 v1, 0x7b2

    aget-object v0, v11, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    aget-object v0, v11, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object v0, p2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 403
    invoke-virtual {p2, v12, v5}, Ljava/util/Calendar;->set(II)V

    .line 404
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private updateDate()V
    .locals 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/widget/HtcDatePickerDialog$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcDatePickerDialog$1;-><init>(Lcom/htc/widget/HtcDatePickerDialog;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 290
    return-void
.end method

.method private updateDateInternal(III)V
    .locals 4
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    iget v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    iget v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    iget v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/htc/widget/HtcDatePicker;->init(IIILcom/htc/widget/HtcDatePicker$OnDateChangedListener;)V

    .line 249
    return-void
.end method

.method private updateTitle(III)V
    .locals 7
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    const/4 v6, 0x1

    .line 337
    iget-boolean v4, p0, Lcom/htc/widget/HtcDatePickerDialog;->isAutoUpdateTitle:Z

    if-nez v4, :cond_0

    .line 359
    :goto_0
    return-void

    .line 339
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, monthStr:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, dayStr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 344
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 345
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, dateStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0, v0, v4}, Lcom/htc/widget/HtcDatePickerDialog;->parseEventUsingCalendar(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 349
    const-string v2, ""

    .line 350
    .local v2, format:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/widget/HtcDatePickerDialog;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_4

    .line 351
    iget-object v4, p0, Lcom/htc/widget/HtcDatePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 355
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 356
    const-string v2, "EE, MMM dd, yyyy"

    .line 358
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-super {p0, v4}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 353
    :cond_4
    const-string v4, "HtcDatePickerDialog"

    const-string v5, "mContext is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateTitleWithoutDay(II)V
    .locals 3
    .parameter "year"
    .parameter "month"

    .prologue
    .line 321
    iget-boolean v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->isAutoUpdateTitle:Z

    if-nez v1, :cond_0

    .line 329
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 324
    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 325
    const-string v0, ""

    .line 326
    .local v0, format:Ljava/lang/String;
    const-string v0, "MMM, yyyy"

    .line 328
    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCallBack:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcDatePicker;->clearFocus()V

    .line 296
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCallBack:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    iget-object v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcDatePicker;->getCurrentYear()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v3}, Lcom/htc/widget/HtcDatePicker;->getCurrentMonth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v4}, Lcom/htc/widget/HtcDatePicker;->getCurrentDay()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;->onDateSet(Lcom/htc/widget/HtcDatePicker;III)V

    .line 299
    :cond_0
    return-void
.end method

.method public onDataSet(Lcom/htc/widget/HtcNumberPicker;I)V
    .locals 3
    .parameter "target"
    .parameter "data"

    .prologue
    .line 457
    const-string v0, "HtcDatePickerDialog"

    const-string v1, "onDataSet >>> "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    if-eqz p1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcDatePicker;->getCurrentYear()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcDatePicker;->getCurrentMonth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcDatePicker;->getCurrentDay()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/widget/HtcDatePickerDialog;->adjustDayNumber(III)V

    .line 463
    iget v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcDatePicker;->getCurrentYear()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcDatePicker;->getCurrentDay()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcDatePicker;->getCurrentDay()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 464
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->isWithoutDayPicker:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcDatePicker;->getCurrentYear()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcDatePicker;->getCurrentMonth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcDatePicker;->getCurrentDay()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/widget/HtcDatePickerDialog;->updateTitle(III)V

    .line 469
    :cond_1
    :goto_0
    return-void

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcDatePicker;->getCurrentYear()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcDatePicker;->getCurrentMonth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/HtcDatePickerDialog;->updateTitleWithoutDay(II)V

    goto :goto_0
.end method

.method public onDateChanged(Lcom/htc/widget/HtcDatePicker;III)V
    .locals 1
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->isWithoutDayPicker:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2, p3, p4}, Lcom/htc/widget/HtcDatePickerDialog;->updateTitle(III)V

    .line 432
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/htc/widget/HtcDatePickerDialog;->updateTitleWithoutDay(II)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 420
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 421
    const-string v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 422
    .local v2, year:I
    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 423
    .local v1, month:I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 424
    .local v0, day:I
    iget-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/htc/widget/HtcDatePicker;->init(IIILcom/htc/widget/HtcDatePicker$OnDateChangedListener;)V

    .line 426
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 411
    invoke-super {p0}, Lcom/htc/widget/HtcAlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 412
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcDatePicker;->getCurrentYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 413
    const-string v1, "month"

    iget-object v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcDatePicker;->getCurrentMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 414
    const-string v1, "day"

    iget-object v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcDatePicker;->getCurrentDay()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->isAutoUpdateTitle:Z

    .line 318
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 319
    return-void
.end method

.method public updateDate(III)V
    .locals 2
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 303
    iput p1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    .line 304
    iput p2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    .line 305
    iput p3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    .line 307
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    iget v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcDatePicker;->setCurrentYear(I)V

    .line 308
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    iget v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcDatePicker;->setCurrentMonth(I)V

    .line 309
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    iget v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(I)V

    .line 311
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, p1, v0, p3}, Lcom/htc/widget/HtcDatePickerDialog;->updateTitle(III)V

    .line 313
    return-void
.end method

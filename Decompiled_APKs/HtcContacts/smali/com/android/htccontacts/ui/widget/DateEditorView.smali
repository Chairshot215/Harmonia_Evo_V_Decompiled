.class public Lcom/android/htccontacts/ui/widget/DateEditorView;
.super Landroid/widget/RelativeLayout;
.source "DateEditorView.java"

# interfaces
.implements Lcom/android/htccontacts/model/Editor;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/htccontacts/ui/widget/EditorElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;,
        Lcom/android/htccontacts/ui/widget/DateEditorView$EditorDateSetListener;
    }
.end annotation


# static fields
.field protected static final INPUT_TYPE_CUSTOM:I = 0x2001

.field protected static final RES_FIELD:I = 0x7f030047

.field protected static final RES_LABEL_ITEM:I = 0x20900ad

.field protected static TAG:Ljava/lang/String; = null

.field private static final YEAR_BEGIN:I = 0x76e

.field private static final YEAR_END:I = 0x833


# instance fields
.field private DATA_PICK_HINT:I

.field private final DEBUG:Z

.field protected mButton:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field protected mDate:Ljava/lang/String;

.field private mDateDialog:Lcom/htc/widget/HtcDatePickerDialog;

.field protected mDelete:Landroid/view/View;

.field protected mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

.field protected mHideOptional:Z

.field private mHtcEventData:Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mKind:Lcom/android/htccontacts/model/DataKind;

.field protected mLabel:Landroid/widget/TextView;

.field protected mListener:Lcom/android/htccontacts/model/Editor$EditorListener;

.field protected mMore:Landroid/view/View;

.field private mPendingType:Lcom/android/htccontacts/model/AccountType$EditType;

.field protected mState:Lcom/android/htccontacts/model/EntityDelta;

.field protected mType:Lcom/android/htccontacts/model/AccountType$EditType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "DateEditorView"

    sput-object v0, Lcom/android/htccontacts/ui/widget/DateEditorView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->DEBUG:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mHideOptional:Z

    .line 76
    const v0, 0x7f0a01bc

    iput v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->DATA_PICK_HINT:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mCalendar:Ljava/util/Calendar;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->DEBUG:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mHideOptional:Z

    .line 76
    const v0, 0x7f0a01bc

    iput v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->DATA_PICK_HINT:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mCalendar:Ljava/util/Calendar;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/ui/widget/DateEditorView;)Lcom/android/htccontacts/model/AccountType$EditType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mPendingType:Lcom/android/htccontacts/model/AccountType$EditType;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/htccontacts/ui/widget/DateEditorView;Lcom/android/htccontacts/model/AccountType$EditType;)Lcom/android/htccontacts/model/AccountType$EditType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mPendingType:Lcom/android/htccontacts/model/AccountType$EditType;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ui/widget/DateEditorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/DateEditorView;->rebuildLabel()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ui/widget/DateEditorView;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/DateEditorView;->createCustomDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private bindData(IIILcom/android/htccontacts/model/EntityDelta;)Ljava/lang/String;
    .locals 20
    .parameter "year"
    .parameter "month"
    .parameter "monthday"
    .parameter "state"

    .prologue
    .line 478
    invoke-virtual/range {p4 .. p4}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    .line 479
    .local v15, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const/4 v12, 0x0

    .line 480
    .local v12, timeString:Ljava/lang/String;
    const-string v17, "account_type"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 481
    .local v14, type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 482
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/widget/DateEditorView;->mCalendar:Ljava/util/Calendar;

    .line 484
    :cond_0
    if-eqz v14, :cond_1

    const-string v17, "com.google"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 485
    new-instance v17, Ljava/lang/Integer;

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v16

    .line 486
    .local v16, yearStr:Ljava/lang/String;
    new-instance v17, Ljava/lang/Integer;

    add-int/lit8 v18, p2, 0x64

    add-int/lit8 v18, v18, 0x1

    invoke-direct/range {v17 .. v18}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 487
    .local v9, monthStr:Ljava/lang/String;
    new-instance v17, Ljava/lang/Integer;

    add-int/lit8 v18, p3, 0x64

    invoke-direct/range {v17 .. v18}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 488
    .local v6, dayStr:Ljava/lang/String;
    const-string v17, "%s-%s-%s"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v16, v18, v19

    const/16 v19, 0x1

    aput-object v9, v18, v19

    const/16 v19, 0x2

    aput-object v6, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 511
    .end local v6           #dayStr:Ljava/lang/String;
    .end local v9           #monthStr:Ljava/lang/String;
    .end local v16           #yearStr:Ljava/lang/String;
    :goto_0
    return-object v12

    .line 493
    :cond_1
    const-string v17, "UTC"

    invoke-static/range {v17 .. v17}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 496
    .local v4, UTC:Ljava/util/TimeZone;
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v13

    .line 497
    .local v13, timezone:Ljava/util/TimeZone;
    invoke-static {v13}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 498
    .local v5, calendar:Ljava/util/Calendar;
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 499
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 500
    .local v7, millonSecond:J
    invoke-virtual {v13, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v11

    .line 502
    .local v11, timeOffset:I
    new-instance v10, Landroid/text/format/Time;

    invoke-virtual {v13}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 503
    .local v10, time:Landroid/text/format/Time;
    move/from16 v0, p3

    move/from16 v1, p2

    move/from16 v2, p1

    invoke-virtual {v10, v0, v1, v2}, Landroid/text/format/Time;->set(III)V

    .line 504
    div-int/lit16 v0, v11, 0x3e8

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    iput-wide v0, v10, Landroid/text/format/Time;->gmtoff:J

    .line 507
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v12

    .line 508
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private createCustomDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 292
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 293
    .local v1, customType:Landroid/widget/EditText;
    const/16 v2, 0x2001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 294
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 296
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 297
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f0a0163

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 298
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 300
    const v2, 0x104000a

    new-instance v3, Lcom/android/htccontacts/ui/widget/DateEditorView$1;

    invoke-direct {v3, p0, v1}, Lcom/android/htccontacts/ui/widget/DateEditorView$1;-><init>(Lcom/android/htccontacts/ui/widget/DateEditorView;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 314
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 316
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method

.method private createDatePickerDialog(III)Lcom/htc/widget/HtcDatePickerDialog;
    .locals 9
    .parameter "year"
    .parameter "month"
    .parameter "monthDay"

    .prologue
    .line 580
    new-instance v0, Lcom/htc/widget/HtcDatePickerDialog;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/DateEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/htccontacts/ui/widget/DateEditorView$EditorDateSetListener;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/ui/widget/DateEditorView$EditorDateSetListener;-><init>(Lcom/android/htccontacts/ui/widget/DateEditorView;)V

    const/16 v3, 0x76e

    const/16 v4, 0x833

    const/4 v8, 0x1

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/htc/widget/HtcDatePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;IIIIIZ)V

    return-object v0
.end method

.method private dataAction()V
    .locals 6

    .prologue
    .line 517
    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mDate:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/htccontacts/ui/widget/DateEditorView;->parseData(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 518
    .local v0, cal:Ljava/util/Calendar;
    const/16 v4, 0x7b2

    .line 519
    .local v4, year:I
    const/4 v3, 0x0

    .line 520
    .local v3, month:I
    const/4 v1, 0x1

    .line 521
    .local v1, day:I
    if-eqz v0, :cond_0

    .line 522
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 523
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 524
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 527
    :cond_0
    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mHtcEventData:Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;

    if-eqz v5, :cond_1

    .line 528
    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mHtcEventData:Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;

    iget v4, v5, Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;->year:I

    .line 529
    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mHtcEventData:Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;

    iget v3, v5, Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;->month:I

    .line 530
    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mHtcEventData:Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;

    iget v1, v5, Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;->day:I

    .line 533
    :cond_1
    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mDateDialog:Lcom/htc/widget/HtcDatePickerDialog;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mDateDialog:Lcom/htc/widget/HtcDatePickerDialog;

    invoke-virtual {v5}, Lcom/htc/widget/HtcDatePickerDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 534
    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mDateDialog:Lcom/htc/widget/HtcDatePickerDialog;

    invoke-virtual {v5}, Lcom/htc/widget/HtcDatePickerDialog;->dismiss()V

    .line 538
    :cond_2
    :try_start_0
    invoke-direct {p0, v4, v3, v1}, Lcom/android/htccontacts/ui/widget/DateEditorView;->createDatePickerDialog(III)Lcom/htc/widget/HtcDatePickerDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mDateDialog:Lcom/htc/widget/HtcDatePickerDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_0
    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mDateDialog:Lcom/htc/widget/HtcDatePickerDialog;

    if-eqz v5, :cond_3

    .line 543
    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mDateDialog:Lcom/htc/widget/HtcDatePickerDialog;

    invoke-virtual {v5}, Lcom/htc/widget/HtcDatePickerDialog;->show()V

    .line 567
    :cond_3
    return-void

    .line 539
    :catch_0
    move-exception v2

    .line 540
    .local v2, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mDateDialog:Lcom/htc/widget/HtcDatePickerDialog;

    goto :goto_0
.end method

.method private generateFormat3339DateString(Ljava/util/Calendar;IIILcom/android/htccontacts/model/EntityDelta;Z)Ljava/lang/String;
    .locals 8
    .parameter "calendar"
    .parameter "year"
    .parameter "month"
    .parameter "monthday"
    .parameter "state"
    .parameter "isIncludungTimezone"

    .prologue
    .line 456
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 457
    .local v5, timezone:Ljava/util/TimeZone;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 458
    .local v0, millonSecond:J
    invoke-virtual {v5, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    .line 459
    .local v4, timeOffset:I
    new-instance v3, Landroid/text/format/Time;

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 461
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, p4, p3, p2}, Landroid/text/format/Time;->set(III)V

    .line 462
    div-int/lit16 v6, v4, 0x3e8

    int-to-long v6, v6

    iput-wide v6, v3, Landroid/text/format/Time;->gmtoff:J

    .line 463
    const/4 v2, 0x0

    .line 464
    .local v2, resultString:Ljava/lang/String;
    if-eqz p6, :cond_0

    .line 465
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v2

    .line 470
    :goto_0
    return-object v2

    .line 468
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private generateFormat3339DateString(Ljava/util/Calendar;Lcom/android/htccontacts/model/EntityDelta;Z)Ljava/lang/String;
    .locals 12
    .parameter "calendar"
    .parameter "state"
    .parameter "isIncludungTimezone"

    .prologue
    const/4 v11, 0x1

    .line 436
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 437
    .local v7, timezone:Ljava/util/TimeZone;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 438
    .local v0, millonSecond:J
    invoke-virtual {v7, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    .line 439
    .local v6, timeOffset:I
    new-instance v5, Landroid/text/format/Time;

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 440
    .local v5, time:Landroid/text/format/Time;
    const/4 v9, 0x5

    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 441
    .local v3, monthday:I
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 442
    .local v2, month:I
    invoke-virtual {p1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 443
    .local v8, year:I
    invoke-virtual {v5, v3, v2, v8}, Landroid/text/format/Time;->set(III)V

    .line 444
    div-int/lit16 v9, v6, 0x3e8

    int-to-long v9, v9

    iput-wide v9, v5, Landroid/text/format/Time;->gmtoff:J

    .line 445
    const/4 v4, 0x0

    .line 446
    .local v4, resultString:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 447
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v4

    .line 452
    :goto_0
    return-object v4

    .line 450
    :cond_0
    invoke-virtual {v5, v11}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getShowDateString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3
    .parameter "calendar"

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/DateEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/util/ContactsUtils;->getDateCompleteString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private obtainCalendar(IIILcom/android/htccontacts/model/EntityDelta;)Ljava/util/Calendar;
    .locals 3
    .parameter "year"
    .parameter "month"
    .parameter "monthday"
    .parameter "state"

    .prologue
    .line 429
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 430
    .local v1, timezone:Ljava/util/TimeZone;
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 431
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 432
    return-object v0
.end method

.method private obtainHtcEventData(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;)Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;
    .locals 13
    .parameter "entry"
    .parameter "state"

    .prologue
    const/4 v9, 0x0

    const/4 v12, -0x1

    .line 676
    const-string v10, "_id"

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v10, v11}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 677
    .local v2, id:I
    if-ne v2, v12, :cond_1

    move-object v0, v9

    .line 703
    :cond_0
    :goto_0
    return-object v0

    .line 680
    :cond_1
    const/4 v0, 0x0

    .line 681
    .local v0, data:Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;
    const-string v10, "vnd.android.cursor.item/htc_event_v2"

    invoke-virtual {p2, v10}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 682
    .local v8, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v8, :cond_0

    .line 683
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 684
    .local v7, v:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-eqz v7, :cond_2

    .line 687
    const-string v10, "data3"

    invoke-virtual {v7, v10}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 688
    .local v6, ref_obj:Ljava/lang/Long;
    if-eqz v6, :cond_2

    .line 691
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 692
    .local v4, ref_id:J
    int-to-long v10, v2

    cmp-long v10, v4, v10

    if-nez v10, :cond_2

    .line 693
    new-instance v0, Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;

    .end local v0           #data:Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;
    invoke-direct {v0, v9}, Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;-><init>(Lcom/android/htccontacts/ui/widget/DateEditorView$1;)V

    .line 694
    .restart local v0       #data:Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;
    const-string v9, "data12"

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v9, v10}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v0, Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;->year:I

    .line 695
    const-string v9, "data13"

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v9, v10}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v0, Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;->month:I

    .line 696
    const-string v9, "data14"

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v9, v10}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v0, Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;->day:I

    .line 697
    const-string v9, "data4"

    invoke-virtual {v7, v9}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 698
    .local v3, obj:Ljava/lang/Long;
    if-nez v3, :cond_3

    const-wide/16 v9, 0x0

    :goto_1
    iput-wide v9, v0, Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;->millonSecond:J

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_1
.end method

.method private parseData(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .parameter "date"

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, calendar:Ljava/util/Calendar;
    if-eqz p1, :cond_0

    .line 414
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 415
    invoke-static {p1, v0}, Lcom/htc/util/contacts/ContactsUtility;->parseEventUsingCalendar(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 417
    :cond_0
    return-object v0
.end method

.method private rebuildLabel()V
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mLabel:Landroid/widget/TextView;

    const v2, 0x7f0a016e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 143
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    iget-object v1, v1, Lcom/android/htccontacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    iget-object v2, v2, Lcom/android/htccontacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, customText:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    .end local v0           #customText:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    iget v2, v2, Lcom/android/htccontacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private rebuildValues()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/htccontacts/ui/widget/DateEditorView;->setValues(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 153
    return-void
.end method


# virtual methods
.method public createLabelDialog()Landroid/app/Dialog;
    .locals 9

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    invoke-static {v1, v2, v3}, Lcom/android/htccontacts/model/EntityModifier;->getValidTypes(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/AccountType$EditType;)Ljava/util/ArrayList;

    move-result-object v4

    .line 329
    .local v4, validTypes:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType$EditType;>;"
    new-instance v8, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mContext:Landroid/content/Context;

    const v2, 0x103000c

    invoke-direct {v8, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 331
    .local v8, dialogContext:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v8}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 333
    .local v5, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/htccontacts/ui/widget/DateEditorView$2;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mContext:Landroid/content/Context;

    const v3, 0x20900ad

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/ui/widget/DateEditorView$2;-><init>(Lcom/android/htccontacts/ui/widget/DateEditorView;Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;)V

    .line 348
    .local v0, typeAdapter:Landroid/widget/ListAdapter;
    new-instance v7, Lcom/android/htccontacts/ui/widget/DateEditorView$3;

    invoke-direct {v7, p0, v4}, Lcom/android/htccontacts/ui/widget/DateEditorView$3;-><init>(Lcom/android/htccontacts/ui/widget/DateEditorView;Ljava/util/List;)V

    .line 369
    .local v7, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 370
    .local v6, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0a015c

    invoke-virtual {v6, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 371
    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 372
    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public getElementType()I
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 379
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/DateEditorView;->createLabelDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 383
    :sswitch_1
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/DateEditorView;->dataAction()V

    goto :goto_0

    .line 388
    :sswitch_2
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    .line 391
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/DateEditorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 392
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 394
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mListener:Lcom/android/htccontacts/model/Editor$EditorListener;

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mListener:Lcom/android/htccontacts/model/Editor$EditorListener;

    invoke-interface {v1, p0}, Lcom/android/htccontacts/model/Editor$EditorListener;->onDeleted(Lcom/android/htccontacts/model/Editor;)V

    goto :goto_0

    .line 401
    .end local v0           #parent:Landroid/view/ViewGroup;
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mHideOptional:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mHideOptional:Z

    .line 402
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/DateEditorView;->rebuildValues()V

    goto :goto_0

    .line 401
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 377
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070002 -> :sswitch_1
        0x7f0700c7 -> :sswitch_0
        0x7f0700c8 -> :sswitch_2
        0x7f0700c9 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 658
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 659
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mDateDialog:Lcom/htc/widget/HtcDatePickerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mDateDialog:Lcom/htc/widget/HtcDatePickerDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcDatePickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mDateDialog:Lcom/htc/widget/HtcDatePickerDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcDatePickerDialog;->dismiss()V

    .line 662
    :cond_0
    return-void
.end method

.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "column"
    .parameter "value"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0, p1, p2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/DateEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 97
    const v0, 0x7f0700c7

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/DateEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mLabel:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v0, 0x7f0700c8

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/DateEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mDelete:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v0, 0x7f0700c9

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/DateEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mMore:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mMore:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/DateEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mButton:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method public requestFocusEditableView()V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 668
    :cond_0
    return-void
.end method

.method setDate(IIILcom/android/htccontacts/model/EntityDelta;)V
    .locals 19
    .parameter "year"
    .parameter "month"
    .parameter "monthday"
    .parameter "state"

    .prologue
    .line 591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mHtcEventData:Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;

    if-nez v3, :cond_0

    .line 592
    new-instance v3, Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;-><init>(Lcom/android/htccontacts/ui/widget/DateEditorView$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mHtcEventData:Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;

    .line 594
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mHtcEventData:Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;

    move/from16 v0, p1

    iput v0, v3, Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;->year:I

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mHtcEventData:Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;

    move/from16 v0, p2

    iput v0, v3, Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;->month:I

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mHtcEventData:Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;

    move/from16 v0, p3

    iput v0, v3, Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;->day:I

    .line 600
    const/4 v11, 0x0

    .line 601
    .local v11, dateString:Ljava/lang/String;
    const/4 v14, 0x0

    .line 602
    .local v14, isPutMillon:Z
    invoke-direct/range {p0 .. p4}, Lcom/android/htccontacts/ui/widget/DateEditorView;->obtainCalendar(IIILcom/android/htccontacts/model/EntityDelta;)Ljava/util/Calendar;

    move-result-object v4

    .line 603
    .local v4, calendar:Ljava/util/Calendar;
    invoke-virtual/range {p4 .. p4}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v18

    .line 605
    .local v18, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mCalendar:Ljava/util/Calendar;

    if-nez v3, :cond_1

    .line 606
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mCalendar:Ljava/util/Calendar;

    .line 608
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mCalendar:Ljava/util/Calendar;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 612
    const-string v3, "account_type"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 613
    .local v17, type:Ljava/lang/String;
    if-eqz v17, :cond_5

    const-string v3, "com.htc.android.mail.eas"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.htc.android.pcsc"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 615
    :cond_2
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/htccontacts/ui/widget/DateEditorView;->generateFormat3339DateString(Ljava/util/Calendar;IIILcom/android/htccontacts/model/EntityDelta;Z)Ljava/lang/String;

    move-result-object v11

    .line 617
    const/4 v14, 0x1

    .line 625
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v3, v3, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/htccontacts/model/AccountType$EditField;

    .line 626
    .local v12, field:Lcom/android/htccontacts/model/AccountType$EditField;
    iget-object v10, v12, Lcom/android/htccontacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 627
    .local v10, column:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/htccontacts/ui/widget/DateEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .end local v10           #column:Ljava/lang/String;
    .end local v12           #field:Lcom/android/htccontacts/model/AccountType$EditField;
    :cond_3
    if-eqz v14, :cond_4

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    .line 633
    .local v15, millions:J
    const-string v3, "data12"

    new-instance v5, Ljava/lang/Long;

    move-wide v0, v15

    invoke-direct {v5, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/htccontacts/ui/widget/DateEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    .end local v15           #millions:J
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ui/widget/DateEditorView;->rebuildValues()V

    .line 638
    return-void

    .line 620
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_5
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/htccontacts/ui/widget/DateEditorView;->generateFormat3339DateString(Ljava/util/Calendar;IIILcom/android/htccontacts/model/EntityDelta;Z)Ljava/lang/String;

    move-result-object v11

    goto :goto_0
.end method

.method public setDeletable(Z)V
    .locals 2
    .parameter "deletable"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mDelete:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 119
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setEditorDispaly(Lcom/android/htccontacts/ui/widget/EditorItemDisplay;)V
    .locals 0
    .parameter "display"

    .prologue
    .line 577
    return-void
.end method

.method public setEditorListener(Lcom/android/htccontacts/model/Editor$EditorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mListener:Lcom/android/htccontacts/model/Editor$EditorListener;

    .line 115
    return-void
.end method

.method public setEditorMonitor(Lcom/android/htccontacts/ui/widget/EditorMonitor;)V
    .locals 0
    .parameter "monitor"

    .prologue
    .line 673
    return-void
.end method

.method public setValues(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;)V
    .locals 11
    .parameter "kind"
    .parameter "entry"
    .parameter "state"

    .prologue
    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 160
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    .line 161
    iput-object p2, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 162
    iput-object p3, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    .line 164
    invoke-virtual {p2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v10

    if-nez v10, :cond_1

    .line 166
    invoke-virtual {p0, v8}, Lcom/android/htccontacts/ui/widget/DateEditorView;->setVisibility(I)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/htccontacts/ui/widget/DateEditorView;->setVisibility(I)V

    .line 173
    invoke-static {p1}, Lcom/android/htccontacts/model/EntityModifier;->hasEditTypes(Lcom/android/htccontacts/model/DataKind;)Z

    move-result v5

    .line 174
    .local v5, hasTypes:Z
    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    move v8, v9

    :cond_2
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    if-eqz v5, :cond_3

    .line 176
    invoke-static {p2, p1}, Lcom/android/htccontacts/model/EntityModifier;->getCurrentType(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v8

    iput-object v8, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mType:Lcom/android/htccontacts/model/AccountType$EditType;

    .line 177
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/DateEditorView;->rebuildLabel()V

    .line 180
    :cond_3
    iget-object v8, p1, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/AccountType$EditField;

    .line 183
    .local v3, field:Lcom/android/htccontacts/model/AccountType$EditField;
    iget-object v0, v3, Lcom/android/htccontacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 184
    .local v0, column:Ljava/lang/String;
    invoke-virtual {p2, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 187
    .local v7, value:Ljava/lang/String;
    const/4 v2, 0x0

    .line 189
    .local v2, dispaly:Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/htccontacts/ui/widget/DateEditorView;->parseData(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mCalendar:Ljava/util/Calendar;

    .line 191
    iget-object v8, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mCalendar:Ljava/util/Calendar;

    if-eqz v8, :cond_5

    .line 192
    iget-object v8, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0, v8}, Lcom/android/htccontacts/ui/widget/DateEditorView;->getShowDateString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    .line 193
    iget-object v8, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :goto_1
    iput-object v7, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mDate:Ljava/lang/String;

    .line 276
    .end local v0           #column:Ljava/lang/String;
    .end local v2           #dispaly:Ljava/lang/String;
    .end local v3           #field:Lcom/android/htccontacts/model/AccountType$EditField;
    .end local v7           #value:Ljava/lang/String;
    :cond_4
    invoke-virtual {p3}, Lcom/android/htccontacts/model/EntityDelta;->isReadyOnly()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 277
    iget-object v8, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 196
    .restart local v0       #column:Ljava/lang/String;
    .restart local v2       #dispaly:Ljava/lang/String;
    .restart local v3       #field:Lcom/android/htccontacts/model/AccountType$EditField;
    .restart local v7       #value:Ljava/lang/String;
    :cond_5
    invoke-virtual {p2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v1

    .line 197
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_7

    const/4 v4, 0x1

    .line 199
    .local v4, hasAfter:Z
    :goto_2
    if-eqz v7, :cond_8

    .line 200
    if-nez v4, :cond_6

    .line 201
    invoke-direct {p0, p2, p3}, Lcom/android/htccontacts/ui/widget/DateEditorView;->obtainHtcEventData(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;)Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;

    move-result-object v8

    iput-object v8, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mHtcEventData:Lcom/android/htccontacts/ui/widget/DateEditorView$HtcEventData;

    .line 203
    :cond_6
    invoke-direct {p0, v7}, Lcom/android/htccontacts/ui/widget/DateEditorView;->parseData(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mCalendar:Ljava/util/Calendar;

    .line 204
    iget-object v8, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0, v8}, Lcom/android/htccontacts/ui/widget/DateEditorView;->getShowDateString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    .line 205
    iget-object v8, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .end local v4           #hasAfter:Z
    :cond_7
    move v4, v9

    .line 197
    goto :goto_2

    .line 208
    .restart local v4       #hasAfter:Z
    :cond_8
    iget-object v8, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mButton:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/htccontacts/ui/widget/DateEditorView;->DATA_PICK_HINT:I

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

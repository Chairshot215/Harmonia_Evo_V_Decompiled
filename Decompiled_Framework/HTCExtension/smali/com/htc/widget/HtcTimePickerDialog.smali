.class public Lcom/htc/widget/HtcTimePickerDialog;
.super Lcom/htc/widget/HtcAlertDialog;
.source "HtcTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final TAG:Ljava/lang/String; = "HtcTimePickerDialog"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallback:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

.field private mContext:Landroid/content/Context;

.field private final mDateFormat:Ljava/text/DateFormat;

.field mHandler:Landroid/os/Handler;

.field mInitTimePickerDialog:Z

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mInitialSecond:I

.field mIs24HourView:Z

.field private final mTimePicker:Lcom/htc/widget/HtcTimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcTimePickerDialog;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/htc/widget/HtcTimePickerDialog;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/htc/widget/HtcTimePickerDialog;->mCallback:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    iput p4, p0, Lcom/htc/widget/HtcTimePickerDialog;->mInitialHourOfDay:I

    iput p5, p0, Lcom/htc/widget/HtcTimePickerDialog;->mInitialMinute:I

    iput-boolean p6, p0, Lcom/htc/widget/HtcTimePickerDialog;->mIs24HourView:Z

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcTimePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    iget v2, p0, Lcom/htc/widget/HtcTimePickerDialog;->mInitialHourOfDay:I

    iget v4, p0, Lcom/htc/widget/HtcTimePickerDialog;->mInitialMinute:I

    invoke-direct {p0, v2, v4}, Lcom/htc/widget/HtcTimePickerDialog;->updateTitle(II)V

    const v2, 0x104000a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2, p0}, Lcom/htc/widget/HtcTimePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 v2, 0x104

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v2, v3

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v2}, Lcom/htc/widget/HtcTimePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v2, 0x10802be

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcTimePickerDialog;->setIcon(I)V

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x2090096

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimePickerDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcTimePickerDialog;->setInverseBackgroundForced(Z)V

    const v2, 0x2020149

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcTimePicker;

    iput-object v2, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    iput-boolean v6, p0, Lcom/htc/widget/HtcTimePickerDialog;->mInitTimePickerDialog:Z

    iget-object v2, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    const/16 v3, 0x3b

    invoke-virtual {v2, v5, v3, v6}, Lcom/htc/widget/HtcTimePicker;->setMinuteRange(IIZ)V

    iget-object v2, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcTimePicker;->setRepeatEnable(Z)V

    iget v2, p0, Lcom/htc/widget/HtcTimePickerDialog;->mInitialHourOfDay:I

    iget v3, p0, Lcom/htc/widget/HtcTimePickerDialog;->mInitialMinute:I

    invoke-virtual {p0, v2, v3, v5}, Lcom/htc/widget/HtcTimePickerDialog;->updateTime(III)V

    iget-object v2, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcTimePicker;->requestFocus()Z

    :goto_0
    return-void

    :cond_0
    const-string v2, "HtcTimePickerDialog"

    const-string v3, "can\'t find mTimePicker(R.id.timePicker)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7

    const v2, 0x10302ef

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/widget/HtcTimePickerDialog;-><init>(Landroid/content/Context;ILcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;IIZ)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimePickerDialog;->setInverseBackgroundForced(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;IIZZ)V
    .locals 7

    const v2, 0x10302ef

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/widget/HtcTimePickerDialog;-><init>(Landroid/content/Context;ILcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;IIZ)V

    iget-object v0, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v0, p6}, Lcom/htc/widget/HtcTimePicker;->setRepeatEnable(Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimePickerDialog;->setInverseBackgroundForced(Z)V

    return-void
.end method

.method private updateTime()V
    .locals 0

    return-void
.end method

.method private updateTitle(II)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/htc/widget/HtcTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/htc/widget/HtcTimePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/htc/widget/HtcTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/htc/widget/HtcTimePickerDialog;->mCallback:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcTimePicker;->clearFocus()V

    iget-object v0, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcTimePicker;->isSecondPickerEndabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePickerDialog;->mCallback:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    iget-object v2, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v3}, Lcom/htc/widget/HtcTimePicker;->getCurrentMinute()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcTimePickerDialog;->mCallback:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    iget-object v2, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v3}, Lcom/htc/widget/HtcTimePicker;->getCurrentMinute()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v4}, Lcom/htc/widget/HtcTimePicker;->getCurrentSecond()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v2, "hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "minute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcTimePicker;->setCurrentHour(I)V

    iget-object v2, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcTimePicker;->setCurrentMinute(I)V

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/HtcTimePickerDialog;->updateTitle(II)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/htc/widget/HtcAlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hour"

    iget-object v2, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "minute"

    iget-object v2, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcTimePicker;->getCurrentMinute()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onTimeChanged(Lcom/htc/widget/HtcTimePicker;II)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/htc/widget/HtcTimePickerDialog;->updateTitle(II)V

    return-void
.end method

.method public onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v0

    invoke-virtual {p1}, Lcom/htc/widget/HtcTimePicker;->getCurrentMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/HtcTimePickerDialog;->updateTitle(II)V

    :cond_0
    return-void
.end method

.method public updateTime(III)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePickerDialog;->mTimePicker:Lcom/htc/widget/HtcTimePicker;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/htc/widget/HtcTimePicker;->init(IIILcom/htc/widget/HtcTimePicker$OnTimeSetListener;)V

    return-void
.end method

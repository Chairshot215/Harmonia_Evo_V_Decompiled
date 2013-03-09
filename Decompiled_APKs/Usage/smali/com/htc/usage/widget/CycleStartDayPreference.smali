.class public final Lcom/htc/usage/widget/CycleStartDayPreference;
.super Lcom/htc/preference/HtcDialogPreference;
.source "CycleStartDayPreference.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CycleStartDayPreference"


# instance fields
.field private mDay:I

.field private mOnDateSetListener:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/usage/widget/CycleStartDayPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/usage/widget/CycleStartDayPreference;->mDay:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/usage/widget/CycleStartDayPreference;->mDay:I

    .line 28
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 8

    .prologue
    .line 37
    const/16 v3, 0x7b2

    .line 38
    .local v3, startYear:I
    const/16 v4, 0x7ee

    .line 39
    .local v4, endYear:I
    const/16 v5, 0x7d0

    .line 40
    .local v5, year:I
    const/4 v6, 0x0

    .line 41
    .local v6, monthOfYear:I
    new-instance v0, Lcom/htc/widget/HtcDatePickerDialog;

    invoke-virtual {p0}, Lcom/htc/usage/widget/CycleStartDayPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/usage/widget/CycleStartDayPreference;->mOnDateSetListener:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    const-string v7, "dd"

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcDatePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;IIIILjava/lang/String;)V

    .line 42
    .local v0, dialog:Lcom/htc/widget/HtcDatePickerDialog;
    const v1, 0x7f050031

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcDatePickerDialog;->setTitle(I)V

    .line 43
    iget v1, p0, Lcom/htc/usage/widget/CycleStartDayPreference;->mDay:I

    invoke-virtual {v0, v5, v6, v1}, Lcom/htc/widget/HtcDatePickerDialog;->updateDate(III)V

    .line 44
    invoke-virtual {v0}, Lcom/htc/widget/HtcDatePickerDialog;->show()V

    .line 45
    return-void
.end method

.method public setCycleStartDay(I)V
    .locals 5
    .parameter "day"

    .prologue
    .line 31
    iput p1, p0, Lcom/htc/usage/widget/CycleStartDayPreference;->mDay:I

    .line 32
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/usage/widget/CycleStartDayPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 33
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/htc/usage/widget/CycleStartDayPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050045

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setOnDateSetListener(Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/usage/widget/CycleStartDayPreference;->mOnDateSetListener:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    .line 49
    return-void
.end method

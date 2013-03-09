.class public Lcom/android/phone/htc/CallDeferActivity;
.super Lcom/android/phone/htc/HtcDeferPersonActivity;
.source "CallDeferActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;,
        Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_ID_CUSTOM_MSG:I = 0x34

.field private static final DIALOG_ID_DEFER_MSGS:I = 0x32

.field private static final DIALOG_ID_REMINDER:I = 0x33

.field private static final ENTRY_DATA:Lcom/htc/widget/SimpleHtcListItemSeparable; = null

.field private static final ENTRY_LABEL:Lcom/htc/widget/SimpleHtcListItemSeparable; = null

.field private static final MSG_POS_DEFAULT:I = 0x2

.field private static final MSG_POS_NONE:I = 0x0

.field private static final REMINDER_DEFAULT_HOUR:I = 0x0

.field private static final REMINDER_DEFAULT_MINUTE:I = 0xf

.field private static final REMINDER_DEFAULT_SECOND:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CallDefer"


# instance fields
.field private mAdapter:Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;

.field private mCustomDeferMsg:Ljava/lang/CharSequence;

.field private mDeferMsgItem:I

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mMessageAdapter:Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;

.field private mReminderHour:I

.field private mReminderMinute:I

.field private mReminderSecond:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/htc/widget/SimpleHtcListItemSeparable;

    const-string v1, "label"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/phone/htc/CallDeferActivity;->ENTRY_LABEL:Lcom/htc/widget/SimpleHtcListItemSeparable;

    .line 67
    new-instance v0, Lcom/htc/widget/SimpleHtcListItemSeparable;

    const-string v1, "data"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/phone/htc/CallDeferActivity;->ENTRY_DATA:Lcom/htc/widget/SimpleHtcListItemSeparable;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/android/phone/htc/HtcDeferPersonActivity;-><init>()V

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mDeferMsgItem:I

    .line 95
    iput v1, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderHour:I

    .line 96
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderMinute:I

    .line 97
    iput v1, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderSecond:I

    .line 775
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/htc/CallDeferActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/htc/CallDeferActivity;->getCustomMsgIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/htc/CallDeferActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mDeferMsgItem:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/htc/CallDeferActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderHour:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/htc/CallDeferActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/phone/htc/CallDeferActivity;->mDeferMsgItem:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/htc/CallDeferActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderMinute:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/htc/CallDeferActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderSecond:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/htc/CallDeferActivity;III)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/htc/CallDeferActivity;->generateReminderText(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/htc/CallDeferActivity;)Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mAdapter:Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/htc/CallDeferActivity;Lcom/htc/widget/HtcTimePicker;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/htc/CallDeferActivity;->onTimerSet(Lcom/htc/widget/HtcTimePicker;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/htc/CallDeferActivity;)Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/htc/CallDeferActivity;->updateMessageAdapter()Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/htc/CallDeferActivity;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mCustomDeferMsg:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/htc/CallDeferActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/phone/htc/CallDeferActivity;->mCustomDeferMsg:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$700()Lcom/htc/widget/SimpleHtcListItemSeparable;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/phone/htc/CallDeferActivity;->ENTRY_LABEL:Lcom/htc/widget/SimpleHtcListItemSeparable;

    return-object v0
.end method

.method static synthetic access$800()Lcom/htc/widget/SimpleHtcListItemSeparable;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/phone/htc/CallDeferActivity;->ENTRY_DATA:Lcom/htc/widget/SimpleHtcListItemSeparable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/htc/CallDeferActivity;)Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/htc/CallDeferActivity;->getMessageAdapter()Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;

    move-result-object v0

    return-object v0
.end method

.method private appendTimeStringInto(Ljava/lang/StringBuilder;III)V
    .locals 1
    .parameter "sb"
    .parameter "quantity"
    .parameter "singularResId"
    .parameter "pluralResId"

    .prologue
    .line 757
    if-nez p1, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    if-lez p2, :cond_0

    .line 761
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 762
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 765
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    const/4 v0, 0x1

    if-ne v0, p2, :cond_3

    .line 767
    invoke-virtual {p0, p3}, Lcom/android/phone/htc/CallDeferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 769
    :cond_3
    invoke-virtual {p0, p4}, Lcom/android/phone/htc/CallDeferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private calculateReminderTimeout()J
    .locals 4

    .prologue
    .line 824
    const-wide/16 v0, 0x0

    .line 825
    .local v0, timeout:J
    iget v2, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderHour:I

    if-eqz v2, :cond_0

    .line 826
    iget v2, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderHour:I

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 829
    :cond_0
    iget v2, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderMinute:I

    if-eqz v2, :cond_1

    .line 830
    iget v2, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderMinute:I

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 833
    :cond_1
    iget v2, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderSecond:I

    if-eqz v2, :cond_2

    .line 834
    iget v2, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderSecond:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 837
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    .line 838
    const-wide/16 v0, 0x384

    .line 845
    :cond_3
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method private createCustomMsgDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 306
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 307
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0e00c1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 308
    invoke-virtual {p0}, Lcom/android/phone/htc/CallDeferActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001f

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 309
    const v1, 0x104000a

    new-instance v2, Lcom/android/phone/htc/CallDeferActivity$3;

    invoke-direct {v2, p0}, Lcom/android/phone/htc/CallDeferActivity$3;-><init>(Lcom/android/phone/htc/CallDeferActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 326
    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 327
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 329
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createDeferMsgDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 214
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0e00bf

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 216
    invoke-direct {p0}, Lcom/android/phone/htc/CallDeferActivity;->getMessageAdapter()Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;

    move-result-object v1

    new-instance v2, Lcom/android/phone/htc/CallDeferActivity$1;

    invoke-direct {v2, p0}, Lcom/android/phone/htc/CallDeferActivity$1;-><init>(Lcom/android/phone/htc/CallDeferActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 231
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createReminderDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 257
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 258
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0e00c0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 259
    invoke-direct {p0}, Lcom/android/phone/htc/CallDeferActivity;->createTimePickerView()Lcom/htc/widget/HtcTimePicker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 260
    const v1, 0x10403f5

    new-instance v2, Lcom/android/phone/htc/CallDeferActivity$2;

    invoke-direct {v2, p0}, Lcom/android/phone/htc/CallDeferActivity$2;-><init>(Lcom/android/phone/htc/CallDeferActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 268
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 270
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createTimePickerView()Lcom/htc/widget/HtcTimePicker;
    .locals 5

    .prologue
    const/16 v4, 0x3b

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 274
    new-instance v0, Lcom/htc/widget/HtcTimePicker;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcTimePicker;-><init>(Landroid/content/Context;)V

    .line 275
    .local v0, timerView:Lcom/htc/widget/HtcTimePicker;
    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePicker;->setId(I)V

    .line 276
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcTimePicker;->setEnabled(Z)V

    .line 277
    const/16 v1, 0x17

    invoke-virtual {v0, v2, v1}, Lcom/htc/widget/HtcTimePicker;->setHourRange(II)V

    .line 278
    invoke-virtual {v0, v2, v4}, Lcom/htc/widget/HtcTimePicker;->setMinuteRange(II)V

    .line 279
    invoke-virtual {v0, v2, v4}, Lcom/htc/widget/HtcTimePicker;->setSecondRange(II)V

    .line 280
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcTimePicker;->setSecondPickerEnable(Z)V

    .line 282
    return-object v0
.end method

.method private formateCallbackWithin(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "in"

    .prologue
    .line 360
    iget v1, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderHour:I

    iget v2, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderMinute:I

    iget v3, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderSecond:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/htc/CallDeferActivity;->generateReminderText(III)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, callBackTime:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 365
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 367
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private generateReminderText(III)Ljava/lang/String;
    .locals 3
    .parameter "hours"
    .parameter "mins"
    .parameter "secs"

    .prologue
    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 725
    .local v0, sb:Ljava/lang/StringBuilder;
    const v1, 0x1040384

    const v2, 0x1040385

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/phone/htc/CallDeferActivity;->appendTimeStringInto(Ljava/lang/StringBuilder;III)V

    .line 730
    const v1, 0x1040386

    const v2, 0x1040387

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/phone/htc/CallDeferActivity;->appendTimeStringInto(Ljava/lang/StringBuilder;III)V

    .line 735
    const v1, 0x1040388

    const v2, 0x1040389

    invoke-direct {p0, v0, p3, v1, v2}, Lcom/android/phone/htc/CallDeferActivity;->appendTimeStringInto(Ljava/lang/StringBuilder;III)V

    .line 740
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCustomMsgIndex()I
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/android/phone/htc/CallDeferActivity;->getMessageAdapter()Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private getDefferMessages()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 371
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/phone/htc/CallDeferActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 372
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/phone/htc/CallDeferActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 373
    .local v0, callYouBackInIndex:I
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/htc/CallDeferActivity;->formateCallbackWithin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 375
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 377
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private getMessageAdapter()Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;
    .locals 6

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mMessageAdapter:Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;

    const v3, 0x20900ad

    const v4, 0x1020014

    invoke-direct {p0}, Lcom/android/phone/htc/CallDeferActivity;->getDefferMessages()[Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;-><init>(Lcom/android/phone/htc/CallDeferActivity;Landroid/content/Context;II[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mMessageAdapter:Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mMessageAdapter:Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;

    return-object v0
.end method

.method private isDataValid()Z
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x1

    .line 147
    .local v0, valid:Z
    iget-object v1, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 151
    :cond_0
    return v0
.end method

.method private launchCallReminder()V
    .locals 7

    .prologue
    .line 490
    iget-object v3, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v3}, Lcom/android/phone/util/CallDeferUtils;->launchCallReminder(Lcom/android/internal/telephony/CallerInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 493
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 494
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/android/phone/htc/CallDeferActivity;->calculateReminderTimeout()J

    move-result-wide v5

    add-long v1, v3, v5

    .line 497
    .local v1, triggerTime:J
    invoke-virtual {p0}, Lcom/android/phone/htc/CallDeferActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v3, v0, v1, v2, v4}, Lcom/android/phone/util/CallDeferUtils;->schduleDeferReminder(Landroid/content/Context;Landroid/content/Intent;JLcom/android/internal/telephony/CallerInfo;)Z

    .line 502
    .end local v1           #triggerTime:J
    :cond_0
    return-void
.end method

.method private onCancelClick()V
    .locals 0

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/android/phone/htc/CallDeferActivity;->finish()V

    .line 455
    return-void
.end method

.method private onOkClick()V
    .locals 3

    .prologue
    .line 436
    iget v1, p0, Lcom/android/phone/htc/CallDeferActivity;->mDeferMsgItem:I

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/phone/htc/CallDeferActivity;->mMessageAdapter:Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;

    iget v2, p0, Lcom/android/phone/htc/CallDeferActivity;->mDeferMsgItem:I

    invoke-virtual {v1, v2}, Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, deferMessage:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/htc/CallDeferActivity;->sendMessage(Ljava/lang/String;Ljava/lang/String;)Z

    .line 447
    .end local v0           #deferMessage:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/htc/CallDeferActivity;->launchCallReminder()V

    .line 449
    invoke-virtual {p0}, Lcom/android/phone/htc/CallDeferActivity;->finish()V

    .line 450
    return-void
.end method

.method private onTimerSet(Lcom/htc/widget/HtcTimePicker;)V
    .locals 4
    .parameter "timer"

    .prologue
    .line 286
    if-nez p1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-virtual {p1}, Lcom/htc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v0

    .line 292
    .local v0, hour:I
    invoke-virtual {p1}, Lcom/htc/widget/HtcTimePicker;->getCurrentMinute()I

    move-result v1

    .line 293
    .local v1, minute:I
    invoke-virtual {p1}, Lcom/htc/widget/HtcTimePicker;->getCurrentSecond()I

    move-result v2

    .line 294
    .local v2, second:I
    iget v3, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderHour:I

    if-ne v0, v3, :cond_2

    iget v3, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderMinute:I

    if-ne v1, v3, :cond_2

    iget v3, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderSecond:I

    if-eq v2, v3, :cond_0

    .line 297
    :cond_2
    iput v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderHour:I

    .line 298
    iput v1, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderMinute:I

    .line 299
    iput v2, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderSecond:I

    .line 300
    iget-object v3, p0, Lcom/android/phone/htc/CallDeferActivity;->mAdapter:Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;

    invoke-virtual {v3}, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private prepareReminderDialog(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 2
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 809
    if-eqz p1, :cond_0

    .line 810
    const v1, 0x7f080026

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcTimePicker;

    .line 812
    .local v0, timerView:Lcom/htc/widget/HtcTimePicker;
    iget v1, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderHour:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePicker;->setCurrentHour(I)V

    .line 813
    iget v1, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderMinute:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePicker;->setCurrentMinute(I)V

    .line 814
    iget v1, p0, Lcom/android/phone/htc/CallDeferActivity;->mReminderSecond:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePicker;->setCurrentSecond(I)V

    .line 816
    .end local v0           #timerView:Lcom/htc/widget/HtcTimePicker;
    :cond_0
    return-void
.end method

.method private quickInitFromIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v0, p1}, Lcom/android/phone/util/CallDeferUtils;->initFromIntent(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Intent;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 132
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mImageView:Landroid/widget/ImageView;

    const v1, 0x208025a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    :cond_0
    return-void
.end method

.method private sendMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "number"
    .parameter "msg"

    .prologue
    .line 466
    const/4 v1, 0x1

    .line 467
    .local v1, success:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    :cond_0
    const-string v2, "CallDefer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessage: number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v1, 0x0

    .line 486
    :goto_0
    return v1

    .line 476
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 477
    .local v0, msgIntent:Landroid/content/Intent;
    const-string v2, "android.intent.action.SEND_SMS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v2, "dest"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const-string v2, "msg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    invoke-virtual {p0, v0}, Lcom/android/phone/htc/CallDeferActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setupActionBtns(II)V
    .locals 4
    .parameter "viewId"
    .parameter "resId"

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Lcom/android/phone/htc/CallDeferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 403
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 405
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    const-string v1, "CallDefer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupActionBtns find no view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateMessageAdapter()Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;
    .locals 6

    .prologue
    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mMessageAdapter:Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;

    .line 346
    new-instance v0, Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;

    const v3, 0x20900ad

    const v4, 0x1020014

    invoke-direct {p0}, Lcom/android/phone/htc/CallDeferActivity;->getDefferMessages()[Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;-><init>(Lcom/android/phone/htc/CallDeferActivity;Landroid/content/Context;II[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mMessageAdapter:Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;

    .line 351
    iget-object v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mMessageAdapter:Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;

    invoke-virtual {v0}, Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;->notifyDataSetChanged()V

    .line 353
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/phone/htc/CallDeferActivity;->removeDialog(I)V

    .line 356
    iget-object v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mMessageAdapter:Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;

    return-object v0
.end method

.method private updateTitleUI()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/htc/CallDeferActivity;->updateNumberView()V

    .line 143
    return-void
.end method


# virtual methods
.method protected findInitViews()V
    .locals 2

    .prologue
    .line 381
    invoke-super {p0}, Lcom/android/phone/htc/HtcDeferPersonActivity;->findInitViews()V

    .line 383
    const v0, 0x7f080051

    invoke-virtual {p0, v0}, Lcom/android/phone/htc/CallDeferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "common_panel_input_base"

    invoke-static {v0, v1}, Lcom/android/phone/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 385
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/phone/htc/CallDeferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mListView:Lcom/htc/widget/HtcListView;

    .line 386
    iget-object v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mListView:Lcom/htc/widget/HtcListView;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No list view found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_0
    new-instance v0, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;-><init>(Lcom/android/phone/htc/CallDeferActivity;Lcom/android/phone/htc/CallDeferActivity$1;)V

    iput-object v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mAdapter:Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;

    .line 390
    iget-object v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/android/phone/htc/CallDeferActivity;->mAdapter:Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 391
    iget-object v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setClickable(Z)V

    .line 392
    iget-object v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 395
    const v0, 0x2020001

    const v1, 0x1040433

    invoke-direct {p0, v0, v1}, Lcom/android/phone/htc/CallDeferActivity;->setupActionBtns(II)V

    .line 397
    const v0, 0x2020003

    const/high16 v1, 0x104

    invoke-direct {p0, v0, v1}, Lcom/android/phone/htc/CallDeferActivity;->setupActionBtns(II)V

    .line 399
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 416
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 428
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/phone/htc/HtcDeferPersonActivity;->onClick(Landroid/view/View;)V

    .line 432
    :goto_0
    return-void

    .line 418
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/htc/CallDeferActivity;->onOkClick()V

    goto :goto_0

    .line 423
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/htc/CallDeferActivity;->onCancelClick()V

    goto :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x2020001
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/android/phone/htc/HtcDeferPersonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/android/phone/htc/CallDeferActivity;->setContentView(I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/phone/htc/CallDeferActivity;->findInitViews()V

    .line 104
    invoke-virtual {p0}, Lcom/android/phone/htc/CallDeferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/htc/CallDeferActivity;->quickInitFromIntent(Landroid/content/Intent;)V

    .line 105
    invoke-direct {p0}, Lcom/android/phone/htc/CallDeferActivity;->isDataValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    const-string v1, "HTC"

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    const-string v1, "0972267717"

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 109
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    const-wide/16 v1, 0x1381

    iput-wide v1, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/htc/CallDeferActivity;->updateTitleUI()V

    .line 116
    invoke-virtual {p0}, Lcom/android/phone/htc/CallDeferActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x48

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 121
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "args"

    .prologue
    .line 156
    packed-switch p1, :pswitch_data_0

    .line 173
    invoke-super {p0, p1, p2}, Lcom/android/phone/htc/HtcDeferPersonActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 158
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/htc/CallDeferActivity;->createDeferMsgDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 162
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/htc/CallDeferActivity;->createReminderDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 166
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/htc/CallDeferActivity;->createCustomMsgDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 254
    :goto_0
    :pswitch_0
    return-void

    .line 241
    :pswitch_1
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/phone/htc/CallDeferActivity;->showDialog(I)V

    goto :goto_0

    .line 246
    :pswitch_2
    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Lcom/android/phone/htc/CallDeferActivity;->showDialog(I)V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 178
    packed-switch p1, :pswitch_data_0

    .line 198
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/htc/HtcDeferPersonActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 199
    return-void

    .line 180
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/htc/CallDeferActivity;->getMessageAdapter()Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 186
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/android/phone/htc/CallDeferActivity;->prepareReminderDialog(Landroid/app/Dialog;Landroid/os/Bundle;)V

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete()V
    .locals 1

    .prologue
    .line 849
    invoke-super {p0}, Lcom/android/phone/htc/HtcDeferPersonActivity;->onQueryComplete()V

    .line 851
    iget-object v0, p0, Lcom/android/phone/htc/CallDeferActivity;->mAdapter:Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;

    invoke-virtual {v0}, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->notifyDataSetChanged()V

    .line 852
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/android/phone/htc/HtcDeferPersonActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 211
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/android/phone/htc/HtcDeferPersonActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 205
    return-void
.end method

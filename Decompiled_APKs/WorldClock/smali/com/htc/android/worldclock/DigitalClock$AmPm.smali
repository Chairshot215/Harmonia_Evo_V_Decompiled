.class Lcom/htc/android/worldclock/DigitalClock$AmPm;
.super Ljava/lang/Object;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPmLayout:Landroid/widget/RelativeLayout;

.field private mAm_Pm:Landroid/widget/TextView;

.field public mColorDark:I

.field public mColorGrey:I

.field public mColorWhite:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 111
    const v1, 0x7f0b000c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/android/worldclock/DigitalClock$AmPm;->mAmPmLayout:Landroid/widget/RelativeLayout;

    .line 112
    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock$AmPm;->mAmPmLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0b000d

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/android/worldclock/DigitalClock$AmPm;->mAm_Pm:Landroid/widget/TextView;

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    .local v0, r:Landroid/content/res/Resources;
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/worldclock/DigitalClock$AmPm;->mColorWhite:I

    .line 116
    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/worldclock/DigitalClock$AmPm;->mColorDark:I

    .line 117
    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/worldclock/DigitalClock$AmPm;->mColorGrey:I

    .line 118
    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .locals 2
    .parameter "isMorning"

    .prologue
    .line 131
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 132
    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock$AmPm;->mAm_Pm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f08001c

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 133
    return-void

    .line 132
    :cond_0
    const v0, 0x7f08001d

    goto :goto_0
.end method

.method setIsNight(Z)V
    .locals 2
    .parameter "isNight"

    .prologue
    .line 136
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 137
    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock$AmPm;->mAm_Pm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/android/worldclock/DigitalClock$AmPm;->mColorWhite:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    return-void

    .line 137
    :cond_0
    iget v0, p0, Lcom/htc/android/worldclock/DigitalClock$AmPm;->mColorGrey:I

    goto :goto_0
.end method

.method setShowAmPm(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 121
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 122
    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock$AmPm;->mAm_Pm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method setShowAmPmForAlert(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 126
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 127
    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock$AmPm;->mAm_Pm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    return-void

    .line 127
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

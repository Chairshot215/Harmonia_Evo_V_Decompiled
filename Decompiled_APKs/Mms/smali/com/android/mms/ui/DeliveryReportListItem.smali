.class public Lcom/android/mms/ui/DeliveryReportListItem;
.super Landroid/widget/RelativeLayout;
.source "DeliveryReportListItem.java"


# instance fields
.field private mDateView:Landroid/widget/TextView;

.field private mRecipientView:Landroid/widget/TextView;

.field private mStatusView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "recipient"
    .parameter "status"
    .parameter "date"

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v0

    .line 71
    .local v0, cache:Lcom/android/mms/util/ContactNameCache;
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 73
    .local v1, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mRecipientView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1, v4}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v2, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mDateView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v2, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mDateView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f09016e

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/high16 v1, -0x100

    .line 47
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 48
    const v0, 0x7f0e0026

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mRecipientView:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0e0027

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mStatusView:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0e0028

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mDateView:Landroid/widget/TextView;

    .line 55
    invoke-static {}, Lcom/android/mms/MmsApp;->isSenseLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mRecipientView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    iget-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    :cond_0
    return-void
.end method

.class Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;
.super Landroid/widget/FrameLayout;
.source "HuxAccountUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxAccountUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectDefaultAccountListItem"
.end annotation


# instance fields
.field private aBar:Lcom/htc/widget/HtcListItemColorBar;

.field private aProvider:Lcom/htc/widget/HtcListItem2LineText;

.field private aRadio:Lcom/htc/widget/HtcListItemRadioButton;

.field private accountListItem:Lcom/htc/widget/HtcListItem;

.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

.field private titleItem:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/huxservice/HuxAccountUI;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 464
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    .line 465
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 458
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->aProvider:Lcom/htc/widget/HtcListItem2LineText;

    .line 459
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->aRadio:Lcom/htc/widget/HtcListItemRadioButton;

    .line 460
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->aBar:Lcom/htc/widget/HtcListItemColorBar;

    .line 466
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 467
    .local v0, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f030043

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 469
    const v1, 0x7f090167

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->accountListItem:Lcom/htc/widget/HtcListItem;

    .line 470
    const v1, 0x7f090168

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->titleItem:Landroid/widget/TextView;

    .line 472
    const v1, 0x7f090003

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->aProvider:Lcom/htc/widget/HtcListItem2LineText;

    .line 473
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->aProvider:Lcom/htc/widget/HtcListItem2LineText;

    const v2, 0x2030037

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 474
    const v1, 0x7f09016a

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemRadioButton;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->aRadio:Lcom/htc/widget/HtcListItemRadioButton;

    .line 475
    const v1, 0x7f090001

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemColorBar;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->aBar:Lcom/htc/widget/HtcListItemColorBar;

    .line 476
    return-void
.end method


# virtual methods
.method public setCheck(Z)V
    .locals 1
    .parameter "isCheck"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->aRadio:Lcom/htc/widget/HtcListItemRadioButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemRadioButton;->setChecked(Z)V

    .line 502
    return-void
.end method

.method public setFirstItem(I)V
    .locals 2
    .parameter "firstItemNameResource"

    .prologue
    .line 494
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxAccountUI"

    const-string v1, "setFirstItem"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->accountListItem:Lcom/htc/widget/HtcListItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->titleItem:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->titleItem:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 498
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->setClickable(Z)V

    .line 499
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "provider"
    .parameter "emailAddr"
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 480
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->accountListItem:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem;->setVisibility(I)V

    .line 481
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->titleItem:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->aProvider:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccountContext:Landroid/content/Context;

    invoke-static {v2, p1, v3}, Lcom/htc/android/mail/huxservice/HUXUTIL;->getEndpointDesc(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->aProvider:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 487
    sget-object v1, Lcom/htc/android/mail/MailCommon;->account_drawable:[[I

    aget-object v1, v1, v4

    array-length v1, v1

    rem-int v0, p3, v1

    .line 488
    .local v0, colorIndex:I
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->aBar:Lcom/htc/widget/HtcListItemColorBar;

    sget-object v2, Lcom/htc/android/mail/MailCommon;->account_drawable:[[I

    aget-object v2, v2, v4

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemColorBar;->setImageResource(I)V

    .line 490
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;->setClickable(Z)V

    .line 491
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HuxAccountUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setText()  provider:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " emailAddr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_0
    return-void
.end method

.class Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;
.super Landroid/widget/FrameLayout;
.source "HuxAccountUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxAccountUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountListSignInItem"
.end annotation


# instance fields
.field private aBar:Lcom/htc/widget/HtcListItemColorBar;

.field private aProvider:Lcom/htc/widget/HtcListItem2LineText;

.field private aProviderIcon:Lcom/htc/widget/HtcListItemColorIcon;

.field private accountListItem:Lcom/htc/widget/HtcListItem;

.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

.field private titleItem:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/huxservice/HuxAccountUI;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 424
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    .line 425
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 426
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 427
    .local v0, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f030041

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 429
    const v1, 0x7f090167

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->accountListItem:Lcom/htc/widget/HtcListItem;

    .line 430
    const v1, 0x7f090168

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->titleItem:Landroid/widget/TextView;

    .line 432
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->accountListItem:Lcom/htc/widget/HtcListItem;

    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->aProvider:Lcom/htc/widget/HtcListItem2LineText;

    .line 433
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->aProvider:Lcom/htc/widget/HtcListItem2LineText;

    const v2, 0x2030037

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 434
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->accountListItem:Lcom/htc/widget/HtcListItem;

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->aProviderIcon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 435
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->accountListItem:Lcom/htc/widget/HtcListItem;

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemColorBar;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->aBar:Lcom/htc/widget/HtcListItemColorBar;

    .line 436
    return-void
.end method


# virtual methods
.method public setFirstItem(I)V
    .locals 2
    .parameter "firstItemNameResource"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->accountListItem:Lcom/htc/widget/HtcListItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->titleItem:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->titleItem:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 454
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

    .line 439
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->accountListItem:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem;->setVisibility(I)V

    .line 440
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->titleItem:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->aProvider:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccountContext:Landroid/content/Context;

    invoke-static {v2, p1, v3}, Lcom/htc/android/mail/huxservice/HUXUTIL;->getEndpointDesc(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->aProvider:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 446
    sget-object v1, Lcom/htc/android/mail/MailCommon;->account_drawable:[[I

    aget-object v1, v1, v4

    array-length v1, v1

    rem-int v0, p3, v1

    .line 447
    .local v0, colorIndex:I
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->aBar:Lcom/htc/widget/HtcListItemColorBar;

    sget-object v2, Lcom/htc/android/mail/MailCommon;->account_drawable:[[I

    aget-object v2, v2, v4

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemColorBar;->setImageResource(I)V

    .line 448
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;->aProviderIcon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-static {p1, v3}, Lcom/htc/android/mail/util/AccountIconMap;->getAccountIconResource(Ljava/lang/String;Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    .line 449
    return-void
.end method

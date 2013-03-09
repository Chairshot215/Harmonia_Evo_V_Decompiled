.class Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;
.super Lcom/htc/preference/HtcPreference;
.source "GuidedToursActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ButtonPreference"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBtnListener:Landroid/view/View$OnClickListener;

.field private mBtnText:Ljava/lang/String;

.field private mButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 364
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 361
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 356
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 350
    const-string v0, "OOBE_ButtonPreference"

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;->TAG:Ljava/lang/String;

    .line 357
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;->setLayoutResource(I)V

    .line 358
    return-void
.end method

.method private setButtonOnClickListener()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;->mBtnListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;->mBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    :cond_0
    return-void
.end method

.method private setButtonText()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;->mBtnText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;->mBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 384
    :cond_0
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 368
    const-string v0, "OOBE_ButtonPreference"

    const-string v1, "onBindView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 370
    const v0, 0x7f0d000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;->mButton:Landroid/widget/Button;

    .line 371
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;->setButtonText()V

    .line 372
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;->setButtonOnClickListener()V

    .line 373
    return-void
.end method

.method public setButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;->mBtnListener:Landroid/view/View$OnClickListener;

    .line 388
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;->setButtonOnClickListener()V

    .line 389
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 376
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;->mBtnText:Ljava/lang/String;

    .line 377
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/GuidedToursActivity$ButtonPreference;->setButtonOnClickListener()V

    .line 378
    return-void
.end method

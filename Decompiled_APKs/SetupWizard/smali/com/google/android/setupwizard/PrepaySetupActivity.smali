.class public Lcom/google/android/setupwizard/PrepaySetupActivity;
.super Lcom/google/android/setupwizard/BaseActivity;
.source "PrepaySetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAgreeButton:Landroid/view/View;

.field private mDisagreeButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/PrepaySetupActivity;->setContentView(I)V

    .line 46
    const v0, 0x7f0e001e

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/PrepaySetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupwizard/PrepaySetupActivity;->mAgreeButton:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/google/android/setupwizard/PrepaySetupActivity;->mAgreeButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v0, 0x7f0e001f

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/PrepaySetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupwizard/PrepaySetupActivity;->mDisagreeButton:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/google/android/setupwizard/PrepaySetupActivity;->mDisagreeButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/setupwizard/PrepaySetupActivity;->mAgreeButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 55
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/PrepaySetupActivity;->setResult(I)V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/setupwizard/PrepaySetupActivity;->finish()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupwizard/PrepaySetupActivity;->mDisagreeButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 59
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/PrepaySetupActivity;->setResult(I)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/setupwizard/PrepaySetupActivity;->finish()V

    .line 62
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-direct {p0}, Lcom/google/android/setupwizard/PrepaySetupActivity;->initView()V

    .line 42
    return-void
.end method

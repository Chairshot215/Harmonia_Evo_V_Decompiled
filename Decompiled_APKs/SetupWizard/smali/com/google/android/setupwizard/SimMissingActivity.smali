.class public Lcom/google/android/setupwizard/SimMissingActivity;
.super Lcom/google/android/setupwizard/BaseActivity;
.source "SimMissingActivity.java"


# instance fields
.field private mSkipButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 44
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/SimMissingActivity;->setContentView(I)V

    .line 45
    const v0, 0x7f0e000d

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/SimMissingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupwizard/SimMissingActivity;->mSkipButton:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/google/android/setupwizard/SimMissingActivity;->mSkipButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupwizard/SimMissingActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 47
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Lcom/google/android/setupwizard/SimMissingActivity;->initView()V

    .line 41
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/SimMissingActivity;->setResult(I)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/setupwizard/SimMissingActivity;->finish()V

    .line 53
    return-void
.end method

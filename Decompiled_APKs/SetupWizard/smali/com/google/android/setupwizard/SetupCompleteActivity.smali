.class public Lcom/google/android/setupwizard/SetupCompleteActivity;
.super Lcom/google/android/setupwizard/BaseActivity;
.source "SetupCompleteActivity.java"


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mBackupAssistantCheckbox:Landroid/widget/CompoundButton;

.field private mNextButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/setupwizard/BaseActivity;-><init>()V

    return-void
.end method

.method private backupAssistantExists()Z
    .locals 4

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/android/setupwizard/SetupCompleteActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 80
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sncr.action.BAEULA"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 83
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 88
    const/16 v0, 0x2710

    if-ne p1, v0, :cond_0

    .line 89
    if-eqz p2, :cond_0

    .line 90
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/SetupCompleteActivity;->setResult(I)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/setupwizard/SetupCompleteActivity;->finish()V

    .line 94
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/SetupCompleteActivity;->setContentView(I)V

    .line 49
    const v0, 0x7f0e000c

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/SetupCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupwizard/SetupCompleteActivity;->mNextButton:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/google/android/setupwizard/SetupCompleteActivity;->mNextButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupwizard/SetupCompleteActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 52
    const v0, 0x7f0e0018

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/SetupCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupwizard/SetupCompleteActivity;->mBackButton:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/google/android/setupwizard/SetupCompleteActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/SetupCompleteActivity;->setBackButton(Landroid/view/View;)V

    .line 55
    const v0, 0x7f0e0021

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/SetupCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/google/android/setupwizard/SetupCompleteActivity;->mBackupAssistantCheckbox:Landroid/widget/CompoundButton;

    .line 57
    invoke-direct {p0}, Lcom/google/android/setupwizard/SetupCompleteActivity;->backupAssistantExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/android/setupwizard/SetupCompleteActivity;->mBackupAssistantCheckbox:Landroid/widget/CompoundButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 60
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Lcom/google/android/setupwizard/BaseActivity;->start()V

    .line 66
    iget-object v1, p0, Lcom/google/android/setupwizard/SetupCompleteActivity;->mBackupAssistantCheckbox:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sncr.action.BAEULA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupwizard/SetupCompleteActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 73
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 71
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/setupwizard/SetupCompleteActivity;->setResult(I)V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/setupwizard/SetupCompleteActivity;->finish()V

    goto :goto_0
.end method

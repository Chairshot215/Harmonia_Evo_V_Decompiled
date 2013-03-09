.class public Lcom/htc/android/htcsetupwizard/StepSetting;
.super Ljava/lang/Object;
.source "StepSetting.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OOBE_StepSetting"


# instance fields
.field private mActivityId:I

.field private mActivityInfo:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mIfFinalPage:I

.field private mIntent:Landroid/content/Intent;

.field private mMainActivity:Lcom/htc/android/htcsetupwizard/MainActivity;

.field private mPackageName:Ljava/lang/String;

.field private mProgressBarNumber:I

.field private mProgressBarResource:I

.field private mProgressBarWidth:I

.field private stepNumber:I


# direct methods
.method public constructor <init>(Lcom/htc/android/htcsetupwizard/MainActivity;Ljava/lang/String;)V
    .locals 2
    .parameter "main"
    .parameter "activityInfo"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mActivityInfo:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mPackageName:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mClassName:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mIntent:Landroid/content/Intent;

    .line 32
    iput v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mActivityId:I

    .line 33
    iput v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mProgressBarNumber:I

    .line 34
    iput v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mProgressBarResource:I

    .line 35
    iput v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mProgressBarWidth:I

    .line 36
    iput v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->stepNumber:I

    .line 37
    iput v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mIfFinalPage:I

    .line 40
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mMainActivity:Lcom/htc/android/htcsetupwizard/MainActivity;

    .line 41
    iput-object p2, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mActivityInfo:Ljava/lang/String;

    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mIntent:Landroid/content/Intent;

    .line 44
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mActivityInfo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/StepSetting;->parseActivityInfo(Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mMainActivity:Lcom/htc/android/htcsetupwizard/MainActivity;

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mActivityId:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 129
    return-void
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mActivityId:I

    return v0
.end method

.method public getIfFinalPage()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mIfFinalPage:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressBarNumber()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mProgressBarNumber:I

    return v0
.end method

.method public getStepNumber()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->stepNumber:I

    return v0
.end method

.method public parseActivityInfo(Ljava/lang/String;)V
    .locals 5
    .parameter "activityInfo"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 48
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, split:[Ljava/lang/String;
    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 50
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mActivityId:I

    .line 51
    :cond_0
    aget-object v1, v0, v4

    if-eqz v1, :cond_1

    .line 52
    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mPackageName:Ljava/lang/String;

    .line 53
    :cond_1
    aget-object v1, v0, v3

    if-eqz v1, :cond_2

    .line 54
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mClassName:Ljava/lang/String;

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mIntent:Landroid/content/Intent;

    const-string v2, "LaunchBySetupWizard"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    return-void
.end method

.method public setIfFinalPage(I)V
    .locals 4
    .parameter "ifFinal"

    .prologue
    const/4 v3, 0x1

    .line 108
    if-ne p1, v3, :cond_1

    iget v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mIfFinalPage:I

    if-eq v0, v3, :cond_1

    .line 109
    const-string v0, "OOBE_StepSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set FinalPage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mActivityInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mIntent:Landroid/content/Intent;

    const-string v1, "FinalPage"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    iput p1, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mIfFinalPage:I

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    if-eq p1, v3, :cond_0

    iget v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mIfFinalPage:I

    if-ne v0, v3, :cond_0

    .line 114
    const-string v0, "OOBE_StepSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove FinalPage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mActivityInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mIntent:Landroid/content/Intent;

    const-string v1, "FinalPage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 116
    iput p1, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mIfFinalPage:I

    goto :goto_0
.end method

.method public setIntentExtra(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    return-void
.end method

.method public setProgressBarNumber(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 89
    iput p1, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->mProgressBarNumber:I

    .line 90
    return-void
.end method

.method public setStepNumber(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 100
    iput p1, p0, Lcom/htc/android/htcsetupwizard/StepSetting;->stepNumber:I

    .line 101
    return-void
.end method

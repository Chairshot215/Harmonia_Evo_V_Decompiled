.class public Lcom/htc/UpgradeSetup/StepSetting;
.super Ljava/lang/Object;
.source "StepSetting.java"


# static fields
.field public static final INTENT_STRING_FINAL_PAGE:Ljava/lang/String; = "com.htc.INTENT_STRING_FINAL_PAGE"

.field public static final INTENT_STRING_FIRST_PAGE:Ljava/lang/String; = "com.htc.INTENT_STRING_FIRST_PAGE"

.field private static final TAG:Ljava/lang/String; = "Upgrade_StepSetting"


# instance fields
.field private mActivityId:I

.field private mActivityInfo:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mIsFinalPage:Z

.field private mIsFirstPage:Z

.field private mPackageName:Ljava/lang/String;

.field private stepNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "activityInfo"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/htc/UpgradeSetup/StepSetting;->mActivityInfo:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/htc/UpgradeSetup/StepSetting;->mPackageName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/htc/UpgradeSetup/StepSetting;->mClassName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/htc/UpgradeSetup/StepSetting;->mIntent:Landroid/content/Intent;

    .line 12
    iput v1, p0, Lcom/htc/UpgradeSetup/StepSetting;->mActivityId:I

    .line 13
    iput v1, p0, Lcom/htc/UpgradeSetup/StepSetting;->stepNumber:I

    .line 14
    iput-boolean v2, p0, Lcom/htc/UpgradeSetup/StepSetting;->mIsFirstPage:Z

    .line 15
    iput-boolean v2, p0, Lcom/htc/UpgradeSetup/StepSetting;->mIsFinalPage:Z

    .line 20
    iput-object p1, p0, Lcom/htc/UpgradeSetup/StepSetting;->mActivityInfo:Ljava/lang/String;

    .line 21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/htc/UpgradeSetup/StepSetting;->mIntent:Landroid/content/Intent;

    .line 23
    iget-object v0, p0, Lcom/htc/UpgradeSetup/StepSetting;->mActivityInfo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/UpgradeSetup/StepSetting;->parseActivityInfo(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/UpgradeSetup/StepSetting;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/UpgradeSetup/StepSetting;->mActivityId:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/UpgradeSetup/StepSetting;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getIsFinalPage()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/htc/UpgradeSetup/StepSetting;->mIsFinalPage:Z

    return v0
.end method

.method public getIsFirstPage()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/htc/UpgradeSetup/StepSetting;->mIsFirstPage:Z

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/UpgradeSetup/StepSetting;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStepNumber()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/htc/UpgradeSetup/StepSetting;->stepNumber:I

    return v0
.end method

.method public parseActivityInfo(Ljava/lang/String;)V
    .locals 5
    .parameter "activityInfo"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, split:[Ljava/lang/String;
    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 29
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/UpgradeSetup/StepSetting;->mActivityId:I

    .line 30
    :cond_0
    aget-object v1, v0, v3

    if-eqz v1, :cond_1

    .line 31
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/htc/UpgradeSetup/StepSetting;->mPackageName:Ljava/lang/String;

    .line 32
    :cond_1
    aget-object v1, v0, v4

    if-eqz v1, :cond_2

    .line 33
    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/htc/UpgradeSetup/StepSetting;->mClassName:Ljava/lang/String;

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/htc/UpgradeSetup/StepSetting;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/UpgradeSetup/StepSetting;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/UpgradeSetup/StepSetting;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    iget-object v1, p0, Lcom/htc/UpgradeSetup/StepSetting;->mIntent:Landroid/content/Intent;

    const-string v2, "com.htc.CUSTOMIZED_REASON"

    const-string v3, "com.htc.FOTA_UPGRADE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    return-void
.end method

.method public setIntentExtra(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/UpgradeSetup/StepSetting;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    return-void
.end method

.method public setIsFinalPage(Z)V
    .locals 2
    .parameter "isFinal"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/htc/UpgradeSetup/StepSetting;->mIsFinalPage:Z

    .line 90
    iget-object v0, p0, Lcom/htc/UpgradeSetup/StepSetting;->mIntent:Landroid/content/Intent;

    const-string v1, "com.htc.INTENT_STRING_FINAL_PAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    return-void
.end method

.method public setIsFirstPage(Z)V
    .locals 2
    .parameter "isFirst"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/htc/UpgradeSetup/StepSetting;->mIsFirstPage:Z

    .line 81
    iget-object v0, p0, Lcom/htc/UpgradeSetup/StepSetting;->mIntent:Landroid/content/Intent;

    const-string v1, "com.htc.INTENT_STRING_FIRST_PAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method public setStepNumber(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 72
    iput p1, p0, Lcom/htc/UpgradeSetup/StepSetting;->stepNumber:I

    .line 73
    return-void
.end method

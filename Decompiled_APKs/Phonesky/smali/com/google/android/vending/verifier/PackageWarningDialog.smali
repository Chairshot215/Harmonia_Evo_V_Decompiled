.class public Lcom/google/android/vending/verifier/PackageWarningDialog;
.super Landroid/app/Activity;
.source "PackageWarningDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/google/android/finsky/layout/ButtonBar$ClickListener;


# static fields
.field private static KEY_APP_NAME:Ljava/lang/String;

.field private static KEY_BLOCKED:Ljava/lang/String;

.field private static KEY_MESSAGE:Ljava/lang/String;

.field private static KEY_VERIFICATION_ID:Ljava/lang/String;


# instance fields
.field private mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

.field private mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "verification_id"

    sput-object v0, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_VERIFICATION_ID:Ljava/lang/String;

    .line 33
    const-string v0, "blocked"

    sput-object v0, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_BLOCKED:Ljava/lang/String;

    .line 34
    const-string v0, "app_name"

    sput-object v0, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_APP_NAME:Ljava/lang/String;

    .line 35
    const-string v0, "message"

    sput-object v0, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private clearFinishOnTouchOutside()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/vending/verifier/PackageWarningDialog;->setFinishOnTouchOutside(Z)V

    .line 119
    return-void
.end method

.method public static show(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/vending/verifier/PackageWarningDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    const/high16 v1, 0x5000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    sget-object v1, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_VERIFICATION_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    sget-object v1, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_BLOCKED:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 46
    sget-object v1, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_APP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    sget-object v1, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v0, p2}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonEnabled(Z)V

    .line 139
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v10, 0x7f0400c6

    invoke-virtual {p0, v10}, Lcom/google/android/vending/verifier/PackageWarningDialog;->setContentView(I)V

    .line 57
    invoke-direct {p0}, Lcom/google/android/vending/verifier/PackageWarningDialog;->clearFinishOnTouchOutside()V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/PackageWarningDialog;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 61
    .local v6, intent:Landroid/content/Intent;
    sget-object v10, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_VERIFICATION_ID:Ljava/lang/String;

    const/4 v11, -0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mId:I

    .line 62
    sget-object v10, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_BLOCKED:Ljava/lang/String;

    invoke-virtual {v6, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 63
    .local v4, blocked:Z
    sget-object v10, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_APP_NAME:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, appName:Ljava/lang/String;
    sget-object v10, Lcom/google/android/vending/verifier/PackageWarningDialog;->KEY_MESSAGE:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, message:Ljava/lang/String;
    iget v10, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mId:I

    invoke-static {v10, p0}, Lcom/google/android/vending/verifier/PackageVerificationService;->registerDialog(ILandroid/app/Activity;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/PackageWarningDialog;->finish()V

    .line 109
    :goto_0
    return-void

    .line 74
    :cond_0
    const v10, 0x7f08019d

    invoke-virtual {p0, v10}, Lcom/google/android/vending/verifier/PackageWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 75
    .local v2, badgeView:Landroid/widget/ImageView;
    const v10, 0x7f08019e

    invoke-virtual {p0, v10}, Lcom/google/android/vending/verifier/PackageWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 76
    .local v3, bannerView:Landroid/widget/TextView;
    const v10, 0x7f08019f

    invoke-virtual {p0, v10}, Lcom/google/android/vending/verifier/PackageWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 77
    .local v8, messageView:Landroid/widget/TextView;
    const v10, 0x7f0801a0

    invoke-virtual {p0, v10}, Lcom/google/android/vending/verifier/PackageWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 78
    .local v9, recommendationView:Landroid/widget/TextView;
    const v10, 0x7f0801a1

    invoke-virtual {p0, v10}, Lcom/google/android/vending/verifier/PackageWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    .local v1, appNameView:Landroid/widget/TextView;
    const v10, 0x7f0801a2

    invoke-virtual {p0, v10}, Lcom/google/android/vending/verifier/PackageWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 81
    .local v5, checkbox:Landroid/widget/CheckBox;
    if-eqz v4, :cond_3

    const v10, 0x7f07028b

    :goto_1
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    .line 83
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 84
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_1
    if-eqz v4, :cond_4

    const v10, 0x7f07028d

    :goto_2
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 89
    const v10, 0x7f07028e

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v0, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/google/android/vending/verifier/PackageWarningDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_2
    if-eqz v4, :cond_5

    .line 92
    const v10, 0x7f0200b5

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 99
    :goto_3
    const v10, 0x7f080069

    invoke-virtual {p0, v10}, Lcom/google/android/vending/verifier/PackageWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/layout/ButtonBar;

    iput-object v10, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    .line 100
    iget-object v10, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v10, p0}, Lcom/google/android/finsky/layout/ButtonBar;->setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V

    .line 101
    if-eqz v4, :cond_6

    .line 102
    iget-object v10, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v10, v12}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonVisible(Z)V

    .line 103
    iget-object v10, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v11, 0x7f07019f

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/ButtonBar;->setNegativeButtonTitle(I)V

    goto/16 :goto_0

    .line 81
    :cond_3
    const v10, 0x7f07028a

    goto :goto_1

    .line 86
    :cond_4
    const v10, 0x7f07028c

    goto :goto_2

    .line 95
    :cond_5
    const v10, 0x7f0200bc

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_3

    .line 105
    :cond_6
    iget-object v10, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v11, 0x7f070106

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonTitle(I)V

    .line 106
    iget-object v10, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v11, 0x7f070059

    invoke-virtual {v10, v11}, Lcom/google/android/finsky/layout/ButtonBar;->setNegativeButtonTitle(I)V

    .line 107
    iget-object v10, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v10, v12}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonEnabled(Z)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mId:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->registerDialog(ILandroid/app/Activity;)Z

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 132
    return-void
.end method

.method public onNegativeButtonClick()V
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mId:I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportUserChoice(II)V

    .line 153
    iget v0, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mId:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->registerDialog(ILandroid/app/Activity;)Z

    .line 154
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/PackageWarningDialog;->finish()V

    .line 155
    return-void
.end method

.method public onPositiveButtonClick()V
    .locals 2

    .prologue
    .line 145
    iget v0, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mId:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportUserChoice(II)V

    .line 146
    iget v0, p0, Lcom/google/android/vending/verifier/PackageWarningDialog;->mId:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->registerDialog(ILandroid/app/Activity;)Z

    .line 147
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/PackageWarningDialog;->finish()V

    .line 148
    return-void
.end method

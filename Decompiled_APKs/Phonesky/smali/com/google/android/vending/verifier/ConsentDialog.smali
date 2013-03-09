.class public Lcom/google/android/vending/verifier/ConsentDialog;
.super Landroid/app/Activity;
.source "ConsentDialog.java"

# interfaces
.implements Lcom/google/android/finsky/layout/ButtonBar$ClickListener;


# static fields
.field private static KEY_VERIFICATION_ID:Ljava/lang/String;


# instance fields
.field private mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

.field private mId:I

.field private mResponseSent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "verification_id"

    sput-object v0, Lcom/google/android/vending/verifier/ConsentDialog;->KEY_VERIFICATION_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/ConsentDialog;->mResponseSent:Z

    return-void
.end method

.method private clearFinishOnTouchOutside()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/vending/verifier/ConsentDialog;->setFinishOnTouchOutside(Z)V

    .line 68
    return-void
.end method

.method public static show(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/vending/verifier/ConsentDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    const/high16 v1, 0x5000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 30
    sget-object v1, Lcom/google/android/vending/verifier/ConsentDialog;->KEY_VERIFICATION_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v1, 0x7f0400c5

    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/ConsentDialog;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/google/android/vending/verifier/ConsentDialog;->clearFinishOnTouchOutside()V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/ConsentDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/google/android/vending/verifier/ConsentDialog;->KEY_VERIFICATION_ID:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/vending/verifier/ConsentDialog;->mId:I

    .line 48
    iget v1, p0, Lcom/google/android/vending/verifier/ConsentDialog;->mId:I

    invoke-static {v1, p0}, Lcom/google/android/vending/verifier/PackageVerificationService;->registerDialog(ILandroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/ConsentDialog;->finish()V

    .line 58
    :goto_0
    return-void

    .line 54
    :cond_0
    const v1, 0x7f080069

    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/ConsentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/ButtonBar;

    iput-object v1, p0, Lcom/google/android/vending/verifier/ConsentDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    .line 55
    iget-object v1, p0, Lcom/google/android/vending/verifier/ConsentDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/layout/ButtonBar;->setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V

    .line 56
    iget-object v1, p0, Lcom/google/android/vending/verifier/ConsentDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v2, 0x7f070293

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonTitle(I)V

    .line 57
    iget-object v1, p0, Lcom/google/android/vending/verifier/ConsentDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v2, 0x7f070292

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/ButtonBar;->setNegativeButtonTitle(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/ConsentDialog;->mResponseSent:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/ConsentDialog;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget v0, p0, Lcom/google/android/vending/verifier/ConsentDialog;->mId:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportConsentDialog(IZ)V

    .line 83
    :cond_0
    iget v0, p0, Lcom/google/android/vending/verifier/ConsentDialog;->mId:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->registerDialog(ILandroid/app/Activity;)Z

    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 85
    return-void
.end method

.method public onNegativeButtonClick()V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/ConsentDialog;->mResponseSent:Z

    .line 100
    iget v0, p0, Lcom/google/android/vending/verifier/ConsentDialog;->mId:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportConsentDialog(IZ)V

    .line 101
    iget v0, p0, Lcom/google/android/vending/verifier/ConsentDialog;->mId:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->registerDialog(ILandroid/app/Activity;)Z

    .line 102
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/ConsentDialog;->finish()V

    .line 103
    return-void
.end method

.method public onPositiveButtonClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lcom/google/android/vending/verifier/ConsentDialog;->mResponseSent:Z

    .line 92
    iget v0, p0, Lcom/google/android/vending/verifier/ConsentDialog;->mId:I

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->reportConsentDialog(IZ)V

    .line 93
    iget v0, p0, Lcom/google/android/vending/verifier/ConsentDialog;->mId:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->registerDialog(ILandroid/app/Activity;)Z

    .line 94
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/ConsentDialog;->finish()V

    .line 95
    return-void
.end method

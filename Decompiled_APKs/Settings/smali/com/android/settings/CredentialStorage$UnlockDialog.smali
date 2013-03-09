.class Lcom/android/settings/CredentialStorage$UnlockDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockDialog"
.end annotation


# instance fields
.field private final mButton:Landroid/widget/Button;

.field private final mError:Landroid/widget/TextView;

.field private final mOldPassword:Landroid/widget/TextView;

.field private mUnlockConfirmed:Z

.field final synthetic this$0:Lcom/android/settings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings/CredentialStorage;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 382
    iput-object p1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 383
    const v3, 0x7f04001e

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 386
    .local v2, view:Landroid/view/View;
    #getter for: Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->access$600(Lcom/android/settings/CredentialStorage;)I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 387
    invoke-virtual {p1}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0c3b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 396
    .local v1, text:Ljava/lang/CharSequence;
    :goto_0
    const v3, 0x7f08003c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    const v3, 0x7f08003e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 398
    const v3, 0x7f080040

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    .line 399
    iget-object v3, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 400
    const v3, 0x7f08003d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    .line 402
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c0c33

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v3, v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 408
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 409
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 410
    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    .line 411
    iget-object v3, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 412
    return-void

    .line 388
    .end local v0           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_0
    #getter for: Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->access$600(Lcom/android/settings/CredentialStorage;)I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    .line 389
    invoke-virtual {p1}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0c3f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/CharSequence;
    goto :goto_0

    .line 390
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_1
    #getter for: Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->access$600(Lcom/android/settings/CredentialStorage;)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 391
    invoke-virtual {p1}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0c40

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 393
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_2
    const v3, 0x7f0c0c41

    new-array v4, v5, [Ljava/lang/Object;

    #getter for: Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->access$600(Lcom/android/settings/CredentialStorage;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Lcom/android/settings/CredentialStorage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/CharSequence;
    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage$UnlockDialog;-><init>(Lcom/android/settings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 415
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 416
    return-void

    .line 415
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 419
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 425
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    .line 426
    return-void

    .line 425
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 429
    iget-boolean v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    if-eqz v1, :cond_3

    .line 430
    iput-boolean v3, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    .line 431
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    #getter for: Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/android/settings/CredentialStorage;->access$500(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 433
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    #getter for: Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/android/settings/CredentialStorage;->access$500(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    .line 434
    .local v0, error:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    #setter for: Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v4}, Lcom/android/settings/CredentialStorage;->access$602(Lcom/android/settings/CredentialStorage;I)I

    .line 436
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    const v2, 0x7f0c0c44

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 441
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    #calls: Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V
    invoke-static {v1}, Lcom/android/settings/CredentialStorage;->access$700(Lcom/android/settings/CredentialStorage;)V

    .line 458
    .end local v0           #error:I
    :cond_0
    :goto_0
    return-void

    .line 442
    .restart local v0       #error:I
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 443
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    #setter for: Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v4}, Lcom/android/settings/CredentialStorage;->access$602(Lcom/android/settings/CredentialStorage;I)I

    .line 444
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    const v2, 0x7f0c0c42

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 448
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    #calls: Lcom/android/settings/CredentialStorage;->handleUnlockOrInstall()V
    invoke-static {v1}, Lcom/android/settings/CredentialStorage;->access$800(Lcom/android/settings/CredentialStorage;)V

    goto :goto_0

    .line 449
    :cond_2
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    add-int/lit8 v2, v0, -0xa

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v2}, Lcom/android/settings/CredentialStorage;->access$602(Lcom/android/settings/CredentialStorage;I)I

    .line 452
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    #calls: Lcom/android/settings/CredentialStorage;->handleUnlockOrInstall()V
    invoke-static {v1}, Lcom/android/settings/CredentialStorage;->access$800(Lcom/android/settings/CredentialStorage;)V

    goto :goto_0

    .line 457
    .end local v0           #error:I
    :cond_3
    iget-object v1, p0, Lcom/android/settings/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-virtual {v1}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 422
    return-void
.end method

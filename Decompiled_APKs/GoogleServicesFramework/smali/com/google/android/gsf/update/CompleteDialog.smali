.class public Lcom/google/android/gsf/update/CompleteDialog;
.super Landroid/app/Activity;
.source "CompleteDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x3

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gsf/update/CompleteDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, message:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gsf/update/CompleteDialog;->finish()V

    .line 65
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/update/CompleteDialog;->requestWindowFeature(I)Z

    .line 51
    const v2, 0x7f03000b

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/update/CompleteDialog;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gsf/update/CompleteDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f02000c

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 55
    const v2, 0x7f0d002c

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/update/CompleteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    .local v1, tv:Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 57
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v2, 0x7f0d002d

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/update/CompleteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/google/android/gsf/update/CompleteDialog$1;

    invoke-direct {v3, p0}, Lcom/google/android/gsf/update/CompleteDialog$1;-><init>(Lcom/google/android/gsf/update/CompleteDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

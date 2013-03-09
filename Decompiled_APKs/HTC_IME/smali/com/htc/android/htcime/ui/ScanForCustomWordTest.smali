.class public Lcom/htc/android/htcime/ui/ScanForCustomWordTest;
.super Lcom/htc/android/htcime/ui/AddWord;
.source "ScanForCustomWordTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/AddWord;-><init>()V

    return-void
.end method


# virtual methods
.method protected keyboardTypeLayoutCheck()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Lcom/htc/android/htcime/ui/AddWord;->keyboardTypeLayoutCheck()V

    .line 31
    iget-object v0, p0, Lcom/htc/android/htcime/ui/ScanForCustomWordTest;->mAWText:Landroid/widget/EditText;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 32
    return-void
.end method

.method protected submitWord()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "htc.android.intent.action.SCAN_FOR_CUSTOM_WORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, I:Landroid/content/Intent;
    const-string v1, "article"

    iget-object v2, p0, Lcom/htc/android/htcime/ui/ScanForCustomWordTest;->mAWText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/ScanForCustomWordTest;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    return-void
.end method

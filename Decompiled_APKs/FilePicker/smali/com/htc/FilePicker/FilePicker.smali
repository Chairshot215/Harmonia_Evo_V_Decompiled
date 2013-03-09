.class public Lcom/htc/FilePicker/FilePicker;
.super Lcom/htc/app/FilePickerActivity;
.source "FilePicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/app/FilePickerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/htc/app/FilePickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/htc/FilePicker/FilePicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/FilePicker/FilePicker;->initialFilePicker(Landroid/content/Intent;)V

    .line 21
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lcom/htc/app/FilePickerActivity;->onDestroy()V

    .line 62
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Lcom/htc/app/FilePickerActivity;->onPause()V

    .line 52
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/htc/app/FilePickerActivity;->onRestart()V

    .line 47
    return-void
.end method

.method public onResult([Ljava/lang/String;II)V
    .locals 2
    .parameter "output"
    .parameter "sortType"
    .parameter "sortOrder"

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/htc/FilePicker/FilePicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 27
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sort_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    const-string v1, "sort_order"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/FilePicker/FilePicker;->setResult(ILandroid/content/Intent;)V

    .line 31
    invoke-virtual {p0}, Lcom/htc/FilePicker/FilePicker;->finish()V

    .line 32
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/htc/app/FilePickerActivity;->onResume()V

    .line 42
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lcom/htc/app/FilePickerActivity;->onStart()V

    .line 37
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/htc/app/FilePickerActivity;->onStop()V

    .line 57
    return-void
.end method

.class public Lcom/htc/lmw/steps/BasePhoneActivity;
.super Landroid/app/Activity;
.source "BasePhoneActivity.java"


# instance fields
.field protected wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 105
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    invoke-virtual {v0}, Lcom/htc/lmw/steps/WizardActivityBase;->onAttachedToWindow()V

    .line 108
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    invoke-virtual {v0, p1}, Lcom/htc/lmw/steps/WizardActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 18
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    invoke-virtual {v0, p1}, Lcom/htc/lmw/steps/WizardActivityBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 81
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 33
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    invoke-virtual {v0}, Lcom/htc/lmw/steps/WizardActivityBase;->onDestroy()V

    .line 36
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 51
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lmw/steps/WizardActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 54
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    invoke-virtual {v0, p1}, Lcom/htc/lmw/steps/WizardActivityBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 99
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 114
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    invoke-virtual {v0}, Lcom/htc/lmw/steps/WizardActivityBase;->onPause()V

    .line 117
    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 24
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    invoke-virtual {v0, p1}, Lcom/htc/lmw/steps/WizardActivityBase;->onPostCreate(Landroid/os/Bundle;)V

    .line 27
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    invoke-virtual {v0, p1}, Lcom/htc/lmw/steps/WizardActivityBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 90
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 70
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    invoke-virtual {v0}, Lcom/htc/lmw/steps/WizardActivityBase;->onResume()V

    .line 73
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    invoke-virtual {v0, p1}, Lcom/htc/lmw/steps/WizardActivityBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 64
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 42
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/htc/lmw/steps/BasePhoneActivity;->wizardInstance:Lcom/htc/lmw/steps/WizardActivityBase;

    invoke-virtual {v0}, Lcom/htc/lmw/steps/WizardActivityBase;->onStop()V

    .line 45
    :cond_0
    return-void
.end method

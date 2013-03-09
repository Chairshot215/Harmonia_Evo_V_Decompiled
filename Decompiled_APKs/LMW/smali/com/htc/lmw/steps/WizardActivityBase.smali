.class public abstract Lcom/htc/lmw/steps/WizardActivityBase;
.super Landroid/app/Activity;
.source "WizardActivityBase.java"


# instance fields
.field protected activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public abstract handleBackPressed()V
.end method

.method public abstract handleNextPressed()V
.end method

.method public abstract onAttachedToWindow()V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;)Z
.end method

.method protected abstract onDestroy()V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method protected abstract onPause()V
.end method

.method protected abstract onPostCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method protected abstract onResume()V
.end method

.method public abstract onRetainNonConfigurationInstance()Ljava/lang/Object;
.end method

.method protected abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method protected abstract onStop()V
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/htc/lmw/steps/WizardActivityBase;->activity:Landroid/app/Activity;

    .line 19
    return-void
.end method

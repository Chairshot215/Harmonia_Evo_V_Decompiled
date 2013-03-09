.class public Lcom/google/android/gm/LicenseActivity;
.super Landroid/app/Activity;
.source "LicenseActivity.java"


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    const/4 v2, 0x1

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v1, 0x7f040041

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LicenseActivity;->setContentView(I)V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gm/LicenseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 21
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 23
    invoke-static {}, Lcom/google/android/gm/provider/Gmail;->isRunningICSOrLater()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 28
    :cond_0
    const v1, 0x7f0f0006

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/google/android/gm/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 29
    iget-object v1, p0, Lcom/google/android/gm/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "file:///android_res/raw/licenses.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gm/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 36
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 40
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gm/LicenseActivity;->finish()V

    .line 42
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

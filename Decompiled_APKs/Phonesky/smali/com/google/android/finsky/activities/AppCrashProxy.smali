.class public Lcom/google/android/finsky/activities/AppCrashProxy;
.super Landroid/app/Activity;
.source "AppCrashProxy.java"


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
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AppCrashProxy;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 20
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.feedback"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AppCrashProxy;->startActivity(Landroid/content/Intent;)V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AppCrashProxy;->finish()V

    .line 24
    return-void
.end method

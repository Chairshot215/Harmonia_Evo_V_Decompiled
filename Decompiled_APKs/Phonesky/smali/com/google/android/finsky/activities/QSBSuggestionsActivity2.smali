.class public Lcom/google/android/finsky/activities/QSBSuggestionsActivity2;
.super Landroid/app/Activity;
.source "QSBSuggestionsActivity2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/QSBSuggestionsActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 18
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/QSBSuggestionsActivity2;->startActivity(Landroid/content/Intent;)V

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/QSBSuggestionsActivity2;->finish()V

    .line 23
    return-void
.end method

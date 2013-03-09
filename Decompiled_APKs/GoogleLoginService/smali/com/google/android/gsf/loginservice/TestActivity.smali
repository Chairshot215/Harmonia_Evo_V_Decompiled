.class public Lcom/google/android/gsf/loginservice/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;
    }
.end annotation


# static fields
.field private static runners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/loginservice/TestActivity;->runners:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 136
    sget-object v1, Lcom/google/android/gsf/loginservice/TestActivity;->runners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;

    .line 137
    .local v0, runner:Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;->onActivityResult(Lcom/google/android/gsf/loginservice/TestActivity;IILandroid/content/Intent;)V

    .line 140
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/TestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "cmd"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 104
    .local v0, cmd:I
    sget-object v2, Lcom/google/android/gsf/loginservice/TestActivity;->runners:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;

    .line 105
    .local v1, runner:Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;
    if-nez v1, :cond_1

    .line 106
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/loginservice/TestActivity;->setResult(I)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/TestActivity;->finish()V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/google/android/gsf/loginservice/TestActivity$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/android/gsf/loginservice/TestActivity$1;-><init>(Lcom/google/android/gsf/loginservice/TestActivity;Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;Landroid/os/Bundle;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 125
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v1, p0, p1}, Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;->onCreate(Lcom/google/android/gsf/loginservice/TestActivity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

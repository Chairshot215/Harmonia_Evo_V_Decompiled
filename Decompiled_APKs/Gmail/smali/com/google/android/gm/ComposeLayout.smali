.class public abstract Lcom/google/android/gm/ComposeLayout;
.super Ljava/lang/Object;
.source "ComposeLayout.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/app/Activity;Lcom/google/android/gm/ComposeController;)Lcom/google/android/gm/ComposeLayout;
    .locals 2
    .parameter "activity"
    .parameter "controller"

    .prologue
    .line 22
    invoke-static {p0}, Lcom/google/android/gm/Utils;->useTabletUI(Landroid/content/Context;)Z

    move-result v0

    .line 24
    .local v0, useTabletUi:Z
    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gm/XLargeComposeLayout;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gm/XLargeComposeLayout;-><init>(Landroid/app/Activity;Lcom/google/android/gm/ComposeController;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/gm/DefaultComposeLayout;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gm/DefaultComposeLayout;-><init>(Landroid/app/Activity;Lcom/google/android/gm/ComposeController;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract enableSave(Z)V
.end method

.method public abstract enableSend(Z)V
.end method

.method public abstract hideOrShowBcc(Z)V
.end method

.method public abstract hideOrShowCcBcc(ZZ)V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;Z)Z
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract setComposeArea(Lcom/google/android/gm/ComposeAreaController;)V
.end method

.method public abstract setupLayout()V
.end method

.method public abstract shouldShowToast(I)Z
.end method

.method public abstract updateComposeMode(I)V
.end method

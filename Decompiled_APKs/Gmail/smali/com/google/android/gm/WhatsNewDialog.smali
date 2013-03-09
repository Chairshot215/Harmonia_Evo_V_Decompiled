.class public Lcom/google/android/gm/WhatsNewDialog;
.super Landroid/app/AlertDialog;
.source "WhatsNewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 20
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/google/android/gm/WhatsNewDialog;->setTitle(I)V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/WhatsNewDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 22
    const/4 v0, -0x1

    const v1, 0x104000a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/google/android/gm/WhatsNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/WhatsNewDialog;->setInverseBackgroundForced(Z)V

    .line 25
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 27
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f040058

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/WhatsNewDialog;->setView(Landroid/view/View;IIII)V

    .line 29
    invoke-static {p1}, Lcom/google/android/gm/Utils;->getVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 30
    .local v7, version:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 31
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v0

    invoke-virtual {v0, p1, v7}, Lcom/google/android/gm/persistence/Persistence;->setHasShownWhatsNew(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 38
    return-void
.end method

.class public Lcom/google/android/gm/SyncWindowUpgradeDialog;
.super Landroid/app/AlertDialog;
.source "SyncWindowUpgradeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 34
    const v1, 0x7f0c002a

    invoke-virtual {p0, v1}, Lcom/google/android/gm/SyncWindowUpgradeDialog;->setTitle(I)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f03

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/SyncWindowUpgradeDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 36
    const/4 v1, -0x1

    const v2, 0x104000a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p0}, Lcom/google/android/gm/SyncWindowUpgradeDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 38
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 40
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/SyncWindowUpgradeDialog;->setView(Landroid/view/View;)V

    .line 43
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gm/persistence/Persistence;->setUpgradeSyncWindow(Landroid/content/Context;Z)V

    .line 44
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 48
    const v2, 0x7f0f00bd

    invoke-virtual {p0, v2}, Lcom/google/android/gm/SyncWindowUpgradeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 50
    .local v0, confirmView:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    new-instance v1, Lcom/google/android/gm/SyncWindowUpgradeDialog$1;

    invoke-direct {v1, p0}, Lcom/google/android/gm/SyncWindowUpgradeDialog$1;-><init>(Lcom/google/android/gm/SyncWindowUpgradeDialog;)V

    .line 77
    .local v1, setSyncWindowTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Landroid/content/Context;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gm/SyncWindowUpgradeDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    .end local v1           #setSyncWindowTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Landroid/content/Context;Ljava/lang/Void;Ljava/lang/Void;>;"
    :cond_0
    return-void
.end method

.class public Lcom/htc/preference/HtcPreferenceScreen;
.super Lcom/htc/preference/HtcPreferenceGroup;
.source "HtcPreferenceScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcPreferenceScreen$SavedState;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mRootAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcPreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceScreen;->bind(Landroid/widget/ListView;)V

    new-instance v1, Landroid/app/Dialog;

    const v3, 0x1030006

    invoke-direct {v1, v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/htc/preference/HtcPreferenceScreen;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/widget/ListView;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->onAttachedToActivity()V

    goto :goto_0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreateRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    new-instance v0, Lcom/htc/preference/HtcPreferenceGroupAdapter;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;-><init>(Lcom/htc/preference/HtcPreferenceGroup;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceScreen;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    instance-of v2, p1, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/htc/preference/HtcPreference;

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreference;->performClick(Lcom/htc/preference/HtcPreferenceScreen;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/preference/HtcPreferenceScreen$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/htc/preference/HtcPreferenceScreen$SavedState;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Lcom/htc/preference/HtcPreferenceScreen$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/htc/preference/HtcPreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceScreen;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/htc/preference/HtcPreferenceScreen$SavedState;

    invoke-direct {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/htc/preference/HtcPreferenceScreen$SavedState;->isDialogShowing:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/preference/HtcPreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

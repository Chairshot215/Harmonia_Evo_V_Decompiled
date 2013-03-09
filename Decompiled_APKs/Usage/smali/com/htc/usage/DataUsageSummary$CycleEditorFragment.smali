.class public Lcom/htc/usage/DataUsageSummary$CycleEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleEditorFragment"
.end annotation


# static fields
.field private static final EXTRA_TEMPLATE:Ljava/lang/String; = "template"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1835
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/htc/usage/DataUsageSummary;)V
    .locals 4
    .parameter "parent"

    .prologue
    .line 1839
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1848
    :goto_0
    return-void

    .line 1841
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1842
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "template"

    #getter for: Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/htc/usage/DataUsageSummary;->access$1100(Lcom/htc/usage/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1844
    new-instance v1, Lcom/htc/usage/DataUsageSummary$CycleEditorFragment;

    invoke-direct {v1}, Lcom/htc/usage/DataUsageSummary$CycleEditorFragment;-><init>()V

    .line 1845
    .local v1, dialog:Lcom/htc/usage/DataUsageSummary$CycleEditorFragment;
    invoke-virtual {v1, v0}, Lcom/htc/usage/DataUsageSummary$CycleEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1846
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/htc/usage/DataUsageSummary$CycleEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1847
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "cycleEditor"

    invoke-virtual {v1, v2, v3}, Lcom/htc/usage/DataUsageSummary$CycleEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x1

    .line 1852
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 1853
    .local v7, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/htc/usage/DataUsageSummary;

    .line 1854
    .local v5, target:Lcom/htc/usage/DataUsageSummary;
    #getter for: Lcom/htc/usage/DataUsageSummary;->mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;
    invoke-static {v5}, Lcom/htc/usage/DataUsageSummary;->access$1300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/net/NetworkPolicyEditor;

    move-result-object v3

    .line 1856
    .local v3, editor:Lcom/htc/usage/net/NetworkPolicyEditor;
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1857
    .local v6, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 1859
    .local v9, dialogInflater:Landroid/view/LayoutInflater;
    const v0, 0x7f030005

    const/4 v1, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v0, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 1860
    .local v10, view:Landroid/view/View;
    const v0, 0x7f07000f

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/usage/widget/NumberPicker;

    .line 1862
    .local v2, cycleDayPicker:Lcom/htc/usage/widget/NumberPicker;
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 1863
    .local v4, template:Landroid/net/NetworkTemplate;
    invoke-virtual {v3, v4}, Lcom/htc/usage/net/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v8

    .line 1865
    .local v8, cycleDay:I
    invoke-virtual {v2, v12}, Lcom/htc/usage/widget/NumberPicker;->setMinValue(I)V

    .line 1866
    const/16 v0, 0x1f

    invoke-virtual {v2, v0}, Lcom/htc/usage/widget/NumberPicker;->setMaxValue(I)V

    .line 1867
    invoke-virtual {v2, v8}, Lcom/htc/usage/widget/NumberPicker;->setValue(I)V

    .line 1868
    invoke-virtual {v2, v12}, Lcom/htc/usage/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1870
    const v0, 0x7f050031

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1871
    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1873
    const v11, 0x7f050033

    new-instance v0, Lcom/htc/usage/DataUsageSummary$CycleEditorFragment$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/usage/DataUsageSummary$CycleEditorFragment$1;-><init>(Lcom/htc/usage/DataUsageSummary$CycleEditorFragment;Lcom/htc/usage/widget/NumberPicker;Lcom/htc/usage/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/htc/usage/DataUsageSummary;)V

    invoke-virtual {v6, v11, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1882
    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

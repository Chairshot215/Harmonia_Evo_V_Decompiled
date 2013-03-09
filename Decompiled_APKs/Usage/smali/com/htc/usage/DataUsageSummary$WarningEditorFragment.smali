.class public Lcom/htc/usage/DataUsageSummary$WarningEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarningEditorFragment"
.end annotation


# static fields
.field private static final EXTRA_TEMPLATE:Ljava/lang/String; = "template"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1889
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/htc/usage/DataUsageSummary;)V
    .locals 4
    .parameter "parent"

    .prologue
    .line 1893
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1902
    :goto_0
    return-void

    .line 1895
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1896
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "template"

    #getter for: Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/htc/usage/DataUsageSummary;->access$1100(Lcom/htc/usage/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1898
    new-instance v1, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment;

    invoke-direct {v1}, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment;-><init>()V

    .line 1899
    .local v1, dialog:Lcom/htc/usage/DataUsageSummary$WarningEditorFragment;
    invoke-virtual {v1, v0}, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1900
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1901
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "warningEditor"

    invoke-virtual {v1, v2, v3}, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 1906
    invoke-virtual/range {p0 .. p0}, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 1907
    .local v7, context:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/htc/usage/DataUsageSummary;

    .line 1908
    .local v5, target:Lcom/htc/usage/DataUsageSummary;
    #getter for: Lcom/htc/usage/DataUsageSummary;->mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;
    invoke-static {v5}, Lcom/htc/usage/DataUsageSummary;->access$1300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/net/NetworkPolicyEditor;

    move-result-object v3

    .line 1910
    .local v3, editor:Lcom/htc/usage/net/NetworkPolicyEditor;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1911
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 1913
    .local v8, dialogInflater:Landroid/view/LayoutInflater;
    const v0, 0x7f030003

    const/4 v1, 0x0

    const/4 v15, 0x0

    invoke-virtual {v8, v0, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 1914
    .local v12, view:Landroid/view/View;
    const v0, 0x7f070006

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/usage/widget/NumberPicker;

    .line 1916
    .local v2, bytesPicker:Lcom/htc/usage/widget/NumberPicker;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 1917
    .local v4, template:Landroid/net/NetworkTemplate;
    invoke-virtual {v3, v4}, Lcom/htc/usage/net/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v13

    .line 1918
    .local v13, warningBytes:J
    invoke-virtual {v3, v4}, Lcom/htc/usage/net/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v9

    .line 1920
    .local v9, limitBytes:J
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/htc/usage/widget/NumberPicker;->setMinValue(I)V

    .line 1921
    const-wide/16 v0, -0x1

    cmp-long v0, v9, v0

    if-eqz v0, :cond_1

    .line 1922
    const-wide/32 v0, 0x100000

    div-long v0, v9, v0

    const-wide/16 v15, 0x1

    sub-long/2addr v0, v15

    long-to-int v11, v0

    .line 1923
    .local v11, max:I
    if-ltz v11, :cond_0

    .end local v11           #max:I
    :goto_0
    invoke-virtual {v2, v11}, Lcom/htc/usage/widget/NumberPicker;->setMaxValue(I)V

    .line 1927
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/htc/usage/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1928
    const-wide/32 v0, 0x100000

    div-long v0, v13, v0

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/htc/usage/widget/NumberPicker;->setValue(I)V

    .line 1930
    const v0, 0x7f050034

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1931
    invoke-virtual {v6, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1933
    const v15, 0x7f050033

    new-instance v0, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment$1;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment$1;-><init>(Lcom/htc/usage/DataUsageSummary$WarningEditorFragment;Lcom/htc/usage/widget/NumberPicker;Lcom/htc/usage/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/htc/usage/DataUsageSummary;)V

    invoke-virtual {v6, v15, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1945
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 1923
    .restart local v11       #max:I
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 1925
    .end local v11           #max:I
    :cond_1
    const v0, 0x61a7c00

    invoke-virtual {v2, v0}, Lcom/htc/usage/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_1
.end method

.class public Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$EditTextWatcher;
.super Ljava/lang/Object;
.source "ContactSetting.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;


# direct methods
.method public constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$EditTextWatcher;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 659
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isTabletSetting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$EditTextWatcher;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mSearchBar:Lcom/htc/widget/HeaderBarInput;
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$400(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Lcom/htc/widget/HeaderBarInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$EditTextWatcher;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mSearchBar:Lcom/htc/widget/HeaderBarInput;
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$400(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Lcom/htc/widget/HeaderBarInput;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 671
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 676
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$EditTextWatcher;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->SearchByChangedText(Ljava/lang/String;)V

    .line 677
    return-void

    .line 676
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

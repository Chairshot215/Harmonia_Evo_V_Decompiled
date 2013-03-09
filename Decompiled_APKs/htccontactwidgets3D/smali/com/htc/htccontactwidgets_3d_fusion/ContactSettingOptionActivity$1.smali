.class Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity$1;
.super Ljava/lang/Object;
.source "ContactSettingOptionActivity.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;


# direct methods
.method constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .parameter "parent"
    .parameter "child"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .local v0, id:I
    move-object v1, p2

    .line 44
    check-cast v1, Landroid/widget/TextView;

    .line 45
    .local v1, textview:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mstrSettingOptions:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->access$000(Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    sget-object v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mstrGroupName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mMemberCount:I
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->access$100(Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;)I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mstrGroupName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mstrGroupName:Ljava/lang/String;

    const-string v3, "Frequent Contacts"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    :cond_0
    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 53
    invoke-virtual {p2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 54
    invoke-virtual {p2, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 61
    :cond_1
    :goto_0
    return-void

    .line 59
    :cond_2
    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 66
    return-void
.end method

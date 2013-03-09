.class Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity$2;
.super Ljava/lang/Object;
.source "ContactSettingOptionActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


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
    .line 70
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity$2;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v5, 0x0

    .line 73
    if-nez p3, :cond_0

    .line 75
    new-instance v1, Landroid/content/Intent;

    const-string v2, "OpenSettings"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.htccontactwidgets/opensetting"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v2, "com.htc.htccontactwidgets_3d_fusion"

    const-string v3, "com.htc.htccontactwidgets_3d_fusion.ContactSetting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity$2;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 80
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    sget-object v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mstrGroupName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity$2;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mMemberCount:I
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->access$100(Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;)I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mstrGroupName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mstrGroupName:Ljava/lang/String;

    const-string v3, "Frequent Contacts"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    :cond_1
    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 96
    invoke-virtual {p2, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 97
    invoke-virtual {p2, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    goto :goto_0

    .line 100
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.htccontacts"

    const-string v4, "com.android.htccontacts.group.GroupEditActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 102
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v2, "GROUP_ID"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const-string v2, "GROUP_NAME"

    sget-object v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->mstrGroupName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    :try_start_1
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity$2;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSettingOptionActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 107
    :catch_2
    move-exception v0

    .line 108
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_3
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

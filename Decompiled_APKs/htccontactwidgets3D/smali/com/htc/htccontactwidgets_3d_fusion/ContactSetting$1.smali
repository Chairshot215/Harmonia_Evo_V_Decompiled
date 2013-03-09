.class Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$1;
.super Ljava/lang/Object;
.source "ContactSetting.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;


# direct methods
.method constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

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

    const/4 v4, -0x1

    .line 140
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupList:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$000(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mContactSettingActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$100(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 147
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 149
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isTabletSetting()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    if-eq p3, v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget-object v2, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mCursorAdapter:Landroid/widget/CursorAdapter;

    add-int/lit8 v3, p3, -0x2

    invoke-virtual {v2, v3}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 161
    .local v0, c:Landroid/database/Cursor;
    const-string v2, "group_name"

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getName(Landroid/database/Cursor;Z)Ljava/lang/String;
    invoke-static {v3, v0, v5}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$200(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    invoke-virtual {v2, v4, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->setResult(ILandroid/content/Intent;)V

    .line 166
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    invoke-virtual {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->finish()V

    goto :goto_0

    .line 171
    .end local v0           #c:Landroid/database/Cursor;
    :cond_2
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget-object v2, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v2, p3}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 173
    .restart local v0       #c:Landroid/database/Cursor;
    const-string v2, "group_name"

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getName(Landroid/database/Cursor;Z)Ljava/lang/String;
    invoke-static {v3, v0, v5}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$200(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    invoke-virtual {v2, v4, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->setResult(ILandroid/content/Intent;)V

    .line 178
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$1;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    invoke-virtual {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->finish()V

    goto :goto_0
.end method

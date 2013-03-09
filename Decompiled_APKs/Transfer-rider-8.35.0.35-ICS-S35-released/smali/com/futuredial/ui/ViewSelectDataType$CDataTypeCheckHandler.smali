.class public Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;
.super Lcom/futuredial/ui/CMultiCheckHandle;
.source "ViewSelectDataType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/ui/ViewSelectDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CDataTypeCheckHandler"
.end annotation


# instance fields
.field bImported:Z

.field index:I

.field final synthetic this$0:Lcom/futuredial/ui/ViewSelectDataType;


# direct methods
.method public constructor <init>(Lcom/futuredial/ui/ViewSelectDataType;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 104
    iput-object p1, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    invoke-direct {p0}, Lcom/futuredial/ui/CMultiCheckHandle;-><init>()V

    .line 106
    iput-boolean v0, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->bImported:Z

    .line 107
    iput v0, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->index:I

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .line 110
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iput p3, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->index:I

    .line 111
    iget-object v3, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, v3, Lcom/futuredial/ui/ViewSelectDataType;->map:Ljava/util/HashMap;

    .line 112
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->map:Ljava/util/HashMap;

    const-string v3, "impMark"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v3, v3, Lcom/futuredial/ui/ViewSelectDataType;->importedText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->ViewName:Ljava/lang/String;

    const-string v3, "click imported item"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->bImported:Z

    .line 121
    :goto_0
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->map:Ljava/util/HashMap;

    const-string v3, "checkbox"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 123
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->ViewName:Ljava/lang/String;

    const-string v3, "select item"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-boolean v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->bImported:Z

    if-eqz v2, :cond_2

    .line 126
    new-instance v2, Lcom/futuredial/ui/DialogManager$Builder;

    iget-object v3, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v3, v3, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v2, v3}, Lcom/futuredial/ui/DialogManager$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060189

    new-instance v4, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$3;

    invoke-direct {v4, p0}, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$3;-><init>(Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;)V

    invoke-virtual {v2, v3, v4}, Lcom/futuredial/ui/DialogManager$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v3, v3, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v3}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060192

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v2}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060193

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->map:Ljava/util/HashMap;

    const-string v8, "title"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v6, v7

    const/4 v2, 0x1

    sget-object v7, Lcom/futuredial/ui/ViewSelectDataType;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v7, v7, Lcom/futuredial/service/DMIPhone;->m_bt:Lcom/futuredial/service/DMIBTDevice;

    iget-object v7, v7, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06018b

    new-instance v4, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$2;

    invoke-direct {v4, p0}, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$2;-><init>(Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$1;

    invoke-direct {v3, p0}, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$1;-><init>(Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 201
    :goto_1
    invoke-virtual {p0}, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->setButton()V

    .line 203
    sget-object v2, Lcom/futuredial/ui/ViewSelectDataType;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v2, v2, Lcom/futuredial/service/DMIPhone;->m_phoneProcType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PBAP_TYPE_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->m_selectedItems:Lcom/futuredial/ui/ListData;

    iget-object v2, v2, Lcom/futuredial/ui/ListData;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    new-instance v2, Lcom/futuredial/ui/DialogManager$Builder;

    iget-object v3, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v3, v3, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v2, v3}, Lcom/futuredial/ui/DialogManager$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v3, v3, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v3}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06024a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/futuredial/ui/ViewSelectDataType;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v7, v7, Lcom/futuredial/service/DMIPhone;->m_bt:Lcom/futuredial/service/DMIBTDevice;

    iget-object v7, v7, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/futuredial/ui/DialogManager$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06020e

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06018b

    new-instance v4, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$4;

    invoke-direct {v4, p0}, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler$4;-><init>(Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 219
    :cond_0
    return-void

    .line 118
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->bImported:Z

    goto/16 :goto_0

    .line 166
    :cond_2
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->map:Ljava/util/HashMap;

    const-string v3, "checkbox"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->map:Ljava/util/HashMap;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 168
    .local v0, id:I
    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    .line 169
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, status:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 171
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->m_selectedItems:Lcom/futuredial/ui/ListData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v4, v4, Lcom/futuredial/ui/ViewSelectDataType;->map:Ljava/util/HashMap;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/futuredial/ui/ListData;->add(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 188
    .end local v1           #status:Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->m_adapter:Lcom/futuredial/ui/DMISimpleAdapter;

    invoke-virtual {v2}, Lcom/futuredial/ui/DMISimpleAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 172
    .restart local v1       #status:Ljava/lang/String;
    :cond_4
    const-string v2, "removed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 173
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->map:Ljava/util/HashMap;

    const-string v3, "checkbox"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v3, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    const v4, 0x7f060219

    invoke-virtual {v3, v4}, Lcom/futuredial/ui/ViewSelectDataType;->get_resource_string(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 176
    :cond_5
    const-string v2, "bad_removal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 177
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->map:Ljava/util/HashMap;

    const-string v3, "checkbox"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v3, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    const v4, 0x7f060219

    invoke-virtual {v3, v4}, Lcom/futuredial/ui/ViewSelectDataType;->get_resource_string(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 181
    :cond_6
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->map:Ljava/util/HashMap;

    const-string v3, "checkbox"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v3, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    const v4, 0x7f060221

    invoke-virtual {v3, v4}, Lcom/futuredial/ui/ViewSelectDataType;->get_resource_string(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 186
    .end local v1           #status:Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->m_selectedItems:Lcom/futuredial/ui/ListData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v4, v4, Lcom/futuredial/ui/ViewSelectDataType;->map:Ljava/util/HashMap;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/futuredial/ui/ListData;->add(Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 193
    .end local v0           #id:I
    :cond_8
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->ViewName:Ljava/lang/String;

    const-string v3, "un-select item"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->map:Ljava/util/HashMap;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 196
    .restart local v0       #id:I
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->m_selectedItems:Lcom/futuredial/ui/ListData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/futuredial/ui/ListData;->removeByIndex(Ljava/lang/Integer;)V

    .line 197
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->map:Ljava/util/HashMap;

    const-string v3, "checkbox"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v2, v2, Lcom/futuredial/ui/ViewSelectDataType;->m_adapter:Lcom/futuredial/ui/DMISimpleAdapter;

    invoke-virtual {v2}, Lcom/futuredial/ui/DMISimpleAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1
.end method

.method setButton()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 223
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->m_selectedItems:Lcom/futuredial/ui/ListData;

    iget-object v0, v0, Lcom/futuredial/ui/ListData;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectDataType;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setClickable(Z)V

    .line 226
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectDataType;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectDataType;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setClickable(Z)V

    .line 231
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;->this$0:Lcom/futuredial/ui/ViewSelectDataType;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectDataType;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0
.end method

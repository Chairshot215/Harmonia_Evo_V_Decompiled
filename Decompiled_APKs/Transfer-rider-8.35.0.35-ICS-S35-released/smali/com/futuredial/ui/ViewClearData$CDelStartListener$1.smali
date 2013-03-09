.class Lcom/futuredial/ui/ViewClearData$CDelStartListener$1;
.super Ljava/lang/Object;
.source "ViewClearData.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/ViewClearData$CDelStartListener;->cancelClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/futuredial/ui/ViewClearData$CDelStartListener;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewClearData$CDelStartListener;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener$1;->this$1:Lcom/futuredial/ui/ViewClearData$CDelStartListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v9, 0x0

    .line 129
    iget-object v6, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener$1;->this$1:Lcom/futuredial/ui/ViewClearData$CDelStartListener;

    iget-object v6, v6, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->this$0:Lcom/futuredial/ui/ViewClearData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewClearData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v6, v6, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {v6, p1}, Lcom/futuredial/ui/DialogManager;->unreg_dialog(Landroid/app/Dialog;)V

    .line 130
    iget-object v6, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener$1;->this$1:Lcom/futuredial/ui/ViewClearData$CDelStartListener;

    #setter for: Lcom/futuredial/ui/ViewClearData$CDelStartListener;->bClick:Z
    invoke-static {v6, v9}, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->access$002(Lcom/futuredial/ui/ViewClearData$CDelStartListener;Z)Z

    .line 131
    iget-object v6, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener$1;->this$1:Lcom/futuredial/ui/ViewClearData$CDelStartListener;

    iget-object v6, v6, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->this$0:Lcom/futuredial/ui/ViewClearData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewClearData;->ViewName:Ljava/lang/String;

    const-string v7, "[ok] clicked"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v6, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener$1;->this$1:Lcom/futuredial/ui/ViewClearData$CDelStartListener;

    iget-object v6, v6, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->this$0:Lcom/futuredial/ui/ViewClearData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewClearData;->m_pdDeling:Landroid/app/ProgressDialog;

    iget-object v7, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener$1;->this$1:Lcom/futuredial/ui/ViewClearData$CDelStartListener;

    iget-object v7, v7, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->this$0:Lcom/futuredial/ui/ViewClearData;

    const v8, 0x7f060185

    invoke-virtual {v7, v8}, Lcom/futuredial/ui/ViewClearData;->get_resource_string(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v6, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener$1;->this$1:Lcom/futuredial/ui/ViewClearData$CDelStartListener;

    iget-object v6, v6, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->this$0:Lcom/futuredial/ui/ViewClearData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewClearData;->m_pdDeling:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 136
    iget-object v6, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener$1;->this$1:Lcom/futuredial/ui/ViewClearData$CDelStartListener;

    iget-object v6, v6, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->this$0:Lcom/futuredial/ui/ViewClearData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewClearData;->m_pdDeling:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 139
    iget-object v6, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener$1;->this$1:Lcom/futuredial/ui/ViewClearData$CDelStartListener;

    iget-object v6, v6, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->this$0:Lcom/futuredial/ui/ViewClearData;

    const-string v7, "rmModing"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/futuredial/ui/ViewClearData;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    iget-object v6, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener$1;->this$1:Lcom/futuredial/ui/ViewClearData$CDelStartListener;

    iget-object v6, v6, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->this$0:Lcom/futuredial/ui/ViewClearData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewClearData;->m_delModSelector:Lcom/futuredial/ui/CMultiCheckHandle;

    iget-object v0, v6, Lcom/futuredial/ui/CMultiCheckHandle;->m_selectedItems:Lcom/futuredial/ui/ListData;

    .line 143
    .local v0, delMods:Lcom/futuredial/ui/ListData;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v5, rmModules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, v0, Lcom/futuredial/ui/ListData;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 146
    iget-object v6, v0, Lcom/futuredial/ui/ListData;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/futuredial/ui/ListItem;

    iget-object v3, v6, Lcom/futuredial/ui/ListItem;->itemName:Ljava/lang/String;

    .line 147
    .local v3, mName:Ljava/lang/String;
    iget-object v6, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener$1;->this$1:Lcom/futuredial/ui/ViewClearData$CDelStartListener;

    iget-object v6, v6, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->this$0:Lcom/futuredial/ui/ViewClearData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewClearData;->m_phone:Lcom/futuredial/service/DMIPhone;

    invoke-virtual {v6, v3}, Lcom/futuredial/service/DMIPhone;->get_modulebyName(Ljava/lang/String;)Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    move-result-object v2

    .line 151
    .local v2, m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    iget-object v4, v2, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    .line 152
    .local v4, mid:Ljava/lang/Integer;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v2           #m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    .end local v3           #mName:Ljava/lang/String;
    .end local v4           #mid:Ljava/lang/Integer;
    :cond_0
    iget-object v6, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener$1;->this$1:Lcom/futuredial/ui/ViewClearData$CDelStartListener;

    iget-object v6, v6, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->this$0:Lcom/futuredial/ui/ViewClearData;

    iget-object v6, v6, Lcom/futuredial/ui/ViewClearData;->ViewName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modules to be cleaned :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v6, Lcom/futuredial/ui/DMIUI;->DMIsrv:Lcom/futuredial/service/DMISrvInterface;

    iget-object v7, p0, Lcom/futuredial/ui/ViewClearData$CDelStartListener$1;->this$1:Lcom/futuredial/ui/ViewClearData$CDelStartListener;

    iget-object v7, v7, Lcom/futuredial/ui/ViewClearData$CDelStartListener;->this$0:Lcom/futuredial/ui/ViewClearData;

    iget-object v7, v7, Lcom/futuredial/ui/ViewClearData;->m_phone:Lcom/futuredial/service/DMIPhone;

    invoke-interface {v6, v7, v5}, Lcom/futuredial/service/DMISrvInterface;->dmi_clean_module(Lcom/futuredial/service/DMIPhone;Ljava/util/ArrayList;)V

    .line 157
    return-void
.end method

.class Lcom/htc/providers/uploads/uploadUI/StatusHelper$1;
.super Ljava/lang/Object;
.source "StatusHelper.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/providers/uploads/uploadUI/StatusHelper;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;


# direct methods
.method constructor <init>(Lcom/htc/providers/uploads/uploadUI/StatusHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$1;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
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
    .line 156
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;

    .line 157
    .local v2, object:Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;
    invoke-virtual {v2}, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->getUploadItem()Lcom/htc/providers/uploads/UploadItem;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 158
    iget-object v5, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$1;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    invoke-virtual {v2}, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->getUploadItem()Lcom/htc/providers/uploads/UploadItem;

    move-result-object v6

    iput-object v6, v5, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->currentItem:Lcom/htc/providers/uploads/UploadItem;

    .line 159
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 162
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v5, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$1;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget-object v5, v5, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->currentItem:Lcom/htc/providers/uploads/UploadItem;

    invoke-interface {v5}, Lcom/htc/providers/uploads/UploadItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 163
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;

    invoke-virtual {v5}, Lcom/htc/providers/uploads/uploadUI/widget/HtcSimpleSeparable;->getSeparateID()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, tag:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 166
    .local v4, tagId:I
    new-instance v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemAdapter;

    iget-object v6, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$1;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    invoke-static {}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->access$000()Ljava/util/Hashtable;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;

    iget-object v5, v5, Lcom/htc/providers/uploads/uploadUI/StatusHelper$BaseStatus;->MoreActions:[Ljava/lang/String;

    invoke-direct {v0, v6, v5}, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemAdapter;-><init>(Lcom/htc/providers/uploads/uploadUI/StatusHelper;[Ljava/lang/String;)V

    .line 168
    .local v0, adapter:Landroid/widget/ListAdapter;
    new-instance v5, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;

    iget-object v6, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$1;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    invoke-direct {v5, v6}, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemClick;-><init>(Lcom/htc/providers/uploads/uploadUI/StatusHelper;)V

    invoke-virtual {v1, v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 169
    iget-object v5, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$1;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    iput-object v6, v5, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->showingDialog:Landroid/content/DialogInterface;

    .line 170
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 172
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #tagId:I
    :cond_0
    return-void
.end method

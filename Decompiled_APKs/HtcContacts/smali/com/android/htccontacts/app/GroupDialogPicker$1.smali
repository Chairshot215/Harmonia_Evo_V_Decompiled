.class Lcom/android/htccontacts/app/GroupDialogPicker$1;
.super Landroid/os/Handler;
.source "GroupDialogPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/GroupDialogPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/app/GroupDialogPicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/app/GroupDialogPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/htccontacts/app/GroupDialogPicker$1;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 177
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0xf002

    if-ne v1, v2, :cond_1

    .line 178
    iget-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker$1;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    iget-boolean v1, v1, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker$1;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    iget-object v2, p0, Lcom/android/htccontacts/app/GroupDialogPicker$1;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    iget-object v2, v2, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    #calls: Lcom/android/htccontacts/app/GroupDialogPicker;->generateDialog(Lcom/htc/app/HtcAlertController$AlertParams;)Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-static {v1, v2}, Lcom/android/htccontacts/app/GroupDialogPicker;->access$000(Lcom/android/htccontacts/app/GroupDialogPicker;Lcom/htc/app/HtcAlertController$AlertParams;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 180
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker$1;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 181
    iget-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker$1;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    iget-object v1, v1, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 182
    iget-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker$1;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    iget-object v1, v1, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v2, p0, Lcom/android/htccontacts/app/GroupDialogPicker$1;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 183
    iget-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker$1;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    iget-object v2, p0, Lcom/android/htccontacts/app/GroupDialogPicker$1;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    iget-object v2, v2, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/app/GroupDialogPicker;->mListView:Landroid/widget/ListView;

    .line 184
    iget-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker$1;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    iget-object v1, v1, Lcom/android/htccontacts/app/GroupDialogPicker;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/htccontacts/app/GroupDialogPicker$1;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    iget v2, v2, Lcom/android/htccontacts/app/GroupDialogPicker;->mSelectMode:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 185
    iget-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker$1;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    iget-object v1, v1, Lcom/android/htccontacts/app/GroupDialogPicker;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/htccontacts/app/GroupDialogPicker$1;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 186
    iget-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker$1;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    iget-object v2, p0, Lcom/android/htccontacts/app/GroupDialogPicker$1;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    iget-object v2, v2, Lcom/android/htccontacts/app/GroupDialogPicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/app/GroupDialogPicker;->mAdapter:Landroid/widget/ListAdapter;

    .line 187
    iget-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker$1;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    #calls: Lcom/android/htccontacts/app/GroupDialogPicker;->adjustChecks()V
    invoke-static {v1}, Lcom/android/htccontacts/app/GroupDialogPicker;->access$100(Lcom/android/htccontacts/app/GroupDialogPicker;)V

    .line 189
    iget-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker$1;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    iget-object v1, v1, Lcom/android/htccontacts/app/GroupDialogPicker;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/htccontacts/app/GroupDialogPicker$1;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    invoke-static {v2}, Lcom/android/htccontacts/customize/CustomizeResource;->getListItemBgResourceId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 197
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker$1;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker;

    invoke-virtual {v1}, Lcom/android/htccontacts/app/GroupDialogPicker;->finish()V

    goto :goto_0

    .line 195
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

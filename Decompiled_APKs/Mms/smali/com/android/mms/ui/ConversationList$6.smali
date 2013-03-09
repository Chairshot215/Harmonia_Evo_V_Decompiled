.class Lcom/android/mms/ui/ConversationList$6;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter

    .prologue
    .line 1307
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$6;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1309
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$6;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1334
    :cond_0
    :goto_0
    return v3

    .line 1311
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$6;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1312
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 1323
    :sswitch_0
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$6;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-boolean v5, v5, Lcom/android/mms/ui/ConversationListBaseActivity;->mSearchFlag:Z

    if-eqz v5, :cond_0

    .line 1324
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$6;->this$0:Lcom/android/mms/ui/ConversationList;

    iput-boolean v3, v5, Lcom/android/mms/ui/ConversationListBaseActivity;->mSearchFlag:Z

    move v3, v4

    .line 1328
    goto :goto_0

    .line 1314
    :sswitch_1
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$6;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getSelectedItemId()J

    move-result-wide v0

    .line 1315
    .local v0, id:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_2

    .line 1316
    new-instance v2, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$6;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {v2, v5, v0, v1}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(Lcom/android/mms/ui/ConversationList;J)V

    .line 1318
    .local v2, l:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList$6;->this$0:Lcom/android/mms/ui/ConversationList;

    #calls: Lcom/android/mms/ui/ConversationList;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    invoke-static {v5, v2, v3}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;Landroid/content/DialogInterface$OnClickListener;Z)V

    .end local v2           #l:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
    :cond_2
    move v3, v4

    .line 1320
    goto :goto_0

    .line 1312
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

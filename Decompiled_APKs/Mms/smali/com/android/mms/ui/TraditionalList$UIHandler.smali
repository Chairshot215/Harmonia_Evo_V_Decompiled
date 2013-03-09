.class Lcom/android/mms/ui/TraditionalList$UIHandler;
.super Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;
.source "TraditionalList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/TraditionalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TraditionalList;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/TraditionalList;)V
    .locals 0
    .parameter

    .prologue
    .line 1777
    iput-object p1, p0, Lcom/android/mms/ui/TraditionalList$UIHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/TraditionalList;Lcom/android/mms/ui/TraditionalList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1777
    invoke-direct {p0, p1}, Lcom/android/mms/ui/TraditionalList$UIHandler;-><init>(Lcom/android/mms/ui/TraditionalList;)V

    return-void
.end method


# virtual methods
.method public childHandleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const v6, 0x7f0e000f

    const/16 v5, 0x8

    .line 1784
    const-string v2, "TraditionalList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UIHandler] childHandleMessage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1822
    invoke-super {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->childHandleMessage(Landroid/os/Message;)V

    .line 1823
    :cond_0
    :goto_0
    return-void

    .line 1789
    :sswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList$UIHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v3, p0, Lcom/android/mms/ui/TraditionalList$UIHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    #getter for: Lcom/android/mms/ui/TraditionalList;->mUnreadCount:I
    invoke-static {v3}, Lcom/android/mms/ui/TraditionalList;->access$900(Lcom/android/mms/ui/TraditionalList;)I

    move-result v3

    #calls: Lcom/android/mms/ui/TraditionalList;->updateCountText(I)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/TraditionalList;->access$1000(Lcom/android/mms/ui/TraditionalList;I)V

    goto :goto_0

    .line 1800
    :sswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList$UIHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v2, v2, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/TraditionalListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1801
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 1803
    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList$UIHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-virtual {v2, v6}, Lcom/android/mms/ui/TraditionalList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1804
    .local v1, emptyView:Landroid/view/View;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1806
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1810
    :cond_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1815
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #emptyView:Landroid/view/View;
    :sswitch_2
    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList$UIHandler;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-virtual {v2, v6}, Lcom/android/mms/ui/TraditionalList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1816
    .restart local v1       #emptyView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1818
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1786
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

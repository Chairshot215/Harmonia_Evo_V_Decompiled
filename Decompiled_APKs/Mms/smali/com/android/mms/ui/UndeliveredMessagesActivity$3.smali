.class Lcom/android/mms/ui/UndeliveredMessagesActivity$3;
.super Ljava/lang/Object;
.source "UndeliveredMessagesActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/UndeliveredMessagesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/UndeliveredMessagesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$3;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x0

    .line 512
    const v4, 0x7f090036

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 514
    const v4, 0x20c01f4

    invoke-interface {p1, v7, v7, v7, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 516
    const/4 v4, 0x1

    const v5, 0x7f0900ca

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 519
    const/4 v2, 0x0

    .line 521
    .local v2, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_start_0
    move-object v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    const-string v4, "UndeliveredMessagesActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateContextMenu position> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget v4, v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    if-gez v4, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v1

    .line 523
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v4, "UndeliveredMessagesActivity"

    const-string v5, "fail on create context menu"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 528
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$3;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$300(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    move-result-object v4

    iget v5, v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    .line 529
    .local v3, threadCursor:Landroid/database/Cursor;
    if-eqz v3, :cond_0

    .line 530
    const/16 v4, 0x9

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 531
    const/4 v4, 0x2

    const v5, 0x20c01fc

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

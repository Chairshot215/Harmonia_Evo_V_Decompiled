.class Lcom/android/mms/ui/TraditionalList$3;
.super Ljava/lang/Object;
.source "TraditionalList.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/TraditionalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TraditionalList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TraditionalList;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/mms/ui/TraditionalList$3;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
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
    .line 388
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$3;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v0, v0, Lcom/android/mms/ui/TraditionalList;->m_ListAdapter:Lcom/android/mms/ui/TraditionalListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/TraditionalListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 389
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$3;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget v0, v0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    const/16 v7, 0x66

    if-ne v0, v7, :cond_1

    .line 393
    const-wide/16 v1, 0x0

    .line 394
    .local v1, threadId:J
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 395
    .local v3, msgId:J
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 396
    .local v5, msgType:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$3;->this$0:Lcom/android/mms/ui/TraditionalList;

    #calls: Lcom/android/mms/ui/TraditionalList;->editMessage(JJLjava/lang/String;Landroid/database/Cursor;)V
    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/TraditionalList;->access$300(Lcom/android/mms/ui/TraditionalList;JJLjava/lang/String;Landroid/database/Cursor;)V

    .line 407
    .end local v1           #threadId:J
    .end local v3           #msgId:J
    .end local v5           #msgType:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$3;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget v0, v0, Lcom/android/mms/ui/TraditionalList;->m_nFolder:I

    const/16 v7, 0x67

    if-ne v0, v7, :cond_2

    .line 400
    invoke-virtual {p2}, Landroid/view/View;->performLongClick()Z

    goto :goto_0

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$3;->this$0:Lcom/android/mms/ui/TraditionalList;

    #calls: Lcom/android/mms/ui/TraditionalList;->openMessage(Landroid/database/Cursor;)V
    invoke-static {v0, v6}, Lcom/android/mms/ui/TraditionalList;->access$400(Lcom/android/mms/ui/TraditionalList;Landroid/database/Cursor;)V

    goto :goto_0
.end method

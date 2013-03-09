.class Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$InitUIThread;
.super Ljava/lang/Thread;
.source "ContactPhoneMailSelectionListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitUIThread"
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/AddressEntryDataItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;Landroid/os/Handler;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "h"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/AddressEntryDataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p3, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/AddressEntryDataItem;>;"
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$InitUIThread;->this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 257
    iput-object p2, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$InitUIThread;->handler:Landroid/os/Handler;

    .line 258
    iput-object p3, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$InitUIThread;->list:Ljava/util/ArrayList;

    .line 259
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, bBreak:Z
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$InitUIThread;->this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;

    iget-object v5, v5, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1112

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 263
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v3, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/AddressEntryDataItem;>;"
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$InitUIThread;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    .line 265
    .local v1, data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$InitUIThread;->this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;

    #getter for: Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->selfFinish:Z
    invoke-static {v5}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->access$300(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 292
    .end local v1           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    :cond_1
    :goto_1
    return-void

    .line 268
    .restart local v1       #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    :cond_2
    const/4 v4, 0x1

    .line 269
    .local v4, result:Z
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$InitUIThread;->this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;

    #getter for: Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->isPause:Z
    invoke-static {v5}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->access$400(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 270
    const/4 v0, 0x1

    .line 284
    .end local v1           #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    .end local v4           #result:Z
    :cond_3
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$InitUIThread;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 286
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$InitUIThread;->this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;

    iget-object v5, v5, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1113

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 288
    if-nez v0, :cond_1

    .line 289
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$InitUIThread;->handler:Landroid/os/Handler;

    const/16 v6, 0x1111

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 273
    .restart local v1       #data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    .restart local v4       #result:Z
    :cond_4
    iget-boolean v5, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->isSIM:Z

    if-eqz v5, :cond_5

    .line 274
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$InitUIThread;->this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;

    invoke-virtual {v5, v1}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->fillSIMPhoneEntry(Lcom/android/htccontacts/widget/AddressEntryDataItem;)V

    .line 279
    :goto_2
    if-nez v4, :cond_0

    .line 280
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_5
    iget-object v5, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$InitUIThread;->this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;

    iget v6, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->data_rowId:I

    iget v7, v1, Lcom/android/htccontacts/widget/AddressEntryDataItem;->datatype:I

    invoke-virtual {v5, v1, v6, v7}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->fillDataEntry(Lcom/android/htccontacts/widget/AddressEntryDataItem;II)Z

    move-result v4

    goto :goto_2
.end method

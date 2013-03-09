.class Lcom/android/htccontacts/DeDuplicationActivity$DeleteDuplicatedThread;
.super Ljava/lang/Thread;
.source "DeDuplicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/DeDuplicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteDuplicatedThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/DeDuplicationActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/DeDuplicationActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/htccontacts/DeDuplicationActivity$DeleteDuplicatedThread;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    .line 462
    const-string v0, "DeleteDuplicatedThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 463
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 467
    const-string v6, "DeDuplicationActivity"

    const-string v7, "start delete duplicated contacts..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 470
    .local v5, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$DeleteDuplicatedThread;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mListItemDatas:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/htccontacts/DeDuplicationActivity;->access$100(Lcom/android/htccontacts/DeDuplicationActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 471
    iget-object v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$DeleteDuplicatedThread;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mCancel:Z
    invoke-static {v6}, Lcom/android/htccontacts/DeDuplicationActivity;->access$1200(Lcom/android/htccontacts/DeDuplicationActivity;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 472
    const-string v6, "DeDuplicationActivity"

    const-string v7, "mCancel is true, stop deleting duplicated contacts..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :goto_1
    return-void

    .line 475
    :cond_0
    iget-object v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$DeleteDuplicatedThread;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mListItemDatas:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/htccontacts/DeDuplicationActivity;->access$100(Lcom/android/htccontacts/DeDuplicationActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    .line 476
    .local v0, data:Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;
    iget-boolean v6, v0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->isChecked:Z

    if-nez v6, :cond_1

    .line 470
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 479
    :cond_1
    iget-object v6, v0, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->raw_contact_id:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 480
    .local v3, id:J
    const/4 v1, 0x0

    .line 481
    .local v1, deleteUri:Landroid/net/Uri;
    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 482
    iget-object v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$DeleteDuplicatedThread;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-virtual {v6}, Lcom/android/htccontacts/DeDuplicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v1, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 483
    iget-object v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$DeleteDuplicatedThread;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    iget-object v6, v6, Lcom/android/htccontacts/DeDuplicationActivity;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 486
    .end local v0           #data:Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;
    .end local v1           #deleteUri:Landroid/net/Uri;
    .end local v3           #id:J
    :cond_2
    iget-object v6, p0, Lcom/android/htccontacts/DeDuplicationActivity$DeleteDuplicatedThread;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    iget-object v6, v6, Lcom/android/htccontacts/DeDuplicationActivity;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

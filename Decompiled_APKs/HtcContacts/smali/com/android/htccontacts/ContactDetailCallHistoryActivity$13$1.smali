.class Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13$1;
.super Ljava/lang/Object;
.source "ContactDetailCallHistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13;)V
    .locals 0
    .parameter

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13$1;->this$1:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 1560
    :try_start_0
    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13$1;->this$1:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13;

    iget-object v8, v8, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$2900(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v9, -0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1562
    .local v0, Ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13$1;->this$1:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13;

    iget-object v8, v8, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$2900(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1563
    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13$1;->this$1:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13;

    iget-object v8, v8, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$2900(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1564
    .local v6, tmpId:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1579
    .end local v0           #Ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v6           #tmpId:J
    :catch_0
    move-exception v1

    .line 1581
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "ContactDetailCallHistoryActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1583
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1568
    .restart local v0       #Ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1569
    .local v5, nSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_2

    .line 1570
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1572
    .local v3, lId:J
    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13$1;->this$1:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13;

    iget-object v8, v8, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    invoke-virtual {v8}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calls._id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_1

    .line 1569
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1577
    .end local v3           #lId:J
    :cond_2
    iget-object v8, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13$1;->this$1:Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13;

    iget-object v8, v8, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->startAsyncQuery()V
    invoke-static {v8}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$300(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

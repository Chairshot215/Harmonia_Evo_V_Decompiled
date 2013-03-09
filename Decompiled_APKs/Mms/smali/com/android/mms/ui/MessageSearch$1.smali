.class Lcom/android/mms/ui/MessageSearch$1;
.super Ljava/lang/Object;
.source "MessageSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageSearch;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageSearch;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageSearch;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/mms/ui/MessageSearch$1;->this$0:Lcom/android/mms/ui/MessageSearch;

    iput p2, p0, Lcom/android/mms/ui/MessageSearch$1;->val$pos:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$1;->this$0:Lcom/android/mms/ui/MessageSearch;

    #getter for: Lcom/android/mms/ui/MessageSearch;->mAdapter:Lcom/android/mms/ui/MessageSearch$MsgListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/MessageSearch;->access$400(Lcom/android/mms/ui/MessageSearch;)Lcom/android/mms/ui/MessageSearch$MsgListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageSearch$MsgListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 351
    .local v7, mCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    iget v0, p0, Lcom/android/mms/ui/MessageSearch$1;->val$pos:I

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 354
    .local v1, thread_id:J
    const-string v0, "recipient_address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, address:Ljava/lang/String;
    const-string v0, "suggest_intent_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 357
    .local v8, str:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$1;->this$0:Lcom/android/mms/ui/MessageSearch;

    const/16 v9, 0xa

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/android/mms/ui/MessageSearch;->mHighLight:Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/android/mms/ui/MessageSearch;->access$502(Lcom/android/mms/ui/MessageSearch;Ljava/lang/String;)Ljava/lang/String;

    .line 358
    const-string v0, "msgtype"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v9, "mms"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$1;->this$0:Lcom/android/mms/ui/MessageSearch;

    const-string v9, "mms"

    #setter for: Lcom/android/mms/ui/MessageSearch;->mMsgType:Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/android/mms/ui/MessageSearch;->access$602(Lcom/android/mms/ui/MessageSearch;Ljava/lang/String;)Ljava/lang/String;

    .line 361
    :cond_0
    const/4 v4, -0x1

    .line 362
    .local v4, rowidPos:I
    const/4 v5, 0x1

    .line 364
    .local v5, folder:I
    :try_start_0
    const-string v0, "msgbox"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 371
    :goto_0
    :try_start_1
    const-string v0, "suggest_intent_extra_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 375
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageSearch$1;->this$0:Lcom/android/mms/ui/MessageSearch;

    #calls: Lcom/android/mms/ui/MessageSearch;->openThread(JLjava/lang/String;II)V
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageSearch;->access$700(Lcom/android/mms/ui/MessageSearch;JLjava/lang/String;II)V

    .line 377
    .end local v1           #thread_id:J
    .end local v3           #address:Ljava/lang/String;
    .end local v4           #rowidPos:I
    .end local v5           #folder:I
    .end local v8           #str:Ljava/lang/String;
    :cond_1
    return-void

    .line 365
    .restart local v1       #thread_id:J
    .restart local v3       #address:Ljava/lang/String;
    .restart local v4       #rowidPos:I
    .restart local v5       #folder:I
    .restart local v8       #str:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 366
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 372
    .end local v6           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

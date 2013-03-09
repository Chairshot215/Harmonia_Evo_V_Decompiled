.class Lcom/android/mms/ui/TraditionalList$10;
.super Ljava/lang/Object;
.source "TraditionalList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/TraditionalList;->retrySendAllMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TraditionalList;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TraditionalList;Landroid/database/Cursor;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1559
    iput-object p1, p0, Lcom/android/mms/ui/TraditionalList$10;->this$0:Lcom/android/mms/ui/TraditionalList;

    iput-object p2, p0, Lcom/android/mms/ui/TraditionalList$10;->val$cursor:Landroid/database/Cursor;

    iput-object p3, p0, Lcom/android/mms/ui/TraditionalList$10;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$10;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1563
    .local v6, count:I
    new-array v10, v6, [J

    .line 1564
    .local v10, threadIds:[J
    new-array v8, v6, [J

    .line 1565
    .local v8, msgIds:[J
    new-array v9, v6, [Ljava/lang/String;

    .line 1566
    .local v9, msgType:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1567
    .local v7, index:I
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$10;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$10;->val$cursor:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v10, v7

    .line 1570
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$10;->val$cursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v8, v7

    .line 1571
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$10;->val$cursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    .line 1572
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1575
    :cond_0
    add-int/lit8 v7, v6, -0x1

    :goto_1
    if-ltz v7, :cond_1

    .line 1577
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$10;->this$0:Lcom/android/mms/ui/TraditionalList;

    aget-wide v1, v10, v7

    aget-wide v3, v8, v7

    aget-object v5, v9, v7

    #calls: Lcom/android/mms/ui/TraditionalList;->retryToSendMessage(JJLjava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/TraditionalList;->access$800(Lcom/android/mms/ui/TraditionalList;JJLjava/lang/String;)V

    .line 1575
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1579
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$10;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1580
    return-void
.end method

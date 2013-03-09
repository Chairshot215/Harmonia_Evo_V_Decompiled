.class Lcom/android/mms/ui/DeletedItemsActivity$1;
.super Ljava/lang/Object;
.source "DeletedItemsActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeletedItemsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeletedItemsActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DeletedItemsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/mms/ui/DeletedItemsActivity$1;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 389
    const-string v1, "DeletedItemsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnCreateContextMenuListener] Cursor in postion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/DeletedItemsActivity$1;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    #getter for: Lcom/android/mms/ui/DeletedItemsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/mms/ui/DeletedItemsActivity;->access$100(Lcom/android/mms/ui/DeletedItemsActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v0, -0x1

    .line 391
    .local v0, locked:I
    iget-object v1, p0, Lcom/android/mms/ui/DeletedItemsActivity$1;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    #getter for: Lcom/android/mms/ui/DeletedItemsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/mms/ui/DeletedItemsActivity;->access$100(Lcom/android/mms/ui/DeletedItemsActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/android/mms/ui/DeletedItemsActivity$1;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    #getter for: Lcom/android/mms/ui/DeletedItemsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/mms/ui/DeletedItemsActivity;->access$100(Lcom/android/mms/ui/DeletedItemsActivity;)Landroid/database/Cursor;

    move-result-object v1

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 393
    const-string v1, "DeletedItemsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnCreateContextMenuListener] Get COLUMN_SMS_LOCKED:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_0
    const v1, 0x7f090036

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 401
    const v1, 0x7f090301

    invoke-interface {p1, v4, v4, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 402
    const v1, 0x7f090300

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 403
    if-ne v0, v5, :cond_0

    .line 404
    const/4 v1, 0x2

    const v2, 0x7f090302

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 405
    :cond_0
    return-void

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/DeletedItemsActivity$1;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    #getter for: Lcom/android/mms/ui/DeletedItemsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/mms/ui/DeletedItemsActivity;->access$100(Lcom/android/mms/ui/DeletedItemsActivity;)Landroid/database/Cursor;

    move-result-object v1

    const/16 v2, 0xf

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 396
    const-string v1, "DeletedItemsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnCreateContextMenuListener] Get COLUMN_MMS_LOCKED:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

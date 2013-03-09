.class Lcom/android/mms/ui/QTextDeleteActivity$5;
.super Ljava/lang/Object;
.source "QTextDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/QTextDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/QTextDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/QTextDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/mms/ui/QTextDeleteActivity$5;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 230
    const/4 v0, -0x1

    .line 231
    .local v0, pos:I
    iget-object v1, p0, Lcom/android/mms/ui/QTextDeleteActivity$5;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #getter for: Lcom/android/mms/ui/QTextDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/mms/ui/QTextDeleteActivity;->access$600(Lcom/android/mms/ui/QTextDeleteActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 232
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/QTextDeleteActivity$5;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #getter for: Lcom/android/mms/ui/QTextDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/mms/ui/QTextDeleteActivity;->access$600(Lcom/android/mms/ui/QTextDeleteActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    add-int/lit8 v0, v0, 0x1

    .line 234
    iget-object v1, p0, Lcom/android/mms/ui/QTextDeleteActivity$5;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #getter for: Lcom/android/mms/ui/QTextDeleteActivity;->checkArray:[Z
    invoke-static {v1}, Lcom/android/mms/ui/QTextDeleteActivity;->access$100(Lcom/android/mms/ui/QTextDeleteActivity;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/mms/ui/QTextDeleteActivity$5;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    iget-object v2, p0, Lcom/android/mms/ui/QTextDeleteActivity$5;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #getter for: Lcom/android/mms/ui/QTextDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/mms/ui/QTextDeleteActivity;->access$600(Lcom/android/mms/ui/QTextDeleteActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/QTextDeleteActivity;->deleteMessageByCursor(Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/QTextDeleteActivity$5;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/QTextDeleteActivity;->finish()V

    .line 240
    return-void
.end method

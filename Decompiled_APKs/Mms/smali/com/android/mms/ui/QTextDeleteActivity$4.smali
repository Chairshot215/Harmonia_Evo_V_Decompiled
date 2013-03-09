.class Lcom/android/mms/ui/QTextDeleteActivity$4;
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
    .line 217
    iput-object p1, p0, Lcom/android/mms/ui/QTextDeleteActivity$4;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity$4;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #getter for: Lcom/android/mms/ui/QTextDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/QTextDeleteActivity;->access$600(Lcom/android/mms/ui/QTextDeleteActivity;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity$4;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #getter for: Lcom/android/mms/ui/QTextDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/QTextDeleteActivity;->access$600(Lcom/android/mms/ui/QTextDeleteActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity$4;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    iget-object v1, p0, Lcom/android/mms/ui/QTextDeleteActivity$4;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #getter for: Lcom/android/mms/ui/QTextDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/mms/ui/QTextDeleteActivity;->access$600(Lcom/android/mms/ui/QTextDeleteActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/QTextDeleteActivity;->deleteMessageByCursor(Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity$4;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/QTextDeleteActivity;->finish()V

    .line 225
    return-void
.end method

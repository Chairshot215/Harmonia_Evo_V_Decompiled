.class Lcom/htc/android/mail/ComposeActivity$35;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 4948
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$35;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4950
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$35;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$35;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->cursorSmart2:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->closeCursor(Landroid/database/Cursor;)V

    .line 4951
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$35;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$35;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->cursorSmart:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->closeCursor(Landroid/database/Cursor;)V

    .line 4952
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$35;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$35;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mMessageCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$6200(Lcom/htc/android/mail/ComposeActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->closeCursor(Landroid/database/Cursor;)V

    .line 4953
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$35;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$35;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mPartsCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$6300(Lcom/htc/android/mail/ComposeActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->closeCursor(Landroid/database/Cursor;)V

    .line 4954
    return-void
.end method

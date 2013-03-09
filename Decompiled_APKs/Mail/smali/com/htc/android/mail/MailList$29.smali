.class Lcom/htc/android/mail/MailList$29;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList;

.field final synthetic val$parCursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3347
    iput-object p1, p0, Lcom/htc/android/mail/MailList$29;->this$0:Lcom/htc/android/mail/MailList;

    iput-object p2, p0, Lcom/htc/android/mail/MailList$29;->val$parCursor:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3349
    iget-object v0, p0, Lcom/htc/android/mail/MailList$29;->val$parCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailList$29;->val$parCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3350
    iget-object v0, p0, Lcom/htc/android/mail/MailList$29;->val$parCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3352
    :cond_0
    return-void
.end method

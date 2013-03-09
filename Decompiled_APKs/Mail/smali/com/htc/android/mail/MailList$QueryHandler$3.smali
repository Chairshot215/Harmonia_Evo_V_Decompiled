.class Lcom/htc/android/mail/MailList$QueryHandler$3;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/MailList$QueryHandler;

.field final synthetic val$preCursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList$QueryHandler;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5854
    iput-object p1, p0, Lcom/htc/android/mail/MailList$QueryHandler$3;->this$1:Lcom/htc/android/mail/MailList$QueryHandler;

    iput-object p2, p0, Lcom/htc/android/mail/MailList$QueryHandler$3;->val$preCursor:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5856
    iget-object v0, p0, Lcom/htc/android/mail/MailList$QueryHandler$3;->val$preCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailList$QueryHandler$3;->val$preCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5857
    iget-object v0, p0, Lcom/htc/android/mail/MailList$QueryHandler$3;->val$preCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5859
    :cond_0
    return-void
.end method

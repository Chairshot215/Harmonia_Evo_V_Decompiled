.class Lcom/htc/android/mail/MailSearch$QueryHandler$1;
.super Ljava/lang/Object;
.source "MailSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailSearch$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/MailSearch$QueryHandler;

.field final synthetic val$fCursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailSearch$QueryHandler;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1665
    iput-object p1, p0, Lcom/htc/android/mail/MailSearch$QueryHandler$1;->this$1:Lcom/htc/android/mail/MailSearch$QueryHandler;

    iput-object p2, p0, Lcom/htc/android/mail/MailSearch$QueryHandler$1;->val$fCursor:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/htc/android/mail/MailSearch$QueryHandler$1;->val$fCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1668
    return-void
.end method

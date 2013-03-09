.class Lcom/htc/android/mail/MailListTab$9;
.super Ljava/lang/Object;
.source "MailListTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailListTab;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailListTab;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailListTab;)V
    .locals 0
    .parameter

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab$9;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$9;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mTrackMsgCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1300(Lcom/htc/android/mail/MailListTab;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1050
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$9;->this$0:Lcom/htc/android/mail/MailListTab;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/MailListTab;->mTrackMsgCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailListTab;->access$1302(Lcom/htc/android/mail/MailListTab;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1051
    invoke-static {}, Lcom/htc/android/mail/MailListTab;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailListTab"

    const-string v1, "trackMsgCursor closed>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    :cond_0
    return-void
.end method

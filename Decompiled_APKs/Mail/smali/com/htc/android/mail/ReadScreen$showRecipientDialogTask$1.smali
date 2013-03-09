.class Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask$1;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->onPostExecute(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask$1;->this$1:Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 1308
    packed-switch p2, :pswitch_data_0

    .line 1346
    :goto_0
    return-void

    .line 1310
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask$1;->this$1:Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask$1;->this$1:Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;

    iget-object v1, v1, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v1, v1, Lcom/htc/android/mail/ReadScreen;->replyAddr:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask$1;->this$1:Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;

    iget-object v2, v2, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v2, v2, Lcom/htc/android/mail/ReadScreen;->replyName:Ljava/lang/String;

    #calls: Lcom/htc/android/mail/ReadScreen;->ComposeOne(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/ReadScreen;->access$1700(Lcom/htc/android/mail/ReadScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask$1;->this$1:Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #setter for: Lcom/htc/android/mail/ReadScreen;->doAddcontactToContactList:Z
    invoke-static {v0, v3}, Lcom/htc/android/mail/ReadScreen;->access$1602(Lcom/htc/android/mail/ReadScreen;Z)Z

    goto :goto_0

    .line 1316
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask$1;->this$1:Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask$1;->this$1:Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;

    iget-object v1, v1, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v1, v1, Lcom/htc/android/mail/ReadScreen;->replyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask$1;->this$1:Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;

    iget-object v2, v2, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v2, v2, Lcom/htc/android/mail/ReadScreen;->replyAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/ReadScreen;->InsertContact(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1319
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask$1;->this$1:Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$1300(Lcom/htc/android/mail/ReadScreen;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask$1;->this$1:Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;

    iget-object v1, v1, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v1, v1, Lcom/htc/android/mail/ReadScreen;->replyAddr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailCommon;->pickExistedContactor(Landroid/content/Context;Ljava/lang/String;)V

    .line 1323
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask$1;->this$1:Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #setter for: Lcom/htc/android/mail/ReadScreen;->doAddcontactToContactList:Z
    invoke-static {v0, v3}, Lcom/htc/android/mail/ReadScreen;->access$1602(Lcom/htc/android/mail/ReadScreen;Z)Z

    goto :goto_0

    .line 1329
    :pswitch_3
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    const-string v1, "@@ readscreen onActivityResult Enter getGroupList()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask$1;->this$1:Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #calls: Lcom/htc/android/mail/ReadScreen;->editContactGroup()V
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$1800(Lcom/htc/android/mail/ReadScreen;)V

    .line 1342
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask$1;->this$1:Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #setter for: Lcom/htc/android/mail/ReadScreen;->doAddcontactToContactList:Z
    invoke-static {v0, v3}, Lcom/htc/android/mail/ReadScreen;->access$1602(Lcom/htc/android/mail/ReadScreen;Z)Z

    goto :goto_0

    .line 1308
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

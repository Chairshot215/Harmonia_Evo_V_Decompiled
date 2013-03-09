.class Lcom/htc/android/mail/MailListItemBig$2;
.super Ljava/lang/Object;
.source "MailListItemBig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailListItemBig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailListItemBig;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailListItemBig;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/htc/android/mail/MailListItemBig$2;->this$0:Lcom/htc/android/mail/MailListItemBig;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig$2;->this$0:Lcom/htc/android/mail/MailListItemBig;

    iget-object v0, v0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/htc/android/mail/MailList;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig$2;->this$0:Lcom/htc/android/mail/MailListItemBig;

    iget-object v0, v0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/htc/android/mail/MailList;

    iget-object v1, p0, Lcom/htc/android/mail/MailListItemBig$2;->this$0:Lcom/htc/android/mail/MailListItemBig;

    #getter for: Lcom/htc/android/mail/MailListItemBig;->mAccountId:J
    invoke-static {v1}, Lcom/htc/android/mail/MailListItemBig;->access$200(Lcom/htc/android/mail/MailListItemBig;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/android/mail/MailListItemBig$2;->this$0:Lcom/htc/android/mail/MailListItemBig;

    #getter for: Lcom/htc/android/mail/MailListItemBig;->boxId:J
    invoke-static {v3}, Lcom/htc/android/mail/MailListItemBig;->access$300(Lcom/htc/android/mail/MailListItemBig;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig$2;->this$0:Lcom/htc/android/mail/MailListItemBig;

    iget-wide v5, v5, Lcom/htc/android/mail/MailListItemBig;->mMessageId:J

    iget-object v7, p0, Lcom/htc/android/mail/MailListItemBig$2;->this$0:Lcom/htc/android/mail/MailListItemBig;

    #getter for: Lcom/htc/android/mail/MailListItemBig;->group:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/android/mail/MailListItemBig;->access$400(Lcom/htc/android/mail/MailListItemBig;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/mail/MailListItemBig$2;->this$0:Lcom/htc/android/mail/MailListItemBig;

    iget v8, v8, Lcom/htc/android/mail/MailListItemBig;->_read:I

    invoke-virtual/range {v0 .. v8}, Lcom/htc/android/mail/MailList;->setCmdBarChild(JJJLjava/lang/String;I)V

    .line 341
    :cond_0
    return-void
.end method

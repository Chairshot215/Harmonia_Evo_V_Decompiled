.class Lcom/htc/android/mail/MailListItemBig$1;
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
    .line 323
    iput-object p1, p0, Lcom/htc/android/mail/MailListItemBig$1;->this$0:Lcom/htc/android/mail/MailListItemBig;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig$1;->this$0:Lcom/htc/android/mail/MailListItemBig;

    iget-object v0, v0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/htc/android/mail/MailList;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig$1;->this$0:Lcom/htc/android/mail/MailListItemBig;

    iget-object v0, v0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/htc/android/mail/MailList;

    iget-object v1, p0, Lcom/htc/android/mail/MailListItemBig$1;->this$0:Lcom/htc/android/mail/MailListItemBig;

    #getter for: Lcom/htc/android/mail/MailListItemBig;->mPosition:I
    invoke-static {v1}, Lcom/htc/android/mail/MailListItemBig;->access$000(Lcom/htc/android/mail/MailListItemBig;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/mail/MailListItemBig$1;->this$0:Lcom/htc/android/mail/MailListItemBig;

    iget v2, v2, Lcom/htc/android/mail/MailListItemBig;->_read:I

    iget-object v3, p0, Lcom/htc/android/mail/MailListItemBig$1;->this$0:Lcom/htc/android/mail/MailListItemBig;

    #getter for: Lcom/htc/android/mail/MailListItemBig;->singleMailGroupView:Z
    invoke-static {v3}, Lcom/htc/android/mail/MailListItemBig;->access$100(Lcom/htc/android/mail/MailListItemBig;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/MailList;->setCmdBar(IIZ)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig$1;->this$0:Lcom/htc/android/mail/MailListItemBig;

    iget-object v0, v0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/htc/android/mail/MailSearch;

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig$1;->this$0:Lcom/htc/android/mail/MailListItemBig;

    iget-object v0, v0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/htc/android/mail/MailSearch;

    iget-object v1, p0, Lcom/htc/android/mail/MailListItemBig$1;->this$0:Lcom/htc/android/mail/MailListItemBig;

    #getter for: Lcom/htc/android/mail/MailListItemBig;->mPosition:I
    invoke-static {v1}, Lcom/htc/android/mail/MailListItemBig;->access$000(Lcom/htc/android/mail/MailListItemBig;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/mail/MailListItemBig$1;->this$0:Lcom/htc/android/mail/MailListItemBig;

    iget v2, v2, Lcom/htc/android/mail/MailListItemBig;->_read:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/MailSearch;->setCmdBar(II)V

    .line 332
    :cond_1
    return-void
.end method

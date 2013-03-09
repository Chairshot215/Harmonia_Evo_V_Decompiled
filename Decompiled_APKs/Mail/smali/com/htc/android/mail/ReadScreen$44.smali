.class Lcom/htc/android/mail/ReadScreen$44;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 6712
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$44;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 6714
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$44;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$44;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->expandAttachmentView:Z
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$6900(Lcom/htc/android/mail/ReadScreen;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/htc/android/mail/ReadScreen;->expandAttachmentView:Z
    invoke-static {v1, v0}, Lcom/htc/android/mail/ReadScreen;->access$6902(Lcom/htc/android/mail/ReadScreen;Z)Z

    .line 6715
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$44;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 6716
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$44;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 6717
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$44;->this$0:Lcom/htc/android/mail/ReadScreen;

    #calls: Lcom/htc/android/mail/ReadScreen;->reloadAttachment()V
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$4700(Lcom/htc/android/mail/ReadScreen;)V

    .line 6730
    :cond_0
    :goto_1
    return-void

    .line 6714
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 6719
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$44;->this$0:Lcom/htc/android/mail/ReadScreen;

    #calls: Lcom/htc/android/mail/ReadScreen;->updateAttachmentView()V
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$11500(Lcom/htc/android/mail/ReadScreen;)V

    goto :goto_1
.end method

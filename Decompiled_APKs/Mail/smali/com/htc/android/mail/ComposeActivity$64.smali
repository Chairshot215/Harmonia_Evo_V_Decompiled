.class Lcom/htc/android/mail/ComposeActivity$64;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
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
    .line 8027
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$64;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 8029
    packed-switch p2, :pswitch_data_0

    .line 8044
    :goto_0
    return-void

    .line 8032
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$64;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->curAttach:Lcom/htc/android/mail/Attachment;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$3600(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Attachment;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    sget-object v1, Lcom/htc/android/mail/Attachment$States;->missing:Lcom/htc/android/mail/Attachment$States;

    if-ne v0, v1, :cond_0

    .line 8033
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$64;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->showDialog(I)V

    goto :goto_0

    .line 8037
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$64;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->showDialog(I)V

    goto :goto_0

    .line 8041
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$64;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$64;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->curBtn:Lcom/htc/widget/QuickContactBadge;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$3700(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/widget/QuickContactBadge;

    move-result-object v1

    #calls: Lcom/htc/android/mail/ComposeActivity;->removeAttachment(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$10100(Lcom/htc/android/mail/ComposeActivity;Landroid/view/View;)V

    goto :goto_0

    .line 8029
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

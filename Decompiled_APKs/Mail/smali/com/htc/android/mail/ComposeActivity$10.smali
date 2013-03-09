.class Lcom/htc/android/mail/ComposeActivity$10;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->contactEvent()V
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
    .line 1672
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$10;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1674
    packed-switch p2, :pswitch_data_0

    .line 1689
    :goto_0
    return-void

    .line 1677
    :pswitch_0
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$10;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$10;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->editTo:Landroid/widget/IMEAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/IMEAutoCompleteTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/htc/android/mail/ComposeActivity;->selectView:Landroid/widget/LinearLayout;

    .line 1678
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$10;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->pickMail()V
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$2500(Lcom/htc/android/mail/ComposeActivity;)V

    goto :goto_0

    .line 1681
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$10;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$10;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->edit_cc:Landroid/widget/IMEAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/IMEAutoCompleteTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/htc/android/mail/ComposeActivity;->selectView:Landroid/widget/LinearLayout;

    .line 1682
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$10;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->pickMail()V
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$2500(Lcom/htc/android/mail/ComposeActivity;)V

    goto :goto_0

    .line 1685
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$10;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$10;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v0, v0, Lcom/htc/android/mail/ComposeActivity;->edit_bcc:Landroid/widget/IMEAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/IMEAutoCompleteTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/htc/android/mail/ComposeActivity;->selectView:Landroid/widget/LinearLayout;

    .line 1686
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$10;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->pickMail()V
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$2500(Lcom/htc/android/mail/ComposeActivity;)V

    goto :goto_0

    .line 1674
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

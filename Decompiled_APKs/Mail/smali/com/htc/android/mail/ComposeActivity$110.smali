.class Lcom/htc/android/mail/ComposeActivity$110;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->showMoveRecipientMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;

.field final synthetic val$group:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13385
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$110;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iput p2, p0, Lcom/htc/android/mail/ComposeActivity$110;->val$group:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 13387
    packed-switch p2, :pswitch_data_0

    .line 13395
    :goto_0
    return-void

    .line 13389
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$110;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget v1, p0, Lcom/htc/android/mail/ComposeActivity$110;->val$group:I

    const/4 v2, 0x0

    #calls: Lcom/htc/android/mail/ComposeActivity;->moveRecipientEvent(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$2300(Lcom/htc/android/mail/ComposeActivity;II)V

    goto :goto_0

    .line 13392
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$110;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget v1, p0, Lcom/htc/android/mail/ComposeActivity$110;->val$group:I

    const/4 v2, 0x1

    #calls: Lcom/htc/android/mail/ComposeActivity;->moveRecipientEvent(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$2300(Lcom/htc/android/mail/ComposeActivity;II)V

    goto :goto_0

    .line 13387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

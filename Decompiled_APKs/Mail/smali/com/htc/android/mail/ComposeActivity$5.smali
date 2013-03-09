.class Lcom/htc/android/mail/ComposeActivity$5;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->showAddAttachmentDialog_document()V
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
    .line 1230
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$5;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1232
    packed-switch p2, :pswitch_data_0

    .line 1240
    :goto_0
    return-void

    .line 1234
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$5;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x0

    #calls: Lcom/htc/android/mail/ComposeActivity;->showFilePicker(I)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$1300(Lcom/htc/android/mail/ComposeActivity;I)V

    goto :goto_0

    .line 1237
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$5;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x1

    #calls: Lcom/htc/android/mail/ComposeActivity;->showFilePicker(I)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$1300(Lcom/htc/android/mail/ComposeActivity;I)V

    goto :goto_0

    .line 1232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

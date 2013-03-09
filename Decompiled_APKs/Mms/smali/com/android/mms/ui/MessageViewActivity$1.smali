.class Lcom/android/mms/ui/MessageViewActivity$1;
.super Ljava/lang/Object;
.source "MessageViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageViewActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageViewActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/mms/ui/MessageViewActivity$1;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$1;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #getter for: Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity;->access$000(Lcom/android/mms/ui/MessageViewActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity$1;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #getter for: Lcom/android/mms/ui/MessageViewActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/MessageViewActivity;->access$000(Lcom/android/mms/ui/MessageViewActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity$1;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #getter for: Lcom/android/mms/ui/MessageViewActivity;->mMessageUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/ui/MessageViewActivity;->access$100(Lcom/android/mms/ui/MessageViewActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageViewActivity$1;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #getter for: Lcom/android/mms/ui/MessageViewActivity;->mMsgId:I
    invoke-static {v2}, Lcom/android/mms/ui/MessageViewActivity;->access$200(Lcom/android/mms/ui/MessageViewActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 488
    return-void
.end method

.class Lcom/android/mms/view/impl/TextMessageViewImpl$1;
.super Ljava/lang/Object;
.source "TextMessageViewImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/view/impl/TextMessageViewImpl;->setRightButtonListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/TextMessageViewImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$1;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$1;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->mVcard:[B
    invoke-static {v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$000(Lcom/android/mms/view/impl/TextMessageViewImpl;)[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 405
    :goto_0
    return-void

    .line 377
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 378
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.IMPORT_VCARD_SELECT_FIELDS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    const-string v1, "result"

    iget-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$1;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->mVcard:[B
    invoke-static {v2}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$000(Lcom/android/mms/view/impl/TextMessageViewImpl;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 380
    const-string v1, "SMS_ID"

    iget-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$1;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;
    invoke-static {v2}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$100(Lcom/android/mms/view/impl/TextMessageViewImpl;)Lcom/android/mms/msg/TextMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/msg/TextMessage;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 381
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$1;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$200(Lcom/android/mms/view/impl/TextMessageViewImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x3e

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

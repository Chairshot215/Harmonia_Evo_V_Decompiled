.class Lcom/android/mms/view/impl/NotificationViewImpl$4;
.super Ljava/lang/Object;
.source "NotificationViewImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/view/impl/NotificationViewImpl;->fireEvent(Lcom/android/mms/view/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/view/impl/NotificationViewImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/NotificationViewImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/mms/view/impl/NotificationViewImpl$4;->this$0:Lcom/android/mms/view/impl/NotificationViewImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x1

    .line 278
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl$4;->this$0:Lcom/android/mms/view/impl/NotificationViewImpl;

    invoke-virtual {v1, v3}, Lcom/android/mms/view/impl/NotificationViewImpl;->setDownloading(Z)V

    .line 279
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl$4;->this$0:Lcom/android/mms/view/impl/NotificationViewImpl;

    #getter for: Lcom/android/mms/view/impl/NotificationViewImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/view/impl/NotificationViewImpl;->access$200(Lcom/android/mms/view/impl/NotificationViewImpl;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/mms/view/impl/NotificationViewImpl$4;->this$0:Lcom/android/mms/view/impl/NotificationViewImpl;

    #getter for: Lcom/android/mms/view/impl/NotificationViewImpl;->mNotification:Lcom/android/mms/msg/Notification;
    invoke-static {v2}, Lcom/android/mms/view/impl/NotificationViewImpl;->access$300(Lcom/android/mms/view/impl/NotificationViewImpl;)Lcom/android/mms/msg/Notification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/msg/Notification;->getURI()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    iget-object v1, p0, Lcom/android/mms/view/impl/NotificationViewImpl$4;->this$0:Lcom/android/mms/view/impl/NotificationViewImpl;

    #getter for: Lcom/android/mms/view/impl/NotificationViewImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/view/impl/NotificationViewImpl;->access$400(Lcom/android/mms/view/impl/NotificationViewImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 283
    return-void
.end method

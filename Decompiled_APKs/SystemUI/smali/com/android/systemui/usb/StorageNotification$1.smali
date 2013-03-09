.class Lcom/android/systemui/usb/StorageNotification$1;
.super Landroid/os/Handler;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    invoke-static {v4}, Lcom/android/systemui/usb/StorageNotification;->access$000(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/Notification;

    move-result-object v4

    iget v1, v4, Landroid/app/Notification;->icon:I

    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/usb/StorageNotification;->access$100(Lcom/android/systemui/usb/StorageNotification;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    invoke-static {v4}, Lcom/android/systemui/usb/StorageNotification;->access$000(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v6, :cond_1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/usb/StorageNotification;->access$100(Lcom/android/systemui/usb/StorageNotification;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/systemui/usb/StorageNotification;->access$000(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v4, v5, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x15666
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

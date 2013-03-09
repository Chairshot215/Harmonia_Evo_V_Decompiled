.class Lcom/android/htccontacts/app/BaseTabActivity$1;
.super Landroid/os/Handler;
.source "BaseTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/app/BaseTabActivity;->removeBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/app/BaseTabActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/app/BaseTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/htccontacts/app/BaseTabActivity$1;->this$0:Lcom/android/htccontacts/app/BaseTabActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 252
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 262
    :goto_0
    return-void

    .line 255
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseTabActivity$1;->this$0:Lcom/android/htccontacts/app/BaseTabActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/app/BaseTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseTabActivity$1;->this$0:Lcom/android/htccontacts/app/BaseTabActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/app/BaseTabActivity;->mBackgroundIsRemoved:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/app/BaseTabActivity;->access$002(Lcom/android/htccontacts/app/BaseTabActivity;Z)Z

    .line 257
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseTabActivity$1;->this$0:Lcom/android/htccontacts/app/BaseTabActivity;

    #setter for: Lcom/android/htccontacts/app/BaseTabActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v2}, Lcom/android/htccontacts/app/BaseTabActivity;->access$102(Lcom/android/htccontacts/app/BaseTabActivity;Landroid/os/Handler;)Landroid/os/Handler;

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/android/htccontacts/app/BaseCarouselActivity$1;
.super Landroid/os/Handler;
.source "BaseCarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/app/BaseCarouselActivity;->removeBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/app/BaseCarouselActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/app/BaseCarouselActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/htccontacts/app/BaseCarouselActivity$1;->this$0:Lcom/android/htccontacts/app/BaseCarouselActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 247
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 250
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseCarouselActivity$1;->this$0:Lcom/android/htccontacts/app/BaseCarouselActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseCarouselActivity$1;->this$0:Lcom/android/htccontacts/app/BaseCarouselActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/app/BaseCarouselActivity;->mBackgroundIsRemoved:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/app/BaseCarouselActivity;->access$002(Lcom/android/htccontacts/app/BaseCarouselActivity;Z)Z

    .line 252
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseCarouselActivity$1;->this$0:Lcom/android/htccontacts/app/BaseCarouselActivity;

    #setter for: Lcom/android/htccontacts/app/BaseCarouselActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v2}, Lcom/android/htccontacts/app/BaseCarouselActivity;->access$102(Lcom/android/htccontacts/app/BaseCarouselActivity;Landroid/os/Handler;)Landroid/os/Handler;

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

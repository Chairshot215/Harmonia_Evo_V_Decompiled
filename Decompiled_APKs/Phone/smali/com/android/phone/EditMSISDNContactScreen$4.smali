.class Lcom/android/phone/EditMSISDNContactScreen$4;
.super Landroid/os/Handler;
.source "EditMSISDNContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditMSISDNContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditMSISDNContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EditMSISDNContactScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/phone/EditMSISDNContactScreen$4;->this$0:Lcom/android/phone/EditMSISDNContactScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 241
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 242
    .local v0, result:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 244
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/EditMSISDNContactScreen$4;->this$0:Lcom/android/phone/EditMSISDNContactScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditMSISDNContactScreen;->handleSetPhoneNumberResult(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

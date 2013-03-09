.class Lcom/android/htccontacts/ui/EditContactActivity2$18;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;->prepareDownloadFacdbookMePhotoDialog(Landroid/app/Dialog;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

.field final synthetic val$b:Landroid/os/Bundle;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/os/Bundle;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5887
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$18;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    iput-object p2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$18;->val$b:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/htccontacts/ui/EditContactActivity2$18;->val$dialog:Landroid/app/Dialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 5889
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$18;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->msFacebookMeLargeBuddyIconUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$1300(Lcom/android/htccontacts/ui/EditContactActivity2;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/contacts/ContactsUtility;->getFromRemote(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5890
    .local v0, bmPhoto:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$18;->val$b:Landroid/os/Bundle;

    const-string v3, "bitmap"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5891
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$18;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    iget-object v2, v2, Lcom/android/htccontacts/ui/EditContactActivity2;->mHandler:Landroid/os/Handler;

    const v3, 0xf00003

    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2$18;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5892
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$18;->val$b:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5893
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$18;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    iget-object v2, v2, Lcom/android/htccontacts/ui/EditContactActivity2;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5894
    return-void
.end method

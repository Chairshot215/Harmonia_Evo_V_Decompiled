.class Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;
.super Ljava/lang/Thread;
.source "ContactLinkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/ContactLinkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowPhotoPickerDialogThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/ContactLinkActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/link/ContactLinkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1679
    iput-object p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/link/ContactLinkActivity;Lcom/android/htccontacts/link/ContactLinkActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1679
    invoke-direct {p0, p1}, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;-><init>(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->needCreatePhotoDialog(Landroid/content/Context;)Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2700(Lcom/android/htccontacts/link/ContactLinkActivity;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1200(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread$1;-><init>(Lcom/android/htccontacts/link/ContactLinkActivity$ShowPhotoPickerDialogThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1728
    :cond_0
    return-void
.end method

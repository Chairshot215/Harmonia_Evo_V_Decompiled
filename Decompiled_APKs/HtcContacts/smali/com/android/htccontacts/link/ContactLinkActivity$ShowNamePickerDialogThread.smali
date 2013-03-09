.class Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;
.super Ljava/lang/Thread;
.source "ContactLinkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/ContactLinkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowNamePickerDialogThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/ContactLinkActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/link/ContactLinkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1821
    iput-object p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/link/ContactLinkActivity;Lcom/android/htccontacts/link/ContactLinkActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1821
    invoke-direct {p0, p1}, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;-><init>(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1823
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->needCreateNameDialog(Landroid/content/Context;)Z
    invoke-static {v1, v2}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$4300(Lcom/android/htccontacts/link/ContactLinkActivity;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1824
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->clPickName:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$4400(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 1825
    .local v0, listener:Landroid/widget/AdapterView$OnItemClickListener;
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1200(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread$1;

    invoke-direct {v2, p0, v0}, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread$1;-><init>(Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1844
    .end local v0           #listener:Landroid/widget/AdapterView$OnItemClickListener;
    :cond_0
    return-void
.end method

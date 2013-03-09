.class Lcom/android/htccontacts/BrowseContactsAllActivity2$6;
.super Ljava/lang/Object;
.source "BrowseContactsAllActivity2.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;->setListViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$6;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    .line 414
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$6;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-virtual {v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v0

    .line 415
    .local v0, selectedPosition:I
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x13

    if-ne v1, p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$6;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$800(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/htccontacts/BrowseContactsAllActivity2$6$1;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$6$1;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2$6;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 425
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

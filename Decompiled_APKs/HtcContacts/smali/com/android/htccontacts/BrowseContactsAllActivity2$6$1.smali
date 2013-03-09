.class Lcom/android/htccontacts/BrowseContactsAllActivity2$6$1;
.super Ljava/lang/Object;
.source "BrowseContactsAllActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2$6;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$6;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2$6;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$6$1;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$6$1;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$6;

    iget-object v0, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$6;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMyProfileAndContactsAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$700(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->focusSearchBoxIfExisted()V

    .line 421
    return-void
.end method

.class Lcom/google/android/talk/fragments/BuddyListFragment$9;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;->confirmRemoveSelectedContact(Landroid/widget/AdapterView$AdapterContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$9;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iput-object p2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$9;->val$username:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1620
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 1621
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$9;->val$username:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1623
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$9;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$9;->val$username:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->removeContact(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1629
    :cond_0
    :goto_0
    return-void

    .line 1624
    :catch_0
    move-exception v0

    .line 1625
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeContact caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

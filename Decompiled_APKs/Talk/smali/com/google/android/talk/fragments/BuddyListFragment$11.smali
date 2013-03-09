.class Lcom/google/android/talk/fragments/BuddyListFragment$11;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;->closeAllChats()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1746
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$11;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1749
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$11;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v1}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onCloseAllChats()V

    .line 1752
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$11;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v1, :cond_0

    .line 1753
    const-string v1, "talk"

    const-string v2, "[BuddyList] closeAllChats"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$11;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v1}, Lcom/google/android/gtalkservice/IImSession;->closeAllChatSessions()V

    .line 1764
    :goto_0
    return-void

    .line 1759
    :cond_0
    const-string v1, "talk"

    const-string v2, "[BuddyList] closeAllChats: mImSession is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1761
    :catch_0
    move-exception v0

    .line 1762
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "talk"

    const-string v2, "[BuddyList] closeAllChats: caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

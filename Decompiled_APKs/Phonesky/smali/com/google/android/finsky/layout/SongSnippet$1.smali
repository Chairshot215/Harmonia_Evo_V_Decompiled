.class Lcom/google/android/finsky/layout/SongSnippet$1;
.super Ljava/lang/Object;
.source "SongSnippet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/SongSnippet;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/SongSnippet;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/SongSnippet;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/finsky/layout/SongSnippet$1;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 94
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 95
    .local v1, currentAccount:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v7

    .line 96
    .local v7, libraries:Lcom/google/android/finsky/library/Libraries;
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet$1;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    #getter for: Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v0}, Lcom/google/android/finsky/layout/SongSnippet;->access$000(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-static {v0, v7, v1}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v8

    .line 99
    .local v8, owner:Landroid/accounts/Account;
    if-eqz v8, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet$1;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    #getter for: Lcom/google/android/finsky/layout/SongSnippet;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/layout/SongSnippet;->access$100(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/layout/SongSnippet$1;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    #getter for: Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v2}, Lcom/google/android/finsky/layout/SongSnippet;->access$000(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->openItem(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet$1;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    #getter for: Lcom/google/android/finsky/layout/SongSnippet;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/layout/SongSnippet;->access$100(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/layout/SongSnippet$1;->this$0:Lcom/google/android/finsky/layout/SongSnippet;

    #getter for: Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v2}, Lcom/google/android/finsky/layout/SongSnippet;->access$000(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    const/4 v3, 0x1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->buy(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

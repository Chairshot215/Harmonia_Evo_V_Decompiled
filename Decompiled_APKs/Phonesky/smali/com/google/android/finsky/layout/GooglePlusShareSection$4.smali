.class Lcom/google/android/finsky/layout/GooglePlusShareSection$4;
.super Ljava/lang/Object;
.source "GooglePlusShareSection.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/GooglePlusShareSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/GooglePlusShareSection;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$4;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .locals 6

    .prologue
    .line 244
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    .line 245
    .local v2, libraries:Lcom/google/android/finsky/library/Libraries;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 246
    .local v0, currentAccount:Landroid/accounts/Account;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$4;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #getter for: Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;
    invoke-static {v5}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$1100(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 247
    iget-object v5, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$4;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #getter for: Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;
    invoke-static {v5}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$1100(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    .line 248
    .local v3, song:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v3, v2, v0}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v4

    .line 250
    .local v4, songOwner:Landroid/accounts/Account;
    if-eqz v4, :cond_1

    .line 252
    iget-object v5, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection$4;->this$0:Lcom/google/android/finsky/layout/GooglePlusShareSection;

    #calls: Lcom/google/android/finsky/layout/GooglePlusShareSection;->updateWithDocument(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V
    invoke-static {v5, v4, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->access$1000(Lcom/google/android/finsky/layout/GooglePlusShareSection;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    .line 256
    .end local v3           #song:Lcom/google/android/finsky/api/model/Document;
    .end local v4           #songOwner:Landroid/accounts/Account;
    :cond_0
    return-void

    .line 246
    .restart local v3       #song:Lcom/google/android/finsky/api/model/Document;
    .restart local v4       #songOwner:Landroid/accounts/Account;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

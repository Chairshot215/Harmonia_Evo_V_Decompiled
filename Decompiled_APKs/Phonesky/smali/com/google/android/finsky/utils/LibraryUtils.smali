.class public Lcom/google/android/finsky/utils/LibraryUtils;
.super Ljava/lang/Object;
.source "LibraryUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 4
    .parameter "document"
    .parameter "libraries"
    .parameter "currentAccount"

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 77
    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwners(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;)Ljava/util/List;

    move-result-object v0

    .line 78
    .local v0, owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    .end local v0           #owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 81
    .restart local v0       #owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    .restart local p2
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    :cond_2
    move-object p2, v1

    goto :goto_0

    .line 84
    .end local v0           #owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    :cond_3
    invoke-virtual {p1, p2}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object p2, v1

    goto :goto_0
.end method

.method public static getOwnerWithCurrentAccount(Ljava/util/List;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 4
    .parameter
    .parameter "libraries"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Lcom/google/android/finsky/library/Libraries;",
            "Landroid/accounts/Account;",
            ")",
            "Landroid/accounts/Account;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, docs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    .line 97
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v0, p1, p2}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v2

    .line 98
    .local v2, owner:Landroid/accounts/Account;
    if-eqz v2, :cond_0

    .line 102
    .end local v0           #doc:Lcom/google/android/finsky/api/model/Document;
    .end local v2           #owner:Landroid/accounts/Account;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getOwners(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;)Ljava/util/List;
    .locals 4
    .parameter "document"
    .parameter "libraries"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "Lcom/google/android/finsky/library/Libraries;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 113
    .local v2, owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-virtual {p1}, Lcom/google/android/finsky/library/Libraries;->getAccountLibraries()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AccountLibrary;

    .line 114
    .local v0, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    .end local v0           #accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    :cond_1
    return-object v2
.end method

.method public static isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z
    .locals 9
    .parameter "document"
    .parameter "dfeToc"
    .parameter "library"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    if-eqz v5, :cond_2

    .line 42
    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    .line 44
    .local v0, corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    if-nez v0, :cond_2

    .line 45
    const-string v5, "Corpus for %s is not available."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v5, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 64
    .end local v0           #corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_0
    :goto_0
    return v1

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    move v1, v3

    .line 50
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAvailabilityRestriction()I

    move-result v2

    .line 55
    .local v2, restriction:I
    if-ne v2, v4, :cond_4

    move v1, v4

    .line 56
    .local v1, isAvailable:Z
    :goto_1
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->isAvailableIfOwned()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0, p2}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 57
    const-string v5, "%s available because owned, overriding [restriction=%d]."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    const/4 v1, 0x1

    .line 61
    :cond_3
    if-nez v1, :cond_0

    .line 62
    const-string v5, "%s not available [restriction=%d]."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v1           #isAvailable:Z
    :cond_4
    move v1, v3

    .line 55
    goto :goto_1
.end method

.method public static isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z
    .locals 3
    .parameter "document"
    .parameter "library"
    .parameter "offerType"

    .prologue
    .line 142
    sget-object v1, Lcom/google/android/finsky/library/LibraryEntry;->UNKNOWN_ACCOUNT:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/finsky/library/AccountLibrary;->getLibraryIdFromBackend(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0, p2}, Lcom/google/android/finsky/library/LibraryEntry;->fromDocument(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;I)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v0

    .line 146
    .local v0, entry:Lcom/google/android/finsky/library/LibraryEntry;
    invoke-interface {p1, v0}, Lcom/google/android/finsky/library/Library;->contains(Lcom/google/android/finsky/library/LibraryEntry;)Z

    move-result v1

    return v1
.end method

.method public static isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z
    .locals 4
    .parameter "document"
    .parameter "library"

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 130
    invoke-static {p0, p1, v0}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x7

    invoke-static {p0, p1, v1}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    invoke-static {p0, p1, v3}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-static {p0, p1, v1}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

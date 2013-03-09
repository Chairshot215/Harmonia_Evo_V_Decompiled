.class public abstract Lcom/htc/opensense/social/DataOp$OpCreator;
.super Ljava/lang/Object;
.source "DataOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/DataOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "OpCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        "E:",
        "Lcom/htc/opensense/social/DataOp",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 156
    .local p0, this:Lcom/htc/opensense/social/DataOp$OpCreator;,"Lcom/htc/opensense/social/DataOp$OpCreator<TT;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract newInstance(Lcom/htc/opensense/social/ISocialService;Landroid/os/Parcelable;)Lcom/htc/opensense/social/DataOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/social/ISocialService;",
            "TT;)TE;"
        }
    .end annotation
.end method

.method abstract readDataFromIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method abstract readDataListFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method readOpFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/htc/opensense/social/DataOp;
    .locals 5
    .parameter "intent"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, this:Lcom/htc/opensense/social/DataOp$OpCreator;,"Lcom/htc/opensense/social/DataOp$OpCreator<TT;TE;>;"
    invoke-static {p1}, Lcom/htc/opensense/social/SocialServiceManager;->readServiceFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v2

    .line 166
    .local v2, service:Lcom/htc/opensense/social/ISocialService;
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/social/DataOp$OpCreator;->readDataFromIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 167
    .local v0, data:Landroid/os/Parcelable;,"TT;"
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 169
    :try_start_0
    invoke-virtual {p0, v2, v0}, Lcom/htc/opensense/social/DataOp$OpCreator;->newInstance(Lcom/htc/opensense/social/ISocialService;Landroid/os/Parcelable;)Lcom/htc/opensense/social/DataOp;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 174
    :goto_0
    return-object v3

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "DataService"

    const-string v4, "class not found"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "intent"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, this:Lcom/htc/opensense/social/DataOp$OpCreator;,"Lcom/htc/opensense/social/DataOp$OpCreator<TT;TE;>;"
    invoke-static {p1}, Lcom/htc/opensense/social/SocialServiceManager;->readServiceFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v5

    .line 180
    .local v5, service:Lcom/htc/opensense/social/ISocialService;
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/social/DataOp$OpCreator;->readDataListFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 182
    .local v1, dataList:Ljava/util/List;,"Ljava/util/List<TT;>;"
    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 183
    :try_start_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 185
    .local v4, opList:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 186
    .local v0, data:Landroid/os/Parcelable;,"TT;"
    invoke-virtual {p0, v5, v0}, Lcom/htc/opensense/social/DataOp$OpCreator;->newInstance(Lcom/htc/opensense/social/ISocialService;Landroid/os/Parcelable;)Lcom/htc/opensense/social/DataOp;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    .end local v0           #data:Landroid/os/Parcelable;,"TT;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #opList:Ljava/util/List;,"Ljava/util/List<TE;>;"
    :catch_0
    move-exception v2

    .line 192
    .local v2, e:Ljava/lang/ClassCastException;
    const-string v6, "DataService"

    const-string v7, "class not found"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v2           #e:Ljava/lang/ClassCastException;
    :cond_0
    const/4 v4, 0x0

    :cond_1
    return-object v4
.end method

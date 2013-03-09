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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    invoke-static {p1}, Lcom/htc/opensense/social/SocialServiceManager;->readServiceFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/social/DataOp$OpCreator;->readDataFromIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p0, v2, v0}, Lcom/htc/opensense/social/DataOp$OpCreator;->newInstance(Lcom/htc/opensense/social/ISocialService;Landroid/os/Parcelable;)Lcom/htc/opensense/social/DataOp;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    const-string v3, "DataService"

    const-string v4, "class not found"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method readOpListFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/List;
    .locals 8
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

    invoke-static {p1}, Lcom/htc/opensense/social/SocialServiceManager;->readServiceFromIntent(Landroid/content/Intent;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v5

    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/social/DataOp$OpCreator;->readDataListFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p0, v5, v0}, Lcom/htc/opensense/social/DataOp$OpCreator;->newInstance(Lcom/htc/opensense/social/ISocialService;Landroid/os/Parcelable;)Lcom/htc/opensense/social/DataOp;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "DataService"

    const-string v7, "class not found"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v4, 0x0

    :cond_1
    return-object v4
.end method

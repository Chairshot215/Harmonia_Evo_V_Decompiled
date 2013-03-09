.class public interface abstract Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
.super Ljava/lang/Object;
.source "IComparableRI.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract createIntent()Landroid/content/Intent;
.end method

.method public abstract enableGroupItem()V
.end method

.method public abstract getActivityName()Ljava/lang/String;
.end method

.method public abstract getGroupItem(I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
.end method

.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getQueriedActionName()Ljava/lang/String;
.end method

.method public abstract getResolveInfo()Landroid/content/pm/ResolveInfo;
.end method

.method public abstract getSupportType()I
.end method

.method public abstract isFake()Z
.end method

.method public abstract isGroupItem()Z
.end method

.method public abstract setGroupItem(Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;)V
.end method

.method public abstract setQueriedActionName(Ljava/lang/String;)V
.end method

.method public abstract setSupportType(I)V
.end method

.class public abstract Lcom/htc/opensense/plugin/FriendStreamHostProxy;
.super Ljava/lang/Object;
.source "FriendStreamHostProxy.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/htc/opensense/plugin/FriendStreamHostProxy;->mContext:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public abstract canCompose()Z
.end method

.method public abstract getAccountType()Ljava/lang/String;
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/opensense/plugin/FriendStreamHostProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getFriendListIntent()Landroid/content/Intent;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTitleIconDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract showTab(Ljava/lang/String;)Z
.end method

.method public abstract supportInput()Z
.end method

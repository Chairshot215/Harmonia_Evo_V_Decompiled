.class public abstract Lcom/htc/view/util/ProxyListAdapter;
.super Ljava/lang/Object;
.source "ProxyListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field protected target:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTarget()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/view/util/ProxyListAdapter;->target:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public setTarget(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/htc/view/util/ProxyListAdapter;->target:Landroid/widget/ListAdapter;

    .line 11
    return-void
.end method

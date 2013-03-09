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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTarget()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/view/util/ProxyListAdapter;->target:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public setTarget(Landroid/widget/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/view/util/ProxyListAdapter;->target:Landroid/widget/ListAdapter;

    return-void
.end method

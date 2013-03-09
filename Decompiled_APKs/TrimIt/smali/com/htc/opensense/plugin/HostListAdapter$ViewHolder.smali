.class public Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "HostListAdapter.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/plugin/HostListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public mHeldViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mSeparationKey:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;->mHeldViews:Ljava/util/Map;

    .line 215
    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 3
    .parameter "other"

    .prologue
    .line 222
    instance-of v1, p1, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 223
    check-cast v0, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;

    .line 225
    .local v0, otherHolder:Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;->mSeparationKey:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;->mSeparationKey:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;->mSeparationKey:Ljava/lang/Object;

    iget-object v2, v0, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;->mSeparationKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const/4 v1, 0x0

    .line 234
    .end local v0           #otherHolder:Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;
    :goto_0
    return v1

    .line 230
    .restart local v0       #otherHolder:Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;
    :catch_0
    move-exception v1

    .line 234
    .end local v0           #otherHolder:Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

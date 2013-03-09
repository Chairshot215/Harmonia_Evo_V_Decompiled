.class public Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "HostListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/plugin/HostListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExteriorAdapterObserver"
.end annotation


# instance fields
.field public adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

.field final synthetic this$0:Lcom/htc/opensense/plugin/HostListAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/plugin/HostListAdapter;Lcom/htc/opensense/plugin/ExteriorListAdapter;)V
    .locals 0
    .parameter
    .parameter "adapter"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->this$0:Lcom/htc/opensense/plugin/HostListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 243
    iput-object p2, p0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .line 244
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->this$0:Lcom/htc/opensense/plugin/HostListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/HostListAdapter;->notifyDataSetChanged()V

    .line 261
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->this$0:Lcom/htc/opensense/plugin/HostListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/HostListAdapter;->notifyDataSetInvalidated()V

    .line 266
    return-void
.end method

.method public final registerDataSetObserver()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 250
    :cond_0
    return-void
.end method

.method public final unregisterDataSetObserver()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 256
    :cond_0
    return-void
.end method

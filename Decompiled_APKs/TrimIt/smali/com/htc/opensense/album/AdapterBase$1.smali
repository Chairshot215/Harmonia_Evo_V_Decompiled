.class Lcom/htc/opensense/album/AdapterBase$1;
.super Landroid/database/ContentObserver;
.source "AdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/album/AdapterBase;->registerContentObserve(Landroid/os/Handler;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/AdapterBase;


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/AdapterBase;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/opensense/album/AdapterBase$1;->this$0:Lcom/htc/opensense/album/AdapterBase;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/opensense/album/AdapterBase$1;->this$0:Lcom/htc/opensense/album/AdapterBase;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/AdapterBase;->onContentChange(Z)V

    .line 87
    return-void
.end method

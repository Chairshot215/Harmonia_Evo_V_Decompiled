.class Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "UserManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WifiRouter/UserManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/UserManagement;


# direct methods
.method private constructor <init>(Lcom/htc/WifiRouter/UserManagement;)V
    .locals 0
    .parameter

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;->this$0:Lcom/htc/WifiRouter/UserManagement;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/WifiRouter/UserManagement;Lcom/htc/WifiRouter/UserManagement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1105
    invoke-direct {p0, p1}, Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;-><init>(Lcom/htc/WifiRouter/UserManagement;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->w_dirty:Z
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$2800(Lcom/htc/WifiRouter/UserManagement;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->b_dirty:Z
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$3100(Lcom/htc/WifiRouter/UserManagement;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1131
    :goto_0
    return-void

    .line 1112
    :cond_0
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #calls: Lcom/htc/WifiRouter/UserManagement;->relayoutList()V
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$3800(Lcom/htc/WifiRouter/UserManagement;)V

    .line 1113
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver$1;

    invoke-direct {v1, p0}, Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver$1;-><init>(Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

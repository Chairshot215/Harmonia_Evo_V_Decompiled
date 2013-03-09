.class Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread$1;
.super Ljava/lang/Object;
.source "AddListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;


# direct methods
.method constructor <init>(Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread$1;->this$1:Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread$1;->this$1:Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;

    iget-object v0, v0, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;->this$0:Lcom/htc/launcher/AddListAdapter;

    #getter for: Lcom/htc/launcher/AddListAdapter;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/launcher/AddListAdapter;->access$000(Lcom/htc/launcher/AddListAdapter;)Lcom/htc/launcher/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->requestLayout()V

    .line 69
    return-void
.end method

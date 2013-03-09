.class Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$11;
.super Ljava/lang/Object;
.source "DmsDetailBrowserActivityExp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$11;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$11;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-static {p2}, Lcom/htc/music/IDmpUiPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IDmpUiPlaybackService;

    move-result-object v1

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$2802(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Lcom/htc/music/IDmpUiPlaybackService;)Lcom/htc/music/IDmpUiPlaybackService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$11;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$2802(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Lcom/htc/music/IDmpUiPlaybackService;)Lcom/htc/music/IDmpUiPlaybackService;

    return-void
.end method

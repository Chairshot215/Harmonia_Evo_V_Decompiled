.class Lcom/htc/music/DRMActionActivity$3;
.super Ljava/lang/Object;
.source "DRMActionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/DRMActionActivity;->onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DRMActionActivity;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/htc/music/DRMActionActivity;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DRMActionActivity$3;->this$0:Lcom/htc/music/DRMActionActivity;

    iput-object p2, p0, Lcom/htc/music/DRMActionActivity$3;->val$uri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity$3;->this$0:Lcom/htc/music/DRMActionActivity;

    iget-object v1, p0, Lcom/htc/music/DRMActionActivity$3;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/htc/music/DRMActionActivity;->deleteDownload(Landroid/net/Uri;)V

    return-void
.end method

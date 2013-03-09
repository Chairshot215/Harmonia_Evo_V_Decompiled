.class Lcom/htc/connectedMedia/ConnectedMedia$3;
.super Ljava/lang/Object;
.source "ConnectedMedia.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/connectedMedia/ConnectedMedia;->resetLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/connectedMedia/ConnectedMedia;


# direct methods
.method constructor <init>(Lcom/htc/connectedMedia/ConnectedMedia;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/htc/connectedMedia/ConnectedMedia$3;->this$0:Lcom/htc/connectedMedia/ConnectedMedia;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.album"

    const-string v2, "com.htc.album.TabPluginDevice.ActivityAllVideos"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v1, "directmode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    const/high16 v1, 0x408

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/htc/connectedMedia/ConnectedMedia$3;->this$0:Lcom/htc/connectedMedia/ConnectedMedia;

    invoke-virtual {v1, v0}, Lcom/htc/connectedMedia/ConnectedMedia;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

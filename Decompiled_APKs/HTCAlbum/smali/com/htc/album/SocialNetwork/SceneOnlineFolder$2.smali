.class Lcom/htc/album/SocialNetwork/SceneOnlineFolder$2;
.super Ljava/lang/Object;
.source "SceneOnlineFolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onRelayoutPageLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlineFolder;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$2;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$2;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    const/16 v1, 0x4e2d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onPostMessage(ILjava/lang/Object;I)V

    .line 607
    return-void
.end method

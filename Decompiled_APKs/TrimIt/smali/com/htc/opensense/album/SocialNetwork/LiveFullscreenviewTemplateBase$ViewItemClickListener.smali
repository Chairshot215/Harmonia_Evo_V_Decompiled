.class Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewItemClickListener;
.super Ljava/lang/Object;
.source "LiveFullscreenviewTemplateBase.java"

# interfaces
.implements Lcom/htc/opensense/widget/FullScreenView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)V
    .locals 0
    .parameter

    .prologue
    .line 614
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewItemClickListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;Landroid/view/View;ILandroid/view/MotionEvent;)Z
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "me"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewItemClickListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->onItemSelected(Landroid/view/View;Landroid/view/View;ILandroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

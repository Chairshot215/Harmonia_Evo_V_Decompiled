.class Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;
.super Ljava/lang/Object;
.source "FolderViewItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationUnit"
.end annotation


# instance fields
.field controller:Lcom/htc/sunny2/view/animation/SAnimationController;

.field sprite:Lcom/htc/sunny2/Sprite;

.field final synthetic this$1:Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;Lcom/htc/sunny2/Sprite;Lcom/htc/sunny2/view/animation/SAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;->this$1:Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;->sprite:Lcom/htc/sunny2/Sprite;

    iput-object p3, p0, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderAnimation$AnimationUnit;->controller:Lcom/htc/sunny2/view/animation/SAnimationController;

    return-void
.end method

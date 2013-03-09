.class Lcom/htc/album/helper/MenuManager$25;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager;->setKeepScreenOn(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$screenOn:Z


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;ZLandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5241
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$25;->this$0:Lcom/htc/album/helper/MenuManager;

    iput-boolean p2, p0, Lcom/htc/album/helper/MenuManager$25;->val$screenOn:Z

    iput-object p3, p0, Lcom/htc/album/helper/MenuManager$25;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 5244
    iget-boolean v0, p0, Lcom/htc/album/helper/MenuManager$25;->val$screenOn:Z

    if-eqz v0, :cond_0

    .line 5245
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$25;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5248
    :goto_0
    return-void

    .line 5247
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$25;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.class Lcom/htc/launcher/DesktopItemController$2;
.super Ljava/lang/Object;
.source "DesktopItemController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/DesktopItemController;->addInScreenAsync(Landroid/view/View;Lcom/htc/launcher/ItemInfo;IIIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/DesktopItemController;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$info:Lcom/htc/launcher/ItemInfo;

.field final synthetic val$insert:Z

.field final synthetic val$screen:I

.field final synthetic val$spanX:I

.field final synthetic val$spanY:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/htc/launcher/DesktopItemController;Landroid/view/View;Lcom/htc/launcher/ItemInfo;IIIIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController$2;->this$0:Lcom/htc/launcher/DesktopItemController;

    iput-object p2, p0, Lcom/htc/launcher/DesktopItemController$2;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/htc/launcher/DesktopItemController$2;->val$info:Lcom/htc/launcher/ItemInfo;

    iput p4, p0, Lcom/htc/launcher/DesktopItemController$2;->val$screen:I

    iput p5, p0, Lcom/htc/launcher/DesktopItemController$2;->val$x:I

    iput p6, p0, Lcom/htc/launcher/DesktopItemController$2;->val$y:I

    iput p7, p0, Lcom/htc/launcher/DesktopItemController$2;->val$spanX:I

    iput p8, p0, Lcom/htc/launcher/DesktopItemController$2;->val$spanY:I

    iput-boolean p9, p0, Lcom/htc/launcher/DesktopItemController$2;->val$insert:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1017
    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$2;->this$0:Lcom/htc/launcher/DesktopItemController;

    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$2;->val$child:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController$2;->val$info:Lcom/htc/launcher/ItemInfo;

    iget v3, p0, Lcom/htc/launcher/DesktopItemController$2;->val$screen:I

    iget v4, p0, Lcom/htc/launcher/DesktopItemController$2;->val$x:I

    iget v5, p0, Lcom/htc/launcher/DesktopItemController$2;->val$y:I

    iget v6, p0, Lcom/htc/launcher/DesktopItemController$2;->val$spanX:I

    iget v7, p0, Lcom/htc/launcher/DesktopItemController$2;->val$spanY:I

    iget-boolean v8, p0, Lcom/htc/launcher/DesktopItemController$2;->val$insert:Z

    invoke-virtual/range {v0 .. v8}, Lcom/htc/launcher/DesktopItemController;->addLegacyItemToDesktop(Landroid/view/View;Lcom/htc/launcher/ItemInfo;IIIIIZ)V

    .line 1018
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$2;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/launcher/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 1019
    invoke-static {}, Lcom/htc/launcher/DesktopItemController;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DesktopItemController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending itemAdded - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController$2;->val$child:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$2;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v0}, Lcom/htc/launcher/DesktopItemController;->access$200(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/Launcher;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$2;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/ApplicationInfo;

    invoke-static {v1, v0}, Lcom/htc/launcher/LauncherModel;->sendItemAdded(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :cond_1
    return-void

    .line 1022
    :catch_0
    move-exception v9

    .line 1023
    .local v9, error:Ljava/lang/StackOverflowError;
    const-string v0, "DesktopItemController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StackOverflowError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const-string v0, "DesktopItemController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "child : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/DesktopItemController$2;->val$child:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const-string v0, "DesktopItemController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/DesktopItemController$2;->val$screen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const-string v0, "DesktopItemController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/DesktopItemController$2;->val$x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const-string v0, "DesktopItemController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "y : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/launcher/DesktopItemController$2;->val$y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$2;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/launcher/WidgetProxy;

    if-eqz v0, :cond_2

    .line 1029
    iget-object v0, p0, Lcom/htc/launcher/DesktopItemController$2;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/launcher/WidgetProxy;

    .line 1030
    .local v10, wp:Lcom/htc/launcher/WidgetProxy;
    const-string v0, "DesktopItemController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WidgetView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/launcher/WidgetProxy;->getWidgetView()Lcom/htc/home/WidgetViewInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    .end local v10           #wp:Lcom/htc/launcher/WidgetProxy;
    :cond_2
    throw v9
.end method

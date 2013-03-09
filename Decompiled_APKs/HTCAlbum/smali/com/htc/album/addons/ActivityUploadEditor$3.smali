.class Lcom/htc/album/addons/ActivityUploadEditor$3;
.super Ljava/lang/Object;
.source "ActivityUploadEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/ActivityUploadEditor;->setKeepScreenOn(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/ActivityUploadEditor;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$screenOn:Z


# direct methods
.method constructor <init>(Lcom/htc/album/addons/ActivityUploadEditor;ZLandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/htc/album/addons/ActivityUploadEditor$3;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    iput-boolean p2, p0, Lcom/htc/album/addons/ActivityUploadEditor$3;->val$screenOn:Z

    iput-object p3, p0, Lcom/htc/album/addons/ActivityUploadEditor$3;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 377
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/album/addons/ActivityUploadEditor$3;->val$screenOn:Z

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/htc/album/addons/ActivityUploadEditor$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 384
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/ActivityUploadEditor$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/addons/ActivityUploadEditor;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityUploadEditor][setKeepScreenOn]: Set screen NG ! Value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/album/addons/ActivityUploadEditor$3;->val$screenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

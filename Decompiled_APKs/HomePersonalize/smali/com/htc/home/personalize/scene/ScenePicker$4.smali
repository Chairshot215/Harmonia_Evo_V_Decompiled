.class Lcom/htc/home/personalize/scene/ScenePicker$4;
.super Ljava/lang/Object;
.source "ScenePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/scene/ScenePicker;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/scene/ScenePicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/scene/ScenePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePicker$4;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$4;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #calls: Lcom/htc/home/personalize/scene/ScenePicker;->isScreenCacheModified()Z
    invoke-static {v0}, Lcom/htc/home/personalize/scene/ScenePicker;->access$500(Lcom/htc/home/personalize/scene/ScenePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$4;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-static {v0}, Lcom/htc/home/personalize/util/DrawWallpaperUtils;->drawWallpaper(Landroid/content/Context;)V

    .line 385
    :cond_0
    return-void
.end method

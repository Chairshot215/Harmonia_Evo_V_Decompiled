.class Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread$1;
.super Ljava/lang/Object;
.source "OnlineDeleteManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread$1;->this$1:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    iput-object p2, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread$1;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->keepScreenOn(Landroid/app/Activity;Z)V

    .line 241
    return-void
.end method

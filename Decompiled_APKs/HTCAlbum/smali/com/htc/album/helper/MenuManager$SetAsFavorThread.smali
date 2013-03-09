.class Lcom/htc/album/helper/MenuManager$SetAsFavorThread;
.super Ljava/lang/Thread;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetAsFavorThread"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field mDialog:Lcom/htc/app/HtcProgressDialog;

.field private mStopSign:Z

.field private mUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;Ljava/util/ArrayList;Lcom/htc/app/HtcProgressDialog;)V
    .locals 2
    .parameter
    .parameter "activity"
    .parameter
    .parameter "dialog"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/htc/app/HtcProgressDialog;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v1, 0x0

    .line 5193
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->this$0:Lcom/htc/album/helper/MenuManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 5187
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mActivity:Landroid/app/Activity;

    .line 5188
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mUriList:Ljava/util/ArrayList;

    .line 5189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mStopSign:Z

    .line 5190
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mDialog:Lcom/htc/app/HtcProgressDialog;

    .line 5194
    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mActivity:Landroid/app/Activity;

    .line 5195
    iput-object p3, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mUriList:Ljava/util/ArrayList;

    .line 5196
    iput-object p4, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mDialog:Lcom/htc/app/HtcProgressDialog;

    .line 5197
    return-void
.end method

.method static synthetic access$1400(Lcom/htc/album/helper/MenuManager$SetAsFavorThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 5185
    iget-boolean v0, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mStopSign:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/album/helper/MenuManager$SetAsFavorThread;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5185
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/album/helper/MenuManager$SetAsFavorThread;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5185
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mActivity:Landroid/app/Activity;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 5201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mStopSign:Z

    .line 5202
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 5211
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mUriList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 5234
    :cond_0
    :goto_0
    return-void

    .line 5214
    :cond_1
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 5216
    .local v1, imageuri:Landroid/net/Uri;
    iget-boolean v2, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mStopSign:Z

    if-nez v2, :cond_0

    .line 5219
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->tagPhotoFavorite(Landroid/app/Activity;Landroid/net/Uri;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5222
    .end local v1           #imageuri:Landroid/net/Uri;
    :cond_3
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/htc/album/helper/MenuManager$SetAsFavorThread$1;

    invoke-direct {v3, p0}, Lcom/htc/album/helper/MenuManager$SetAsFavorThread$1;-><init>(Lcom/htc/album/helper/MenuManager$SetAsFavorThread;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

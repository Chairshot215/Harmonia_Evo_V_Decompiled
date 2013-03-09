.class public Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$asyncReqMediaList;
.super Landroid/os/AsyncTask;
.source "SceneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "asyncReqMediaList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$asyncReqMediaList;->this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$asyncReqMediaList;->this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    #getter for: Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->access$000(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][SceneAdapter][asyncReqMediaList]: doInBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$asyncReqMediaList;->this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadDataInBackground(Landroid/os/AsyncTask;[Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$asyncReqMediaList;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$asyncReqMediaList;->this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadDataCancelled(Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$asyncReqMediaList;->this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    iget v1, v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mFlagListUpdate:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mFlagListUpdate:I

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$asyncReqMediaList;->this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    #getter for: Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->access$000(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][SceneAdapter][asyncReqMediaList]: onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$asyncReqMediaList;->this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadDataEnd(Landroid/os/AsyncTask;Ljava/lang/Integer;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$asyncReqMediaList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$asyncReqMediaList;->this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    #getter for: Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->access$000(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][SceneAdapter][asyncReqMediaList]: onPreExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$asyncReqMediaList;->this$0:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadDataBegin(Landroid/os/AsyncTask;)V

    return-void
.end method

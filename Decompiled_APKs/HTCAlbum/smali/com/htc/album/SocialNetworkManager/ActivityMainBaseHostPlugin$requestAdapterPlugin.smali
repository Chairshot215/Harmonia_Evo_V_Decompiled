.class public Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$requestAdapterPlugin;
.super Landroid/os/AsyncTask;
.source "ActivityMainBaseHostPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "requestAdapterPlugin"
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
.field final synthetic this$0:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;


# direct methods
.method protected constructor <init>(Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$requestAdapterPlugin;->this$0:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .parameter "urls"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$requestAdapterPlugin;->this$0:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->doGetAdapterPlugin()V

    .line 242
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 237
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$requestAdapterPlugin;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$requestAdapterPlugin;->this$0:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;

    const/16 v1, 0x4e8e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 255
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 237
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$requestAdapterPlugin;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 250
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 237
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$requestAdapterPlugin;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

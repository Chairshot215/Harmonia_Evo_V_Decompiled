.class Lcom/htc/store/receiver/RequestReceiver$1;
.super Ljava/lang/Object;
.source "RequestReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/receiver/RequestReceiver;->downloadItem(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/receiver/RequestReceiver;

.field final synthetic val$contentType:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isForUpdate:Z

.field final synthetic val$isMakingNoise:Z

.field final synthetic val$onlineId:Ljava/lang/String;

.field final synthetic val$src:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/store/receiver/RequestReceiver;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
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
    .line 159
    iput-object p1, p0, Lcom/htc/store/receiver/RequestReceiver$1;->this$0:Lcom/htc/store/receiver/RequestReceiver;

    iput-boolean p2, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$isMakingNoise:Z

    iput-object p3, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$onlineId:Ljava/lang/String;

    iput-object p6, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$version:Ljava/lang/String;

    iput p7, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$contentType:I

    iput-object p8, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$src:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$isForUpdate:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$isMakingNoise:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$onlineId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$version:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$onlineId:Ljava/lang/String;

    iget v5, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$contentType:I

    iget-object v6, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$src:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$isForUpdate:Z

    invoke-static/range {v0 .. v7}, Lcom/htc/store/util/DownloadUtils;->downloadItemMakeNoise(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$onlineId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$version:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$onlineId:Ljava/lang/String;

    iget v5, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$contentType:I

    iget-object v6, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$src:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/htc/store/receiver/RequestReceiver$1;->val$isForUpdate:Z

    invoke-static/range {v0 .. v7}, Lcom/htc/store/util/DownloadUtils;->downloadItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    goto :goto_0
.end method

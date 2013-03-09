.class Lcom/android/mms/util/ResizeImageHandler$1;
.super Ljava/lang/Object;
.source "ResizeImageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/ResizeImageHandler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/ResizeImageHandler;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/util/ResizeImageHandler;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/mms/util/ResizeImageHandler$1;->this$0:Lcom/android/mms/util/ResizeImageHandler;

    iput-object p2, p0, Lcom/android/mms/util/ResizeImageHandler$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 171
    const/4 v4, 0x0

    .line 172
    .local v4, tmp_result:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 173
    .local v1, image:Lcom/android/mms/ui/UriImage;
    iget-object v5, p0, Lcom/android/mms/util/ResizeImageHandler$1;->this$0:Lcom/android/mms/util/ResizeImageHandler;

    #calls: Lcom/android/mms/util/ResizeImageHandler;->setMaxResolution()I
    invoke-static {v5}, Lcom/android/mms/util/ResizeImageHandler;->access$000(Lcom/android/mms/util/ResizeImageHandler;)I

    move-result v0

    .line 181
    .local v0, count:I
    iget-object v5, p0, Lcom/android/mms/util/ResizeImageHandler$1;->this$0:Lcom/android/mms/util/ResizeImageHandler;

    #calls: Lcom/android/mms/util/ResizeImageHandler;->createImage()Lcom/android/mms/ui/UriImage;
    invoke-static {v5}, Lcom/android/mms/util/ResizeImageHandler;->access$100(Lcom/android/mms/util/ResizeImageHandler;)Lcom/android/mms/ui/UriImage;

    move-result-object v1

    .line 183
    iget-object v5, p0, Lcom/android/mms/util/ResizeImageHandler$1;->this$0:Lcom/android/mms/util/ResizeImageHandler;

    #calls: Lcom/android/mms/util/ResizeImageHandler;->resizeImage(Landroid/net/Uri;Lcom/android/mms/ui/UriImage;I)Landroid/net/Uri;
    invoke-static {v5, v4, v1, v0}, Lcom/android/mms/util/ResizeImageHandler;->access$200(Lcom/android/mms/util/ResizeImageHandler;Landroid/net/Uri;Lcom/android/mms/ui/UriImage;I)Landroid/net/Uri;

    move-result-object v3

    .line 186
    .local v3, result:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/mms/util/ResizeImageHandler$1;->this$0:Lcom/android/mms/util/ResizeImageHandler;

    #getter for: Lcom/android/mms/util/ResizeImageHandler;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/util/ResizeImageHandler;->access$300(Lcom/android/mms/util/ResizeImageHandler;)Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/util/ResizeImageHandler$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 187
    iget-object v5, p0, Lcom/android/mms/util/ResizeImageHandler$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 192
    :cond_0
    if-nez v3, :cond_2

    .line 193
    const-string v5, "ResizeImageHandler"

    const-string v6, "image fail to resize, result = null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    if-eqz v1, :cond_1

    .line 199
    move-object v2, v1

    .line 200
    .local v2, image1:Lcom/android/mms/ui/UriImage;
    iget-object v5, p0, Lcom/android/mms/util/ResizeImageHandler$1;->this$0:Lcom/android/mms/util/ResizeImageHandler;

    #getter for: Lcom/android/mms/util/ResizeImageHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/util/ResizeImageHandler;->access$700(Lcom/android/mms/util/ResizeImageHandler;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/mms/util/ResizeImageHandler$1$1;

    invoke-direct {v6, p0, v3, v2}, Lcom/android/mms/util/ResizeImageHandler$1$1;-><init>(Lcom/android/mms/util/ResizeImageHandler$1;Landroid/net/Uri;Lcom/android/mms/ui/UriImage;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    .end local v2           #image1:Lcom/android/mms/ui/UriImage;
    :cond_1
    return-void

    .line 195
    :cond_2
    const-string v5, "ResizeImageHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/util/ResizeImageHandler$1;->this$0:Lcom/android/mms/util/ResizeImageHandler;

    #getter for: Lcom/android/mms/util/ResizeImageHandler;->resizeWidth:I
    invoke-static {v7}, Lcom/android/mms/util/ResizeImageHandler;->access$400(Lcom/android/mms/util/ResizeImageHandler;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/util/ResizeImageHandler$1;->this$0:Lcom/android/mms/util/ResizeImageHandler;

    #getter for: Lcom/android/mms/util/ResizeImageHandler;->resizeHeight:I
    invoke-static {v7}, Lcom/android/mms/util/ResizeImageHandler;->access$500(Lcom/android/mms/util/ResizeImageHandler;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

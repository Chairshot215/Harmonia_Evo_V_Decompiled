.class Lcom/s0up/goomanager/GooManagerActivity$CopyAssets;
.super Landroid/os/AsyncTask;
.source "GooManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/GooManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopyAssets"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/GooManagerActivity;


# direct methods
.method private constructor <init>(Lcom/s0up/goomanager/GooManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/s0up/goomanager/GooManagerActivity$CopyAssets;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s0up/goomanager/GooManagerActivity;Lcom/s0up/goomanager/GooManagerActivity$CopyAssets;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/GooManagerActivity$CopyAssets;-><init>(Lcom/s0up/goomanager/GooManagerActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/GooManagerActivity$CopyAssets;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 292
    iget-object v5, p0, Lcom/s0up/goomanager/GooManagerActivity$CopyAssets;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-virtual {v5}, Lcom/s0up/goomanager/GooManagerActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .local v0, assetManager:Landroid/content/res/AssetManager;
    move-object v3, v4

    .line 293
    check-cast v3, [Ljava/lang/String;

    .line 295
    .local v3, files:[Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 299
    :goto_0
    array-length v6, v3

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v6, :cond_0

    .line 302
    return-object v4

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, e:Ljava/io/IOException;
    const-string v5, "GooManager"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    aget-object v2, v3, v5

    .line 300
    .local v2, filename:Ljava/lang/String;
    iget-object v7, p0, Lcom/s0up/goomanager/GooManagerActivity$CopyAssets;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    #calls: Lcom/s0up/goomanager/GooManagerActivity;->copyFile(Ljava/lang/String;)V
    invoke-static {v7, v2}, Lcom/s0up/goomanager/GooManagerActivity;->access$0(Lcom/s0up/goomanager/GooManagerActivity;Ljava/lang/String;)V

    .line 299
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.class Lcom/jme3/asset/plugins/AndroidLocator$AndroidAssetInfo;
.super Lcom/jme3/asset/AssetInfo;
.source "AndroidLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/asset/plugins/AndroidLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidAssetInfo"
.end annotation


# instance fields
.field private final assetPath:Ljava/lang/String;

.field private in:Ljava/io/InputStream;

.field final synthetic this$0:Lcom/jme3/asset/plugins/AndroidLocator;


# direct methods
.method public constructor <init>(Lcom/jme3/asset/plugins/AndroidLocator;Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter "assetManager"
    .parameter
    .parameter "assetPath"
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/asset/AssetManager;",
            "Lcom/jme3/asset/AssetKey",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p3, key:Lcom/jme3/asset/AssetKey;,"Lcom/jme3/asset/AssetKey<*>;"
    iput-object p1, p0, Lcom/jme3/asset/plugins/AndroidLocator$AndroidAssetInfo;->this$0:Lcom/jme3/asset/plugins/AndroidLocator;

    .line 22
    invoke-direct {p0, p2, p3}, Lcom/jme3/asset/AssetInfo;-><init>(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;)V

    .line 23
    iput-object p4, p0, Lcom/jme3/asset/plugins/AndroidLocator$AndroidAssetInfo;->assetPath:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/jme3/asset/plugins/AndroidLocator$AndroidAssetInfo;->in:Ljava/io/InputStream;

    .line 25
    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 29
    iget-object v2, p0, Lcom/jme3/asset/plugins/AndroidLocator$AndroidAssetInfo;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 31
    iget-object v1, p0, Lcom/jme3/asset/plugins/AndroidLocator$AndroidAssetInfo;->in:Ljava/io/InputStream;

    .line 32
    .local v1, in2:Ljava/io/InputStream;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jme3/asset/plugins/AndroidLocator$AndroidAssetInfo;->in:Ljava/io/InputStream;

    .line 37
    .end local v1           #in2:Ljava/io/InputStream;
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/jme3/asset/plugins/AndroidLocator$AndroidAssetInfo;->this$0:Lcom/jme3/asset/plugins/AndroidLocator;

    #getter for: Lcom/jme3/asset/plugins/AndroidLocator;->androidManager:Landroid/content/res/AssetManager;
    invoke-static {v2}, Lcom/jme3/asset/plugins/AndroidLocator;->access$000(Lcom/jme3/asset/plugins/AndroidLocator;)Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/asset/plugins/AndroidLocator$AndroidAssetInfo;->assetPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, ex:Ljava/io/IOException;
    new-instance v2, Lcom/jme3/asset/AssetLoadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open asset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/asset/plugins/AndroidLocator$AndroidAssetInfo;->assetPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/jme3/asset/AssetLoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

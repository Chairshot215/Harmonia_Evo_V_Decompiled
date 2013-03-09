.class Lcom/htc/sunny2/common/TextureMap$TextureInfo;
.super Ljava/lang/Object;
.source "TextureMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/common/TextureMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextureInfo"
.end annotation


# instance fields
.field public identifier:Ljava/lang/String;

.field public sunnyTexture:Lcom/htc/sunny2/Texture;

.field final synthetic this$0:Lcom/htc/sunny2/common/TextureMap;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/common/TextureMap;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->this$0:Lcom/htc/sunny2/common/TextureMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunny2/Texture;

    iput-object v0, p0, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->identifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public free()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunny2/Texture;

    iput-object v0, p0, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->identifier:Ljava/lang/String;

    return-void
.end method

.method public set(Lcom/htc/sunny2/Texture;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->sunnyTexture:Lcom/htc/sunny2/Texture;

    iput-object p2, p0, Lcom/htc/sunny2/common/TextureMap$TextureInfo;->identifier:Ljava/lang/String;

    return-void
.end method

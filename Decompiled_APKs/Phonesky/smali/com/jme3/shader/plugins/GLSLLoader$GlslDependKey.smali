.class Lcom/jme3/shader/plugins/GLSLLoader$GlslDependKey;
.super Lcom/jme3/asset/AssetKey;
.source "GLSLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/shader/plugins/GLSLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlslDependKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/asset/AssetKey",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/shader/plugins/GLSLLoader;


# direct methods
.method public constructor <init>(Lcom/jme3/shader/plugins/GLSLLoader;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/jme3/shader/plugins/GLSLLoader$GlslDependKey;->this$0:Lcom/jme3/shader/plugins/GLSLLoader;

    .line 82
    invoke-direct {p0, p2}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    .line 83
    return-void
.end method


# virtual methods
.method public shouldCache()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.class Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;
.super Ljava/lang/Object;
.source "GLSLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/shader/plugins/GLSLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DependencyNode"
.end annotation


# instance fields
.field private final dependOnMe:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;",
            ">;"
        }
    .end annotation
.end field

.field private final dependsOn:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;",
            ">;"
        }
    .end annotation
.end field

.field private shaderName:Ljava/lang/String;

.field private shaderSource:Ljava/lang/String;

.field final synthetic this$0:Lcom/jme3/shader/plugins/GLSLLoader;


# direct methods
.method public constructor <init>(Lcom/jme3/shader/plugins/GLSLLoader;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "shaderName"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->this$0:Lcom/jme3/shader/plugins/GLSLLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->dependsOn:Ljava/util/Set;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->dependOnMe:Ljava/util/Set;

    .line 62
    iput-object p2, p0, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->shaderName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->dependsOn:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->shaderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->shaderSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->dependOnMe:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public addDependency(Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->dependsOn:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->dependsOn:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p1, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->dependOnMe:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/jme3/shader/plugins/GLSLLoader$DependencyNode;->shaderSource:Ljava/lang/String;

    .line 67
    return-void
.end method

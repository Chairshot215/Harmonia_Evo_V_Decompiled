.class Lcom/htc/fusion/fx/FxPropertyManager$NativeFileObserver;
.super Landroid/os/FileObserver;
.source "FxPropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/FxPropertyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeFileObserver"
.end annotation


# instance fields
.field protected mPath:Ljava/lang/String;

.field protected mPropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/htc/fusion/fx/FxPropertyManager$NativeFileObserver;->mPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/fusion/fx/FxPropertyManager$NativeFileObserver;->mPropertyName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/htc/fusion/fx/FxPropertyManager$NativeFileObserver;->mPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/fusion/fx/FxPropertyManager$NativeFileObserver;->mPropertyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/fusion/fx/FxPropertyManager$NativeFileObserver;->mPropertyName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/fusion/fx/FxPropertyManager$NativeFileObserver;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fusion/fx/FxPropertyManager$NativeFileObserver;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/fusion/fx/FxPropertyManager;->getContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/fusion/fx/FxPropertyManager;->firePropertyEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/fusion/fx/FxPropertyManager;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

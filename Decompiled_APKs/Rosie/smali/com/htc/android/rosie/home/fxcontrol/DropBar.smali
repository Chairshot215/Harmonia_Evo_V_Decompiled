.class public Lcom/htc/android/rosie/home/fxcontrol/DropBar;
.super Ljava/lang/Object;
.source "DropBar.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field mZones:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/android/rosie/home/fxcontrol/DropZone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/htc/android/rosie/home/fxcontrol/DropBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->mHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->mZones:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addDrop(Lcom/htc/android/rosie/home/fxcontrol/DropZone;)V
    .locals 3
    .parameter "drop"

    .prologue
    .line 42
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->mZones:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->getScopeKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;-><init>(Landroid/os/Handler;Lcom/htc/android/rosie/home/fxcontrol/DropZone;)V

    .line 44
    .local v0, l:Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;
    invoke-virtual {p1, v0}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->bindListener(Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;)V

    .line 45
    return-void
.end method

.method public addDrop(Lcom/htc/android/rosie/home/fxcontrol/DropZone;Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;)V
    .locals 3
    .parameter "drop"
    .parameter "dropEventListener"

    .prologue
    .line 48
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DropBar.addDrop("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->getScopeKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->mZones:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->getScopeKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->bindListener(Lcom/htc/android/rosie/home/fxcontrol/DropEventListener;)V

    .line 51
    return-void
.end method

.method enableDropByScope(Ljava/lang/String;Z)V
    .locals 4
    .parameter "scope"
    .parameter "enable"

    .prologue
    .line 54
    const-string v1, "EditZone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EDIT_DEBUG] DropBar.enableDropByScope("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->mZones:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;

    .line 56
    .local v0, drop:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p2}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->setEnabled(Z)V

    .line 58
    :cond_0
    return-void
.end method

.method public getDropHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getDropZones()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/android/rosie/home/fxcontrol/DropZone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->mZones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onDragStart(Lcom/htc/launcher/Draggee;Lcom/htc/launcher/DragSource;Ljava/lang/Object;I)V
    .locals 8
    .parameter "draggee"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 73
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->mZones:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    .line 74
    .local v4, zones:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/android/rosie/home/fxcontrol/DropZone;>;"
    const/4 v0, 0x0

    .line 75
    .local v0, count:I
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/rosie/home/fxcontrol/DropZone;

    .line 76
    .local v3, z:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    invoke-virtual {v3, p1}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->accept(Lcom/htc/launcher/Draggee;)Z

    move-result v1

    .line 77
    .local v1, enable:Z
    const-string v5, "DropBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[EDIT_DEBUG] onDragStart("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") DropZone.accept:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", DropZone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v3, v1}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->setEnabled(Z)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    goto :goto_0

    .line 81
    .end local v1           #enable:Z
    .end local v3           #z:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    :cond_0
    return-void
.end method

.method removeAllDrops()V
    .locals 3

    .prologue
    .line 65
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->mZones:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/DropZone;

    .line 66
    .local v0, drop:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/DropZone;->destroy()V

    goto :goto_0

    .line 68
    .end local v0           #drop:Lcom/htc/android/rosie/home/fxcontrol/DropZone;
    :cond_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/DropBar;->mZones:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 69
    return-void
.end method

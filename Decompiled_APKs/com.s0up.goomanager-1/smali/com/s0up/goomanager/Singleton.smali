.class public Lcom/s0up/goomanager/Singleton;
.super Ljava/lang/Object;
.source "Singleton.java"


# static fields
.field private static instance:Lcom/s0up/goomanager/Singleton;


# instance fields
.field public cancelDownload:Ljava/lang/String;

.field public extras:Landroid/os/Bundle;

.field public fileArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public manualFiles:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/s0up/goomanager/Singleton;

    invoke-direct {v0}, Lcom/s0up/goomanager/Singleton;-><init>()V

    sput-object v0, Lcom/s0up/goomanager/Singleton;->instance:Lcom/s0up/goomanager/Singleton;

    .line 11
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/s0up/goomanager/Singleton;->fileArrayList:Ljava/util/ArrayList;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/s0up/goomanager/Singleton;->cancelDownload:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/s0up/goomanager/Singleton;->manualFiles:[Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/s0up/goomanager/Singleton;->extras:Landroid/os/Bundle;

    .line 60
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/s0up/goomanager/Singleton;
    .locals 2

    .prologue
    .line 63
    const-class v0, Lcom/s0up/goomanager/Singleton;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/s0up/goomanager/Singleton;->instance:Lcom/s0up/goomanager/Singleton;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addManualFilesZip(Ljava/lang/String;)V
    .locals 2
    .parameter "zip"

    .prologue
    .line 35
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 36
    .local v0, file:[Ljava/lang/String;
    iget-object v1, p0, Lcom/s0up/goomanager/Singleton;->manualFiles:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/s0up/goomanager/Singleton;->concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s0up/goomanager/Singleton;->manualFiles:[Ljava/lang/String;

    .line 37
    return-void
.end method

.method concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "first"
    .parameter "second"

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 72
    .end local p2
    :goto_0
    return-object p2

    .line 69
    .restart local p2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .local v0, both:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 71
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object p2, v1

    goto :goto_0
.end method

.method public getArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/s0up/goomanager/Singleton;->fileArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCancelDownload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/s0up/goomanager/Singleton;->cancelDownload:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/s0up/goomanager/Singleton;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/s0up/goomanager/Singleton;->extras:Landroid/os/Bundle;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/s0up/goomanager/Singleton;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManualFiles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/s0up/goomanager/Singleton;->manualFiles:[Ljava/lang/String;

    return-object v0
.end method

.method public setArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, myVar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/s0up/goomanager/Singleton;->fileArrayList:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method public setCancelDownload(Ljava/lang/String;)V
    .locals 0
    .parameter "cancelDownload"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/s0up/goomanager/Singleton;->cancelDownload:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/s0up/goomanager/Singleton;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/s0up/goomanager/Singleton;->extras:Landroid/os/Bundle;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/s0up/goomanager/Singleton;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 24
    return-void
.end method

.method public setManualFiles([Ljava/lang/String;)V
    .locals 0
    .parameter "files"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/s0up/goomanager/Singleton;->manualFiles:[Ljava/lang/String;

    .line 40
    return-void
.end method

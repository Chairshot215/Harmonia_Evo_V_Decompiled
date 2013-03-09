.class Lcom/htc/music/MusicPluginManager$NonUiHandler$1;
.super Ljava/lang/Object;
.source "MusicPluginManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/MusicPluginManager$NonUiHandler;->deleteOldestFiles(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/MusicPluginManager$NonUiHandler;


# direct methods
.method constructor <init>(Lcom/htc/music/MusicPluginManager$NonUiHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$NonUiHandler$1;->this$1:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 6

    const/4 v4, 0x0

    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    const/4 v4, -0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/htc/music/MusicPluginManager$NonUiHandler$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

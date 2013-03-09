.class public Lcom/htc/album/AlbumUtility/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final KEY_ENABLELOG:Ljava/lang/String; = "enablelog"

.field private static final KEY_LOGPREFIX:Ljava/lang/String; = "[HTCAlbum] "

.field private static final KEY_LOGSEVERITY:Ljava/lang/String; = "severity"

.field private static final KEY_PREFIX:Ljava/lang/String; = "album.prop."

.field private static final SEVERITY_DEBUG:I = 0x3

.field private static final SEVERITY_ERROR:I = 0x0

.field private static final SEVERITY_INFORMATION:I = 0x2

.field private static final SEVERITY_VERBOSE:I = 0x4

.field private static final SEVERITY_WARNING:I = 0x1

.field private static gEnableLog:Z

.field private static gInitialized:Z

.field private static gSeverity:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    sput-boolean v1, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    .line 25
    const/4 v0, 0x4

    sput v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    .line 26
    sput-boolean v1, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 78
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    .line 79
    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    return-void
.end method

.method public static varargs d2(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .parameter "tag"
    .parameter "args"

    .prologue
    .line 85
    sget-boolean v3, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    .line 87
    :cond_0
    sget-boolean v3, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v3, :cond_2

    sget v3, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[HTCAlbum] "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, a:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 93
    array-length v2, p1

    .line 94
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 96
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0           #a:Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 57
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    .line 58
    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    if-ltz v0, :cond_1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 50
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    .line 51
    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    if-ltz v0, :cond_1

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 43
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    .line 44
    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_1
    return-void
.end method

.method public static initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 30
    const-string v0, "album.prop.enablelog"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    .line 31
    const-string v0, "album.prop.severity"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    .line 32
    sput-boolean v2, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    .line 33
    return-void

    .line 30
    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 36
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    .line 37
    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 64
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    .line 65
    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 71
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    .line 72
    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :cond_1
    return-void
.end method

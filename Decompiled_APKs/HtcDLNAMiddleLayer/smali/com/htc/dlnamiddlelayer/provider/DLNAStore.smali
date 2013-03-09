.class public Lcom/htc/dlnamiddlelayer/provider/DLNAStore;
.super Ljava/lang/Object;
.source "DLNAStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnamiddlelayer/provider/DLNAStore$AccessTable;,
        Lcom/htc/dlnamiddlelayer/provider/DLNAStore$MediaTable;,
        Lcom/htc/dlnamiddlelayer/provider/DLNAStore$Server;,
        Lcom/htc/dlnamiddlelayer/provider/DLNAStore$BaseColumn;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "dlna"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://dlna"

.field public static final TAG:Ljava/lang/String; = "DLNAStore"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccessTableUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 31
    const-string v0, "content://dlna/access"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAudioContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 19
    const-string v0, "content://dlna/audios"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "tablename"

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://dlna"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getImageContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 15
    const-string v0, "content://dlna/images"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getRawCmdServerContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 35
    const-string v0, "content://dlna/server_rawcmd"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getServerContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 27
    const-string v0, "content://dlna/server"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 23
    const-string v0, "content://dlna/videos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

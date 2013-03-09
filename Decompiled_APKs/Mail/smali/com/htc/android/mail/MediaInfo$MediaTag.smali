.class public Lcom/htc/android/mail/MediaInfo$MediaTag;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaTag"
.end annotation


# instance fields
.field public mAlbum:Ljava/lang/String;

.field public mArtist:Ljava/lang/String;

.field public mFilename:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/mail/MediaInfo;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/MediaInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "title"
    .parameter "album"
    .parameter "artist"
    .parameter "filename"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/htc/android/mail/MediaInfo$MediaTag;->this$0:Lcom/htc/android/mail/MediaInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p2, p0, Lcom/htc/android/mail/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    .line 260
    iput-object p3, p0, Lcom/htc/android/mail/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    .line 261
    iput-object p4, p0, Lcom/htc/android/mail/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    .line 262
    iput-object p5, p0, Lcom/htc/android/mail/MediaInfo$MediaTag;->mFilename:Ljava/lang/String;

    .line 263
    return-void
.end method

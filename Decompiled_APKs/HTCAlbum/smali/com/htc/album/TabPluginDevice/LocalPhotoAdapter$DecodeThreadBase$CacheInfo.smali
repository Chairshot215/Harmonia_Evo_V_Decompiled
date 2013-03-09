.class public Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;
.super Ljava/lang/Object;
.source "LocalPhotoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CacheInfo"
.end annotation


# instance fields
.field public dataPath:Ljava/lang/String;

.field public dateModify:J

.field public fileSize:J

.field public mimeType:Ljava/lang/String;

.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;


# direct methods
.method protected constructor <init>(Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 89
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->this$1:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->mimeType:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dataPath:Ljava/lang/String;

    .line 93
    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->dateModify:J

    .line 94
    iput-wide v1, p0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter$DecodeThreadBase$CacheInfo;->fileSize:J

    return-void
.end method

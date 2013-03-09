.class public Lcom/htc/music/DMPContentItemDetails;
.super Ljava/lang/Object;
.source "DMPContentItemDetails.java"


# instance fields
.field public contentAlbum:Ljava/lang/String;

.field public contentArtist:Ljava/lang/String;

.field public contentComposer:Ljava/lang/String;

.field public contentDate:Ljava/lang/String;

.field public contentDuration:J

.field public contentGenre:Ljava/lang/String;

.field public contentPath:Ljava/lang/String;

.field public contentTitle:Ljava/lang/String;

.field public fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/htc/music/DMPContentItemDetails;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/DMPContentItemDetails;->fileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/DMPContentItemDetails;->contentPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/DMPContentItemDetails;->contentTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/DMPContentItemDetails;->contentArtist:Ljava/lang/String;

    const-string v0, " "

    iput-object v0, p0, Lcom/htc/music/DMPContentItemDetails;->contentAlbum:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/DMPContentItemDetails;->contentDate:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/DMPContentItemDetails;->contentGenre:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/DMPContentItemDetails;->contentComposer:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/DMPContentItemDetails;->contentDuration:J

    return-void
.end method

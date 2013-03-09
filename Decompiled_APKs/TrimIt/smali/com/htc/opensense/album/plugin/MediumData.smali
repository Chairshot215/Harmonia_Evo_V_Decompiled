.class public Lcom/htc/opensense/album/plugin/MediumData;
.super Lcom/htc/opensense/social/data/Medium;
.source "MediumData.java"


# static fields
.field public static final MEDIUM_TYPE_PHOTO:I = 0x0

.field public static final MEDIUM_TYPE_VIDEO:I = 0x1


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .parameter "mid"
    .parameter "name"
    .parameter "url"
    .parameter "thumbUrl"
    .parameter "webLink"
    .parameter "description"
    .parameter "createTime"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Medium;-><init>()V

    .line 33
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/htc/opensense/album/plugin/MediumData;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0
    .parameter "mid"
    .parameter "name"
    .parameter "url"
    .parameter "thumbUrl"
    .parameter "webLink"
    .parameter "description"
    .parameter "createTime"
    .parameter "type"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Medium;-><init>()V

    .line 49
    invoke-direct/range {p0 .. p9}, Lcom/htc/opensense/album/plugin/MediumData;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 50
    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0
    .parameter "mid"
    .parameter "name"
    .parameter "url"
    .parameter "thumbUrl"
    .parameter "webLink"
    .parameter "description"
    .parameter "createTime"
    .parameter "type"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/opensense/album/plugin/MediumData;->id:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/htc/opensense/album/plugin/MediumData;->name:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/htc/opensense/album/plugin/MediumData;->url:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/htc/opensense/album/plugin/MediumData;->thumbnailUrl:Ljava/lang/String;

    .line 58
    iput-wide p7, p0, Lcom/htc/opensense/album/plugin/MediumData;->createTime:J

    .line 59
    iput-object p5, p0, Lcom/htc/opensense/album/plugin/MediumData;->webLink:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Lcom/htc/opensense/album/plugin/MediumData;->description:Ljava/lang/String;

    .line 61
    iput p9, p0, Lcom/htc/opensense/album/plugin/MediumData;->type:I

    .line 62
    return-void
.end method

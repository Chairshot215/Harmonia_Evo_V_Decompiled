.class public Lcom/htc/opensense/album/plugin/MediumData;
.super Lcom/htc/opensense/social/data/Medium;
.source "MediumData.java"


# static fields
.field public static final MEDIUM_TYPE_PHOTO:I = 0x0

.field public static final MEDIUM_TYPE_VIDEO:I = 0x1


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10

    invoke-direct {p0}, Lcom/htc/opensense/social/data/Medium;-><init>()V

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

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/opensense/social/data/Medium;-><init>()V

    invoke-direct/range {p0 .. p9}, Lcom/htc/opensense/album/plugin/MediumData;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/opensense/social/data/Medium;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    iput-wide p7, p0, Lcom/htc/opensense/social/data/Medium;->createTime:J

    iput-object p5, p0, Lcom/htc/opensense/social/data/Medium;->webLink:Ljava/lang/String;

    iput-object p6, p0, Lcom/htc/opensense/social/data/Medium;->description:Ljava/lang/String;

    iput p9, p0, Lcom/htc/opensense/social/data/Medium;->type:I

    return-void
.end method

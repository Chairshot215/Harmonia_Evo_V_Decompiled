.class public Lcom/htc/util/skin/SkinPackageCursorInfo;
.super Ljava/lang/Object;
.source "SkinPackageCursorInfo.java"


# instance fields
.field fileName:Ljava/lang/String;

.field id:J

.field packageName:Ljava/lang/String;

.field packageType:I

.field skinName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->id:J

    iput-object v2, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->fileName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->skinName:Ljava/lang/String;

    iput v3, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->packageType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->id:J

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->fileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->packageName:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->skinName:Ljava/lang/String;

    iput v3, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->packageType:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->id:J

    iput-object v2, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->fileName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->skinName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->packageType:I

    iput-wide p1, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->id:J

    iput-object p3, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->fileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->skinName:Ljava/lang/String;

    iput p6, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->packageType:I

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->id:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageType()I
    .locals 1

    iget v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->packageType:I

    return v0
.end method

.method public getSkinName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->skinName:Ljava/lang/String;

    return-object v0
.end method

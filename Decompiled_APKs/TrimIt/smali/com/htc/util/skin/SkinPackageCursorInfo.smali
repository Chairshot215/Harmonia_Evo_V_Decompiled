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

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->id:J

    .line 7
    iput-object v2, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->fileName:Ljava/lang/String;

    .line 8
    iput-object v2, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->packageName:Ljava/lang/String;

    .line 9
    iput-object v2, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->skinName:Ljava/lang/String;

    .line 10
    iput v3, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->packageType:I

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->id:J

    .line 14
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->fileName:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->packageName:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->skinName:Ljava/lang/String;

    .line 17
    iput v3, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->packageType:I

    .line 18
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "id"
    .parameter "fileName"
    .parameter "pacakgeName"
    .parameter "skinName"
    .parameter "packageType"

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->id:J

    .line 7
    iput-object v2, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->fileName:Ljava/lang/String;

    .line 8
    iput-object v2, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->packageName:Ljava/lang/String;

    .line 9
    iput-object v2, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->skinName:Ljava/lang/String;

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->packageType:I

    .line 21
    iput-wide p1, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->id:J

    .line 22
    iput-object p3, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->fileName:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->packageName:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->skinName:Ljava/lang/String;

    .line 25
    iput p6, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->packageType:I

    .line 26
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->id:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageType()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->packageType:I

    return v0
.end method

.method public getSkinName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/util/skin/SkinPackageCursorInfo;->skinName:Ljava/lang/String;

    return-object v0
.end method

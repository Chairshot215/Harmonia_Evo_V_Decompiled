.class public Landroid/webkit/WebStorage$Origin;
.super Ljava/lang/Object;
.source "WebStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Origin"
.end annotation


# instance fields
.field private mOrigin:Ljava/lang/String;

.field private mQuota:J

.field private mUsage:J


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    iput-object p1, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    iput-object p1, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    iput-wide p2, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JJ)V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    iput-wide v1, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    iput-object p1, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    iput-wide p2, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    iput-wide p4, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JJLandroid/webkit/WebStorage$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebStorage$Origin;-><init>(Ljava/lang/String;JJ)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLandroid/webkit/WebStorage$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebStorage$Origin;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/webkit/WebStorage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebStorage$Origin;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getOrigin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getQuota()J
    .locals 2

    iget-wide v0, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    return-wide v0
.end method

.method public getUsage()J
    .locals 2

    iget-wide v0, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    return-wide v0
.end method

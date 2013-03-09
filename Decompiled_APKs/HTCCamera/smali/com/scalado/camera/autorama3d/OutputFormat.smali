.class public Lcom/scalado/camera/autorama3d/OutputFormat;
.super Ljava/lang/Object;
.source "OutputFormat.java"


# static fields
.field public static final JPS:Lcom/scalado/camera/autorama3d/OutputFormat;

.field public static final MPO:Lcom/scalado/camera/autorama3d/OutputFormat;


# instance fields
.field private mFormatName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/scalado/camera/autorama3d/OutputFormat;

    const-string v1, "MPO"

    invoke-direct {v0, v1}, Lcom/scalado/camera/autorama3d/OutputFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/scalado/camera/autorama3d/OutputFormat;->MPO:Lcom/scalado/camera/autorama3d/OutputFormat;

    new-instance v0, Lcom/scalado/camera/autorama3d/OutputFormat;

    const-string v1, "JPS"

    invoke-direct {v0, v1}, Lcom/scalado/camera/autorama3d/OutputFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/scalado/camera/autorama3d/OutputFormat;->JPS:Lcom/scalado/camera/autorama3d/OutputFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/scalado/camera/autorama3d/OutputFormat;->mFormatName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/autorama3d/OutputFormat;->mFormatName:Ljava/lang/String;

    return-object v0
.end method

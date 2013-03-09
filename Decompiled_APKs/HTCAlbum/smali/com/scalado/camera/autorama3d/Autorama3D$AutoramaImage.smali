.class abstract Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaImage;
.super Ljava/lang/Object;
.source "Autorama3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama3d/Autorama3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AutoramaImage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/autorama3d/Autorama3D;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/autorama3d/Autorama3D;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaImage;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/autorama3d/Autorama3D$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaImage;-><init>(Lcom/scalado/camera/autorama3d/Autorama3D;)V

    return-void
.end method


# virtual methods
.method public abstract addToStitcher(Lcom/scalado/caps/autorama/Stitcher;)V
.end method

.method public abstract getDecoder()Lcom/scalado/caps/Decoder;
.end method

.method public abstract getDimensions()Lcom/scalado/base/Size;
.end method

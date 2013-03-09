.class abstract Lcom/scalado/camera/autorama/Autorama$AutoramaImage;
.super Ljava/lang/Object;
.source "Autorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama/Autorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AutoramaImage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/autorama/Autorama;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    return-void
.end method


# virtual methods
.method public abstract addToStitcher(Lcom/scalado/caps/autorama/Stitcher;)V
.end method

.method public abstract getDecoder()Lcom/scalado/caps/Decoder;
.end method

.method public abstract getDimensions()Lcom/scalado/base/Size;
.end method

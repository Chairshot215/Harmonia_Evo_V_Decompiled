.class Lcom/scalado/camera/autorama/Autorama$1;
.super Ljava/util/TimerTask;
.source "Autorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scalado/camera/autorama/Autorama;->restartPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/autorama/Autorama;


# direct methods
.method constructor <init>(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$1;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$1;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$1000(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/camera/Camera;->startPreview()V

    .line 647
    return-void
.end method

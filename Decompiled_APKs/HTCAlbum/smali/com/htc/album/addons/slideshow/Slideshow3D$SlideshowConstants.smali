.class public Lcom/htc/album/addons/slideshow/Slideshow3D$SlideshowConstants;
.super Ljava/lang/Object;
.source "Slideshow3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/Slideshow3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SlideshowConstants"
.end annotation


# static fields
.field public static final AUTO_HIDE_CONTROLBAR_INTERVAK:I = 0xdac

.field public static final FOOT_BAR_SLIDESHOW:I = 0xde

.field public static final HEADER_BAR_SLIDESHOW:I = 0x6f

.field public static final MSG_HIDE_CMD_BAR:I = 0x20

.field public static final MSG_SHOW_CMD_BAR:I = 0x10


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;


# direct methods
.method public constructor <init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$SlideshowConstants;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Lcom/scalado/camera/hdr/HDR$RawCallbackHandler;
.super Ljava/lang/Object;
.source "HDR.java"

# interfaces
.implements Lcom/scalado/camera/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/hdr/HDR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RawCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/hdr/HDR;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/hdr/HDR;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR$RawCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/hdr/HDR$RawCallbackHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/camera/hdr/HDR$RawCallbackHandler;-><init>(Lcom/scalado/camera/hdr/HDR;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/scalado/camera/Camera;)V
    .locals 0

    return-void
.end method

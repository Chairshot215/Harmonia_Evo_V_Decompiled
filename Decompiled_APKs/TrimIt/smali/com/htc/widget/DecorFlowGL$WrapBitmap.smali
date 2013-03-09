.class public Lcom/htc/widget/DecorFlowGL$WrapBitmap;
.super Ljava/lang/Object;
.source "DecorFlowGL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DecorFlowGL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrapBitmap"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public state:Z

.field final synthetic this$0:Lcom/htc/widget/DecorFlowGL;


# direct methods
.method public constructor <init>(Lcom/htc/widget/DecorFlowGL;)V
    .locals 1
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->this$0:Lcom/htc/widget/DecorFlowGL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 749
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/DecorFlowGL$WrapBitmap;->state:Z

    return-void
.end method

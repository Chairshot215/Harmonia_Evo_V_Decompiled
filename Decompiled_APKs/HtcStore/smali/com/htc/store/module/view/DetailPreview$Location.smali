.class Lcom/htc/store/module/view/DetailPreview$Location;
.super Ljava/lang/Object;
.source "DetailPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/module/view/DetailPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Location"
.end annotation


# instance fields
.field height:I

.field margin_left:I

.field margin_top:I

.field final synthetic this$0:Lcom/htc/store/module/view/DetailPreview;

.field width:I


# direct methods
.method private constructor <init>(Lcom/htc/store/module/view/DetailPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/htc/store/module/view/DetailPreview$Location;->this$0:Lcom/htc/store/module/view/DetailPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/module/view/DetailPreview;Lcom/htc/store/module/view/DetailPreview$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/store/module/view/DetailPreview$Location;-><init>(Lcom/htc/store/module/view/DetailPreview;)V

    return-void
.end method

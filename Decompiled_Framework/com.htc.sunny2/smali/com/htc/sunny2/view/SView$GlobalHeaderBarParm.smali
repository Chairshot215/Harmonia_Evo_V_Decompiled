.class Lcom/htc/sunny2/view/SView$GlobalHeaderBarParm;
.super Ljava/lang/Object;
.source "SView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/SView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlobalHeaderBarParm"
.end annotation


# instance fields
.field headerBmp:Landroid/graphics/Bitmap;

.field statusBarHeight:I

.field final synthetic this$0:Lcom/htc/sunny2/view/SView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/view/SView;Landroid/graphics/Bitmap;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/view/SView$GlobalHeaderBarParm;->this$0:Lcom/htc/sunny2/view/SView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/sunny2/view/SView$GlobalHeaderBarParm;->headerBmp:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/htc/sunny2/view/SView$GlobalHeaderBarParm;->statusBarHeight:I

    return-void
.end method

.class Lcom/htc/widget/CarouselModel$Row;
.super Ljava/lang/Object;
.source "CarouselModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/CarouselModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Row"
.end annotation


# instance fields
.field public mRow:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/htc/widget/CarouselModel;


# direct methods
.method public constructor <init>(Lcom/htc/widget/CarouselModel;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "row"

    .prologue
    .line 514
    iput-object p1, p0, Lcom/htc/widget/CarouselModel$Row;->this$0:Lcom/htc/widget/CarouselModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    iput-object p2, p0, Lcom/htc/widget/CarouselModel$Row;->mRow:[Ljava/lang/Object;

    .line 516
    return-void
.end method

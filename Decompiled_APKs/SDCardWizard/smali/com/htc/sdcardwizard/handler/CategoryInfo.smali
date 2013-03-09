.class public Lcom/htc/sdcardwizard/handler/CategoryInfo;
.super Ljava/lang/Object;
.source "CategoryInfo.java"


# instance fields
.field public final count:I

.field public final size:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sdcardwizard/handler/CategoryInfo;->count:I

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sdcardwizard/handler/CategoryInfo;->size:J

    .line 10
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .parameter "count"
    .parameter "size"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/htc/sdcardwizard/handler/CategoryInfo;->count:I

    .line 14
    iput-wide p2, p0, Lcom/htc/sdcardwizard/handler/CategoryInfo;->size:J

    .line 15
    return-void
.end method

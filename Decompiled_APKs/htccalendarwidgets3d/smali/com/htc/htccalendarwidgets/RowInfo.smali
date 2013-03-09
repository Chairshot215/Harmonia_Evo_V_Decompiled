.class public Lcom/htc/htccalendarwidgets/RowInfo;
.super Ljava/lang/Object;
.source "RowInfo.java"


# instance fields
.field public mData:I

.field public mType:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "type"
    .parameter "data"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/htc/htccalendarwidgets/RowInfo;->mType:I

    .line 14
    iput p2, p0, Lcom/htc/htccalendarwidgets/RowInfo;->mData:I

    .line 15
    return-void
.end method

.class public Lcom/redbend/vdm/MmiViewContext;
.super Ljava/lang/Object;
.source "MmiViewContext.java"


# instance fields
.field public displayText:Ljava/lang/String;

.field public maxDT:I

.field public minDT:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "text"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/redbend/vdm/MmiViewContext;->displayText:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/redbend/vdm/MmiViewContext;->minDT:I

    .line 23
    iput p3, p0, Lcom/redbend/vdm/MmiViewContext;->maxDT:I

    .line 24
    return-void
.end method

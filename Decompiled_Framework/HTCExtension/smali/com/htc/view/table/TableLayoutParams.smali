.class public Lcom/htc/view/table/TableLayoutParams;
.super Ljava/lang/Object;
.source "TableLayoutParams.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private initialWithScrollControl:Z

.field private isScrollOverBoundary:Z

.field private mOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/view/table/TableLayoutParams;->mOrientation:I

    iput-boolean v1, p0, Lcom/htc/view/table/TableLayoutParams;->isScrollOverBoundary:Z

    iput-boolean v1, p0, Lcom/htc/view/table/TableLayoutParams;->initialWithScrollControl:Z

    return-void
.end method


# virtual methods
.method public enableScrollOverBoundary(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/view/table/TableLayoutParams;->isScrollOverBoundary:Z

    return-void
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/htc/view/table/TableLayoutParams;->mOrientation:I

    return v0
.end method

.method public initialWithScrollControl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/view/table/TableLayoutParams;->initialWithScrollControl:Z

    return-void
.end method

.method public isInitialWithScrollControl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/view/table/TableLayoutParams;->initialWithScrollControl:Z

    return v0
.end method

.method public isScrollOverBoundary()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/view/table/TableLayoutParams;->isScrollOverBoundary:Z

    return v0
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/htc/view/table/TableLayoutParams;->mOrientation:I

    return-void
.end method

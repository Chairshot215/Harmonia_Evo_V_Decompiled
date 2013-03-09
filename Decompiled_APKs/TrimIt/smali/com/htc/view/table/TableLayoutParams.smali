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

    .prologue
    const/4 v1, 0x1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/view/table/TableLayoutParams;->mOrientation:I

    .line 15
    iput-boolean v1, p0, Lcom/htc/view/table/TableLayoutParams;->isScrollOverBoundary:Z

    .line 16
    iput-boolean v1, p0, Lcom/htc/view/table/TableLayoutParams;->initialWithScrollControl:Z

    return-void
.end method


# virtual methods
.method public enableScrollOverBoundary(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/htc/view/table/TableLayoutParams;->isScrollOverBoundary:Z

    .line 27
    return-void
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/htc/view/table/TableLayoutParams;->mOrientation:I

    return v0
.end method

.method public initialWithScrollControl(Z)V
    .locals 0
    .parameter "yes"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/htc/view/table/TableLayoutParams;->initialWithScrollControl:Z

    .line 35
    return-void
.end method

.method public isInitialWithScrollControl()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/htc/view/table/TableLayoutParams;->initialWithScrollControl:Z

    return v0
.end method

.method public isScrollOverBoundary()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/view/table/TableLayoutParams;->isScrollOverBoundary:Z

    return v0
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 22
    iput p1, p0, Lcom/htc/view/table/TableLayoutParams;->mOrientation:I

    .line 23
    return-void
.end method

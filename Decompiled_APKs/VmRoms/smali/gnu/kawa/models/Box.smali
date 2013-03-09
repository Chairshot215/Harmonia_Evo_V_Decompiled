.class public abstract Lgnu/kawa/models/Box;
.super Lgnu/kawa/models/Model;
.source "Box.java"

# interfaces
.implements Lgnu/kawa/models/Viewable;
.implements Ljava/io/Serializable;


# instance fields
.field cellSpacing:Lgnu/kawa/models/Viewable;

.field components:[Lgnu/kawa/models/Viewable;

.field numComponents:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lgnu/kawa/models/Model;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lgnu/kawa/models/Viewable;)V
    .locals 4
    .parameter "component"

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v0, p0, Lgnu/kawa/models/Box;->components:[Lgnu/kawa/models/Viewable;

    .line 56
    .local v0, arr:[Lgnu/kawa/models/Viewable;
    iget v1, p0, Lgnu/kawa/models/Box;->numComponents:I

    .line 57
    .local v1, n:I
    if-nez v1, :cond_1

    .line 58
    const/4 v2, 0x4

    new-array v0, v2, [Lgnu/kawa/models/Viewable;

    iput-object v0, p0, Lgnu/kawa/models/Box;->components:[Lgnu/kawa/models/Viewable;

    .line 65
    :cond_0
    :goto_0
    iget-object v2, p0, Lgnu/kawa/models/Box;->components:[Lgnu/kawa/models/Viewable;

    aput-object p1, v2, v1

    .line 66
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/kawa/models/Box;->numComponents:I

    .line 67
    return-void

    .line 59
    :cond_1
    array-length v2, v0

    if-gt v2, v1, :cond_0

    .line 61
    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Lgnu/kawa/models/Viewable;

    iput-object v2, p0, Lgnu/kawa/models/Box;->components:[Lgnu/kawa/models/Viewable;

    .line 62
    iget-object v2, p0, Lgnu/kawa/models/Box;->components:[Lgnu/kawa/models/Viewable;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget-object v0, p0, Lgnu/kawa/models/Box;->components:[Lgnu/kawa/models/Viewable;

    goto :goto_0
.end method

.method public abstract getAxis()I
.end method

.method public getCellSpacing()Lgnu/kawa/models/Viewable;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lgnu/kawa/models/Box;->cellSpacing:Lgnu/kawa/models/Viewable;

    return-object v0
.end method

.method public final getComponent(I)Lgnu/kawa/models/Viewable;
    .locals 1
    .parameter "i"

    .prologue
    .line 50
    iget-object v0, p0, Lgnu/kawa/models/Box;->components:[Lgnu/kawa/models/Viewable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getComponentCount()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lgnu/kawa/models/Box;->numComponents:I

    return v0
.end method

.method public makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V
    .locals 0
    .parameter "display"
    .parameter "where"

    .prologue
    .line 71
    invoke-virtual {p1, p0, p2}, Lgnu/kawa/models/Display;->addBox(Lgnu/kawa/models/Box;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public setCellSpacing(Ljava/lang/Object;)V
    .locals 4
    .parameter "cellSpacing"

    .prologue
    const/4 v3, 0x0

    .line 19
    instance-of v2, p1, Lgnu/math/IntNum;

    if-nez v2, :cond_0

    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 22
    :cond_0
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 23
    .local v1, size:I
    invoke-virtual {p0}, Lgnu/kawa/models/Box;->getAxis()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/awt/Dimension;

    invoke-direct {v2, v1, v3}, Ljava/awt/Dimension;-><init>(II)V

    move-object v0, v2

    .line 25
    .local v0, dim:Ljava/awt/Dimension;
    :goto_0
    invoke-static {v0}, Lgnu/kawa/models/Spacer;->rigidArea(Ljava/awt/geom/Dimension2D;)Lgnu/kawa/models/Spacer;

    move-result-object v2

    iput-object v2, p0, Lgnu/kawa/models/Box;->cellSpacing:Lgnu/kawa/models/Viewable;

    .line 38
    .end local v0           #dim:Ljava/awt/Dimension;
    .end local v1           #size:I
    :goto_1
    return-void

    .line 23
    .restart local v1       #size:I
    :cond_1
    new-instance v2, Ljava/awt/Dimension;

    invoke-direct {v2, v3, v1}, Ljava/awt/Dimension;-><init>(II)V

    move-object v0, v2

    goto :goto_0

    .line 37
    .end local v1           #size:I
    .restart local p1
    :cond_2
    check-cast p1, Lgnu/kawa/models/Viewable;

    .end local p1
    iput-object p1, p0, Lgnu/kawa/models/Box;->cellSpacing:Lgnu/kawa/models/Viewable;

    goto :goto_1
.end method

.class public Landroid/test/ViewAsserts;
.super Ljava/lang/Object;
.source "ViewAsserts.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertBaselineAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x2

    new-array v2, v3, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getBaseline()I

    move-result v4

    add-int v0, v3, v4

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v4

    add-int v1, v3, v4

    const-string v3, "views are not baseline aligned"

    invoke-static {v3, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    return-void
.end method

.method public static assertBottomAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x2

    new-array v2, v3, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v0, v3, v4

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v1, v3, v4

    const-string v3, "views are not bottom aligned"

    invoke-static {v3, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    return-void
.end method

.method public static assertBottomAligned(Landroid/view/View;Landroid/view/View;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x2

    new-array v2, v3, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v0, v3, v4

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v1, v3, v4

    const-string v3, "views are not bottom aligned"

    sub-int v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3, v4, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    return-void
.end method

.method public static assertGroupContains(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const-string v5, "Child count should be >= 0"

    if-ltz v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v5, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_0

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "child "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is duplicated in parent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "group does not contain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    return-void
.end method

.method public static assertGroupIntegrity(Landroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const-string v3, "child count should be >= 0"

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    const-string v2, "group should not contain null children"

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-static {p0, v2}, Ljunit/framework/Assert;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static assertGroupNotContains(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const-string v4, "Child count should be >= 0"

    if-ltz v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "child "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is found in parent"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static assertHasScreenCoordinates(Landroid/view/View;Landroid/view/View;II)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v2, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v1, v2, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const-string v2, "x coordinate"

    aget v3, v0, v4

    aget v4, v1, v4

    sub-int/2addr v3, v4

    invoke-static {v2, p2, v3}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    const-string v2, "y coordinate"

    aget v3, v0, v5

    aget v4, v1, v5

    sub-int/2addr v3, v4

    invoke-static {v2, p3, v3}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    return-void
.end method

.method public static assertHorizontalCenterAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    new-array v4, v5, [I

    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v4, v6

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v4, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    sub-int v1, v3, v2

    const-string v5, "views are not horizontally center aligned"

    invoke-static {v5, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    return-void
.end method

.method public static assertLeftAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    new-array v2, v3, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v2, v4

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v2, v4

    const-string v3, "views are not left aligned"

    invoke-static {v3, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    return-void
.end method

.method public static assertLeftAligned(Landroid/view/View;Landroid/view/View;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    new-array v2, v3, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v2, v4

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v2, v4

    const-string v3, "views are not left aligned"

    sub-int v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3, v4, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    return-void
.end method

.method public static assertOffScreenAbove(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-array v0, v4, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v1, v4, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v4, v0, v3

    aget v5, v1, v3

    sub-int v2, v4, v5

    const-string v4, "view should have y location less than that of origin view"

    if-gez v2, :cond_0

    :goto_0
    invoke-static {v4, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static assertOffScreenBelow(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-array v0, v4, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v1, v4, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v4, v0, v3

    aget v5, v1, v3

    sub-int v2, v4, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "view should have y location on screen greater than drawing height of origen view ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not greater than "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    if-le v2, v5, :cond_0

    :goto_0
    invoke-static {v4, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static assertOnScreen(Landroid/view/View;Landroid/view/View;)V
    .locals 7

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-array v0, v3, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v1, v3, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v0, v4

    aget v6, v1, v4

    sub-int v2, v3, v6

    const-string v6, "view should have positive y coordinate on screen"

    if-ltz v2, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v6, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const-string v3, "view should have y location on screen less than drawing height of root view"

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-gt v2, v6, :cond_1

    :goto_1
    invoke-static {v3, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    return-void

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method public static assertRightAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x2

    new-array v2, v3, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v0, v3, v4

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v1, v3, v4

    const-string v3, "views are not right aligned"

    invoke-static {v3, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    return-void
.end method

.method public static assertRightAligned(Landroid/view/View;Landroid/view/View;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x2

    new-array v2, v3, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v0, v3, v4

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v1, v3, v4

    const-string v3, "views are not right aligned"

    sub-int v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3, v4, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    return-void
.end method

.method public static assertTopAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x2

    new-array v2, v3, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v2, v4

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v2, v4

    const-string v3, "views are not top aligned"

    invoke-static {v3, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    return-void
.end method

.method public static assertTopAligned(Landroid/view/View;Landroid/view/View;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x2

    new-array v2, v3, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v2, v4

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v2, v4

    const-string v3, "views are not top aligned"

    sub-int v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3, v4, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    return-void
.end method

.method public static assertVerticalCenterAligned(Landroid/view/View;Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x2

    new-array v4, v5, [I

    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v4, v6

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v4, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    sub-int v1, v3, v2

    const-string v5, "views are not vertically center aligned"

    invoke-static {v5, v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    return-void
.end method

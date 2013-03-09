.class Lcom/htc/widget/DropDownList$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "DropDownList.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DropDownList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/DropDownList;


# direct methods
.method private constructor <init>(Lcom/htc/widget/DropDownList;)V
    .locals 0
    .parameter

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/htc/widget/DropDownList$PopupTouchInterceptor;->this$0:Lcom/htc/widget/DropDownList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/DropDownList;Lcom/htc/widget/DropDownList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1297
    invoke-direct {p0, p1}, Lcom/htc/widget/DropDownList$PopupTouchInterceptor;-><init>(Lcom/htc/widget/DropDownList;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1300
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1302
    .local v0, action:I
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 1303
    .local v1, frameLoc:[I
    iget-object v4, p0, Lcom/htc/widget/DropDownList$PopupTouchInterceptor;->this$0:Lcom/htc/widget/DropDownList;

    invoke-virtual {v4, v1}, Lcom/htc/widget/DropDownList;->getLocationOnScreen([I)V

    .line 1304
    iget-object v4, p0, Lcom/htc/widget/DropDownList$PopupTouchInterceptor;->this$0:Lcom/htc/widget/DropDownList;

    #getter for: Lcom/htc/widget/DropDownList;->mRelativeRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/htc/widget/DropDownList;->access$700(Lcom/htc/widget/DropDownList;)Landroid/graphics/Rect;

    move-result-object v4

    aget v5, v1, v3

    aget v6, v1, v2

    aget v7, v1, v3

    iget-object v8, p0, Lcom/htc/widget/DropDownList$PopupTouchInterceptor;->this$0:Lcom/htc/widget/DropDownList;

    invoke-virtual {v8}, Lcom/htc/widget/DropDownList;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v1, v2

    iget-object v9, p0, Lcom/htc/widget/DropDownList$PopupTouchInterceptor;->this$0:Lcom/htc/widget/DropDownList;

    invoke-virtual {v9}, Lcom/htc/widget/DropDownList;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1307
    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/DropDownList$PopupTouchInterceptor;->this$0:Lcom/htc/widget/DropDownList;

    #getter for: Lcom/htc/widget/DropDownList;->mRelativeRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/htc/widget/DropDownList;->access$700(Lcom/htc/widget/DropDownList;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1309
    const-string v3, "DropDownList"

    const-string v4, "PopupTouchInterceptor.onTouch() outside touch on the button"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

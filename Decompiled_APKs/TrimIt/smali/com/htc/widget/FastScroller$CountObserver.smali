.class Lcom/htc/widget/FastScroller$CountObserver;
.super Landroid/database/DataSetObserver;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/FastScroller;


# direct methods
.method private constructor <init>(Lcom/htc/widget/FastScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/htc/widget/FastScroller$CountObserver;->this$0:Lcom/htc/widget/FastScroller;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/FastScroller;Lcom/htc/widget/FastScroller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/htc/widget/FastScroller$CountObserver;-><init>(Lcom/htc/widget/FastScroller;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/htc/widget/FastScroller$CountObserver;->this$0:Lcom/htc/widget/FastScroller;

    iget-object v1, p0, Lcom/htc/widget/FastScroller$CountObserver;->this$0:Lcom/htc/widget/FastScroller;

    iget-object v1, v1, Lcom/htc/widget/FastScroller;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/widget/FastScroller$CountObserver;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$100(Lcom/htc/widget/FastScroller;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    #calls: Lcom/htc/widget/FastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0, v1, v2}, Lcom/htc/widget/FastScroller;->access$200(Lcom/htc/widget/FastScroller;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 268
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

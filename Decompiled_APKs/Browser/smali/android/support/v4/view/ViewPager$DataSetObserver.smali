.class Landroid/support/v4/view/ViewPager$DataSetObserver;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroid/support/v4/view/PagerAdapter$DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/ViewPager;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 1724
    iput-object p1, p0, Landroid/support/v4/view/ViewPager$DataSetObserver;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1724
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager$DataSetObserver;-><init>(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .locals 1

    .prologue
    .line 1727
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$DataSetObserver;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->dataSetChanged()V

    .line 1728
    return-void
.end method

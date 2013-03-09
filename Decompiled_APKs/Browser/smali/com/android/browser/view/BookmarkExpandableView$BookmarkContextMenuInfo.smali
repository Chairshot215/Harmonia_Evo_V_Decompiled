.class public Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;
.super Ljava/lang/Object;
.source "BookmarkExpandableView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/view/BookmarkExpandableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookmarkContextMenuInfo"
.end annotation


# instance fields
.field public childPosition:I

.field public groupPosition:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .parameter "childPosition"
    .parameter "groupPosition"

    .prologue
    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput p1, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;->childPosition:I

    .line 540
    iput p2, p0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;->groupPosition:I

    .line 541
    return-void
.end method

.method synthetic constructor <init>(IILcom/android/browser/view/BookmarkExpandableView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 536
    invoke-direct {p0, p1, p2}, Lcom/android/browser/view/BookmarkExpandableView$BookmarkContextMenuInfo;-><init>(II)V

    return-void
.end method

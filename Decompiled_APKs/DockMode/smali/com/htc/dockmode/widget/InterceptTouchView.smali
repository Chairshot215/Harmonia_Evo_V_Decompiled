.class public Lcom/htc/dockmode/widget/InterceptTouchView;
.super Landroid/widget/RelativeLayout;
.source "InterceptTouchView.java"


# instance fields
.field private mDeskDock:Lcom/htc/dockmode/DeskDock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public setDeskDock(Lcom/htc/dockmode/DeskDock;)V
    .locals 0
    .parameter "deskDock"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/dockmode/widget/InterceptTouchView;->mDeskDock:Lcom/htc/dockmode/DeskDock;

    .line 28
    return-void
.end method

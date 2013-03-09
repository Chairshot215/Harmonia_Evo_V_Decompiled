.class public Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;
.super Ljava/lang/Object;
.source "HtcListViewCore2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcListViewCore2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FixedViewInfo"
.end annotation


# instance fields
.field public data:Ljava/lang/Object;

.field public isSelectable:Z

.field final synthetic this$0:Lcom/htc/widget/HtcListViewCore2;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcListViewCore2;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->this$0:Lcom/htc/widget/HtcListViewCore2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

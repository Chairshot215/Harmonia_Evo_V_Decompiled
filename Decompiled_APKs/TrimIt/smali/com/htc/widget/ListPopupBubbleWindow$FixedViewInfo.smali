.class Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ListPopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FixedViewInfo"
.end annotation


# instance fields
.field public data:Ljava/lang/Object;

.field public isSelectable:Z

.field final synthetic this$0:Lcom/htc/widget/ListPopupBubbleWindow;

.field public view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/htc/widget/ListPopupBubbleWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/widget/ListPopupBubbleWindow$FixedViewInfo;->this$0:Lcom/htc/widget/ListPopupBubbleWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

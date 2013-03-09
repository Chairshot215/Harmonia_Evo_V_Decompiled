.class Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$3;
.super Ljava/lang/Object;
.source "WidgetSetting.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;


# direct methods
.method constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$3;->this$0:Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    instance-of v2, p2, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 96
    check-cast v1, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;

    .line 97
    .local v1, itemView:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;
    invoke-virtual {v1}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->toggle()V

    .line 100
    .end local v1           #itemView:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    .line 101
    const v2, 0x7f090002

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;

    .line 102
    .local v0, headerView:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;
    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->toggle()V

    .line 105
    .end local v0           #headerView:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;
    :cond_1
    return-void
.end method

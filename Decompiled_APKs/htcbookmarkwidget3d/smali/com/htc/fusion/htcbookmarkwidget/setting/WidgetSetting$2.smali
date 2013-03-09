.class Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$2;
.super Ljava/lang/Object;
.source "WidgetSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 77
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$2;->this$0:Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$2;->this$0:Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;

    invoke-virtual {v0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->finish()V

    .line 80
    return-void
.end method

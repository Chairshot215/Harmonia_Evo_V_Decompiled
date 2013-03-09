.class Lcom/htc/clock3dwidget/setting/HtcWWPSetting$1;
.super Ljava/lang/Object;
.source "HtcWWPSetting.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/setting/HtcWWPSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/setting/HtcWWPSetting;


# direct methods
.method constructor <init>(Lcom/htc/clock3dwidget/setting/HtcWWPSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcWWPSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 70
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v1, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcWWPSetting;

    iget-object v0, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcWWPSetting;

    iget-boolean v0, v0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mBWWPPlay:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mBWWPPlay:Z

    .line 71
    iget-object v0, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcWWPSetting;

    #getter for: Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mCheckWWPPlayBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->access$000(Lcom/htc/clock3dwidget/setting/HtcWWPSetting;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting$1;->this$0:Lcom/htc/clock3dwidget/setting/HtcWWPSetting;

    iget-boolean v1, v1, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mBWWPPlay:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 72
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/htc/launcher/AddWidgetLayout$AddOnClickListener;
.super Ljava/lang/Object;
.source "AddWidgetLayout.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/AddWidgetLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/AddWidgetLayout;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/AddWidgetLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/launcher/AddWidgetLayout$AddOnClickListener;->this$0:Lcom/htc/launcher/AddWidgetLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/AddWidgetLayout;Lcom/htc/launcher/AddWidgetLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/htc/launcher/AddWidgetLayout$AddOnClickListener;-><init>(Lcom/htc/launcher/AddWidgetLayout;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v2, 0x1

    .line 127
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 128
    .local v8, tag:Ljava/lang/Object;
    instance-of v0, v8, Lcom/htc/launcher/AddAdapter$ListItem;

    if-eqz v0, :cond_0

    move-object v6, v8

    .line 129
    check-cast v6, Lcom/htc/launcher/AddAdapter$ListItem;

    .line 130
    .local v6, item:Lcom/htc/launcher/AddAdapter$ListItem;
    iget v0, v6, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 162
    .end local v6           #item:Lcom/htc/launcher/AddAdapter$ListItem;
    :cond_0
    :goto_0
    return-void

    .line 132
    .restart local v6       #item:Lcom/htc/launcher/AddAdapter$ListItem;
    :cond_1
    iget v0, v6, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, v6, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    const/16 v1, 0x69

    if-ne v0, v1, :cond_5

    .line 137
    :cond_2
    sget-object v0, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/launcher/Launcher;

    .line 139
    .local v7, launcher:Lcom/htc/launcher/Launcher;
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Lcom/htc/launcher/Launcher;->isAddButtonbar()Z

    move-result v0

    if-nez v0, :cond_4

    .line 141
    :cond_3
    invoke-virtual {v7}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/htc/launcher/DesktopItemController;->autoAddPageHandler(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    :cond_4
    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Lcom/htc/widget/HtcAdapterView;->postInvalidateDelayed(J)V

    .line 146
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout$AddOnClickListener;->this$0:Lcom/htc/launcher/AddWidgetLayout;

    #getter for: Lcom/htc/launcher/AddWidgetLayout;->mAdapter:Lcom/htc/launcher/AddListAdapter;
    invoke-static {v0}, Lcom/htc/launcher/AddWidgetLayout;->access$200(Lcom/htc/launcher/AddWidgetLayout;)Lcom/htc/launcher/AddListAdapter;

    move-result-object v0

    iget v1, v6, Lcom/htc/launcher/AddAdapter$ListItem;->mNextAdapter:I

    invoke-virtual {v0, v1, p3}, Lcom/htc/launcher/AddListAdapter;->setClick(II)V

    .line 147
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout$AddOnClickListener;->this$0:Lcom/htc/launcher/AddWidgetLayout;

    invoke-virtual {v0}, Lcom/htc/launcher/AddWidgetLayout;->doCheckTitle()V

    goto :goto_0

    .line 149
    .end local v7           #launcher:Lcom/htc/launcher/Launcher;
    :cond_5
    iget v0, v6, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget v0, v6, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    const/16 v1, 0x68

    if-eq v0, v1, :cond_0

    .line 152
    iget v0, v6, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_6

    .line 153
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout$AddOnClickListener;->this$0:Lcom/htc/launcher/AddWidgetLayout;

    #getter for: Lcom/htc/launcher/AddWidgetLayout;->mOnPersonalizeItemClickListener:Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;
    invoke-static {v0}, Lcom/htc/launcher/AddWidgetLayout;->access$300(Lcom/htc/launcher/AddWidgetLayout;)Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout$AddOnClickListener;->this$0:Lcom/htc/launcher/AddWidgetLayout;

    #getter for: Lcom/htc/launcher/AddWidgetLayout;->mOnPersonalizeItemClickListener:Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;
    invoke-static {v0}, Lcom/htc/launcher/AddWidgetLayout;->access$300(Lcom/htc/launcher/AddWidgetLayout;)Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 158
    :cond_6
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout$AddOnClickListener;->this$0:Lcom/htc/launcher/AddWidgetLayout;

    #getter for: Lcom/htc/launcher/AddWidgetLayout;->mOnAddWidgetListener:Lcom/htc/launcher/AddWidgetLayout$OnAddWidgetListener;
    invoke-static {v0}, Lcom/htc/launcher/AddWidgetLayout;->access$400(Lcom/htc/launcher/AddWidgetLayout;)Lcom/htc/launcher/AddWidgetLayout$OnAddWidgetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout$AddOnClickListener;->this$0:Lcom/htc/launcher/AddWidgetLayout;

    #getter for: Lcom/htc/launcher/AddWidgetLayout;->mOnAddWidgetListener:Lcom/htc/launcher/AddWidgetLayout$OnAddWidgetListener;
    invoke-static {v0}, Lcom/htc/launcher/AddWidgetLayout;->access$400(Lcom/htc/launcher/AddWidgetLayout;)Lcom/htc/launcher/AddWidgetLayout$OnAddWidgetListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/htc/launcher/AddWidgetLayout$OnAddWidgetListener;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.class Lcom/htc/home/personalize/AddWidgetLayout$AddOnClickListener;
.super Ljava/lang/Object;
.source "AddWidgetLayout.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/AddWidgetLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/AddWidgetLayout;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/AddWidgetLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/htc/home/personalize/AddWidgetLayout$AddOnClickListener;->this$0:Lcom/htc/home/personalize/AddWidgetLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/AddWidgetLayout;Lcom/htc/home/personalize/AddWidgetLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/AddWidgetLayout$AddOnClickListener;-><init>(Lcom/htc/home/personalize/AddWidgetLayout;)V

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
    .line 126
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 127
    .local v8, tag:Ljava/lang/Object;
    instance-of v0, v8, Lcom/htc/home/personalize/AddAdapter$ListItem;

    if-eqz v0, :cond_0

    move-object v6, v8

    .line 128
    check-cast v6, Lcom/htc/home/personalize/AddAdapter$ListItem;

    .line 129
    .local v6, item:Lcom/htc/home/personalize/AddAdapter$ListItem;
    iget v0, v6, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 161
    .end local v6           #item:Lcom/htc/home/personalize/AddAdapter$ListItem;
    :cond_0
    :goto_0
    return-void

    .line 131
    .restart local v6       #item:Lcom/htc/home/personalize/AddAdapter$ListItem;
    :cond_1
    iget v0, v6, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, v6, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    const/16 v1, 0x69

    if-ne v0, v1, :cond_6

    .line 135
    :cond_2
    sget-object v0, Lcom/htc/home/personalize/PersonalizeMain;->mRefPersonalize:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    .line 136
    sget-object v0, Lcom/htc/home/personalize/PersonalizeMain;->mRefPersonalize:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/home/personalize/PersonalizeMain;

    .line 138
    .local v7, personalizeMain:Lcom/htc/home/personalize/PersonalizeMain;
    if-eqz v7, :cond_3

    .line 139
    invoke-virtual {v7}, Lcom/htc/home/personalize/PersonalizeMain;->checkLauncherHasRoom()Z

    move-result v0

    if-nez v0, :cond_4

    .line 140
    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout$AddOnClickListener;->this$0:Lcom/htc/home/personalize/AddWidgetLayout;

    invoke-virtual {v0}, Lcom/htc/home/personalize/AddWidgetLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7}, Lcom/htc/home/personalize/PersonalizeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 144
    :cond_3
    const-string v0, "Personalize"

    const-string v1, "PersonalizeMain Reference = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v7           #personalizeMain:Lcom/htc/home/personalize/PersonalizeMain;
    :cond_4
    :goto_1
    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Lcom/htc/widget/HtcAdapterView;->postInvalidateDelayed(J)V

    .line 151
    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout$AddOnClickListener;->this$0:Lcom/htc/home/personalize/AddWidgetLayout;

    #getter for: Lcom/htc/home/personalize/AddWidgetLayout;->mAdapter:Lcom/htc/home/personalize/AddListAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/AddWidgetLayout;->access$200(Lcom/htc/home/personalize/AddWidgetLayout;)Lcom/htc/home/personalize/AddListAdapter;

    move-result-object v0

    iget v1, v6, Lcom/htc/home/personalize/AddAdapter$ListItem;->mNextAdapter:I

    invoke-virtual {v0, v1, p3}, Lcom/htc/home/personalize/AddListAdapter;->setClick(II)V

    .line 152
    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout$AddOnClickListener;->this$0:Lcom/htc/home/personalize/AddWidgetLayout;

    invoke-virtual {v0}, Lcom/htc/home/personalize/AddWidgetLayout;->doCheckTitle()V

    goto :goto_0

    .line 147
    :cond_5
    const-string v0, "Personalize"

    const-string v1, "PersonalizeMain.mRefPersonalize = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 153
    :cond_6
    iget v0, v6, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_7

    .line 154
    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout$AddOnClickListener;->this$0:Lcom/htc/home/personalize/AddWidgetLayout;

    #getter for: Lcom/htc/home/personalize/AddWidgetLayout;->mOnPersonalizeItemClickListener:Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;
    invoke-static {v0}, Lcom/htc/home/personalize/AddWidgetLayout;->access$300(Lcom/htc/home/personalize/AddWidgetLayout;)Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout$AddOnClickListener;->this$0:Lcom/htc/home/personalize/AddWidgetLayout;

    #getter for: Lcom/htc/home/personalize/AddWidgetLayout;->mOnPersonalizeItemClickListener:Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;
    invoke-static {v0}, Lcom/htc/home/personalize/AddWidgetLayout;->access$300(Lcom/htc/home/personalize/AddWidgetLayout;)Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 157
    :cond_7
    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout$AddOnClickListener;->this$0:Lcom/htc/home/personalize/AddWidgetLayout;

    #getter for: Lcom/htc/home/personalize/AddWidgetLayout;->mOnAddWidgetListener:Lcom/htc/home/personalize/AddWidgetLayout$OnAddWidgetListener;
    invoke-static {v0}, Lcom/htc/home/personalize/AddWidgetLayout;->access$400(Lcom/htc/home/personalize/AddWidgetLayout;)Lcom/htc/home/personalize/AddWidgetLayout$OnAddWidgetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout$AddOnClickListener;->this$0:Lcom/htc/home/personalize/AddWidgetLayout;

    #getter for: Lcom/htc/home/personalize/AddWidgetLayout;->mOnAddWidgetListener:Lcom/htc/home/personalize/AddWidgetLayout$OnAddWidgetListener;
    invoke-static {v0}, Lcom/htc/home/personalize/AddWidgetLayout;->access$400(Lcom/htc/home/personalize/AddWidgetLayout;)Lcom/htc/home/personalize/AddWidgetLayout$OnAddWidgetListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/htc/home/personalize/AddWidgetLayout$OnAddWidgetListener;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    goto/16 :goto_0
.end method

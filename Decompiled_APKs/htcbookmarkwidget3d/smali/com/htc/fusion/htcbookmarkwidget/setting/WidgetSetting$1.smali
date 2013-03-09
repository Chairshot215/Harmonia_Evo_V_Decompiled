.class Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$1;
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
    .line 52
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$1;->this$0:Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 55
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$1;->this$0:Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;

    invoke-virtual {v7}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 56
    .local v1, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$1;->this$0:Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;

    #calls: Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->getTagAdapter()Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;
    invoke-static {v7}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->access$000(Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;)Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;

    move-result-object v0

    .line 57
    .local v0, adapter:Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;
    invoke-virtual {v0}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->getCheckedTagList()Ljava/util/Set;

    move-result-object v4

    .line 58
    .local v4, tagSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 59
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v6, tagsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 61
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    .line 63
    .local v3, tag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    invoke-interface {v3}, Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    .end local v3           #tag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 66
    .local v5, tags:[Ljava/lang/String;
    const-string v7, "selected_tags"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    .end local v5           #tags:[Ljava/lang/String;
    .end local v6           #tagsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const-string v7, "intent_widget_setting"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$1;->this$0:Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;

    const/4 v8, -0x1

    invoke-virtual {v7, v8, v1}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->setResult(ILandroid/content/Intent;)V

    .line 70
    iget-object v7, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$1;->this$0:Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;

    invoke-virtual {v7}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->finish()V

    .line 71
    return-void
.end method

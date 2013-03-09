.class Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$2;
.super Ljava/lang/Object;
.source "TagListItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;


# direct methods
.method constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$2;->this$0:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$2;->this$0:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;

    invoke-virtual {v1}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->getOnTaggableItemCheckedChangeListener()Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;

    move-result-object v0

    .line 63
    .local v0, listener:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;
    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$2;->this$0:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;

    invoke-interface {v0, v1, p2}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;->onCheckedChanged(Lcom/htc/fusion/htcbookmarkwidget/tags/Taggable;Z)V

    .line 66
    :cond_0
    return-void
.end method

.class Lcom/htc/Weather/widget/NewsListPanel$NewsDataItem;
.super Ljava/lang/Object;
.source "NewsListPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/widget/NewsListPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NewsDataItem"
.end annotation


# instance fields
.field date:Ljava/lang/String;

.field news_thumb:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/Weather/widget/NewsListPanel;

.field title:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/Weather/widget/NewsListPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/htc/Weather/widget/NewsListPanel$NewsDataItem;->this$0:Lcom/htc/Weather/widget/NewsListPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

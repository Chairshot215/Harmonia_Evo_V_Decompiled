.class Lcom/htc/widget3d/weather/OptionActivity$CityListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget3d/weather/OptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CityListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget3d/weather/OptionActivity;


# direct methods
.method public constructor <init>(Lcom/htc/widget3d/weather/OptionActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 472
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/widget3d/weather/OptionActivity$CityListAdapter;->this$0:Lcom/htc/widget3d/weather/OptionActivity;

    .line 473
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 475
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 479
    iget-object v3, p0, Lcom/htc/widget3d/weather/OptionActivity$CityListAdapter;->this$0:Lcom/htc/widget3d/weather/OptionActivity;

    invoke-virtual {v3}, Lcom/htc/widget3d/weather/OptionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 480
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 481
    .local v2, listItem:Lcom/htc/widget/HtcListItem;
    const/4 v0, 0x0

    .line 482
    .local v0, cityName:Lcom/htc/widget/HtcListItem2LineText;
    const/high16 v3, 0x7f03

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2           #listItem:Lcom/htc/widget/HtcListItem;
    check-cast v2, Lcom/htc/widget/HtcListItem;

    .line 483
    .restart local v2       #listItem:Lcom/htc/widget/HtcListItem;
    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #cityName:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v0, Lcom/htc/widget/HtcListItem2LineText;

    .line 484
    .restart local v0       #cityName:Lcom/htc/widget/HtcListItem2LineText;
    iget-object v3, p0, Lcom/htc/widget3d/weather/OptionActivity$CityListAdapter;->this$0:Lcom/htc/widget3d/weather/OptionActivity;

    #getter for: Lcom/htc/widget3d/weather/OptionActivity;->mStrings:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/widget3d/weather/OptionActivity;->access$900(Lcom/htc/widget3d/weather/OptionActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 486
    return-object v2
.end method

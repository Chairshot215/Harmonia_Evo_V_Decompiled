.class final Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;
.super Landroid/os/AsyncTask;
.source "StyleChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/fusionwidget/StyleChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;


# direct methods
.method public constructor <init>(Lcom/htc/home/personalize/fusionwidget/StyleChooser;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 702
    iput-object p1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 703
    iput-object p2, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;->mContext:Landroid/content/Context;

    .line 704
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 699
    check-cast p1, [Landroid/os/Parcelable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;->doInBackground([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 17
    .parameter "providers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    invoke-static {}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "doInBackground() +"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    if-nez p1, :cond_1

    .line 711
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v10, listStyle:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/htc/home/personalize/fusionwidget/WidgetProviderInfoCollector;->getStylesByProviderComponent(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v8

    .line 714
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;>;"
    if-eqz v8, :cond_0

    .line 715
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v14, v8}, Lcom/htc/home/personalize/util/Utilities;->filter3D(Landroid/content/Context;Ljava/util/List;)V

    .line 716
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    .line 717
    .local v11, tmp:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    new-instance v14, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    invoke-direct {v14, v15, v11}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;-><init>(Lcom/htc/home/personalize/fusionwidget/StyleChooser;Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 721
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v11           #tmp:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    invoke-virtual {v14}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->collect2DWidgetInfo()Ljava/util/List;

    move-result-object v13

    .line 722
    .local v13, widgets:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;>;"
    if-eqz v13, :cond_2

    .line 723
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v14, v13}, Lcom/htc/home/personalize/util/Utilities;->filter2D(Landroid/content/Context;Ljava/util/List;)V

    .line 724
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    .line 725
    .local v12, widget:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;
    new-instance v14, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    invoke-direct {v14, v15, v12}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;-><init>(Lcom/htc/home/personalize/fusionwidget/StyleChooser;Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 733
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;>;"
    .end local v10           #listStyle:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;>;"
    .end local v12           #widget:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;
    .end local v13           #widgets:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;>;"
    :cond_1
    move-object/from16 v0, p1

    array-length v1, v0

    .line 734
    .local v1, N:I
    if-gtz v1, :cond_3

    .line 735
    const/4 v10, 0x0

    .line 763
    .end local v1           #N:I
    :cond_2
    :goto_2
    return-object v10

    .line 736
    .restart local v1       #N:I
    :cond_3
    const/4 v14, 0x1

    if-le v1, v14, :cond_4

    .line 737
    invoke-static {}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[keep_monitor] providers.length > 1 , it may cause error"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/home/personalize/abstractresource/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v1, 0x1

    .line 741
    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v1, :cond_8

    .line 743
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    aget-object v14, p1, v3

    check-cast v14, Landroid/content/ComponentName;

    invoke-static {v15, v14}, Lcom/htc/home/personalize/fusionwidget/WidgetProviderInfoCollector;->getStylesByProviderComponent(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v6

    .line 744
    .local v6, l:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;>;"
    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_7

    .line 745
    invoke-static {}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "all the style :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/home/personalize/abstractresource/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    iget-object v14, v14, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->indexFilter:[I

    if-nez v14, :cond_5

    .line 747
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    .line 748
    .restart local v11       #tmp:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    new-instance v14, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    invoke-direct {v14, v15, v11}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;-><init>(Lcom/htc/home/personalize/fusionwidget/StyleChooser;Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 751
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v11           #tmp:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    iget-object v2, v14, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->indexFilter:[I

    .local v2, arr$:[I
    array-length v7, v2

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_5
    if-ge v4, v7, :cond_7

    aget v5, v2, v4

    .line 752
    .local v5, index:I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-ge v5, v14, :cond_6

    .line 753
    new-instance v15, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    move-object/from16 v16, v0

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v14}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;-><init>(Lcom/htc/home/personalize/fusionwidget/StyleChooser;Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;)V

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 755
    :cond_6
    invoke-static {}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "index in indexFilter out of array :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->indexFilter:[I

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/home/personalize/abstractresource/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 742
    .end local v2           #arr$:[I
    .end local v4           #i$:I
    .end local v5           #index:I
    .end local v7           #len$:I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 762
    .end local v6           #l:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;>;"
    :cond_8
    invoke-static {}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "doInBackground() -"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v9

    .line 763
    goto/16 :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 699
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 767
    .local p1, styles:Ljava/util/List;,"Ljava/util/List<Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;>;"
    invoke-static {}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPostExecute() +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 770
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    #calls: Lcom/htc/home/personalize/fusionwidget/StyleChooser;->onLoadStyleComplete(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->access$400(Lcom/htc/home/personalize/fusionwidget/StyleChooser;Ljava/util/List;)V

    .line 772
    invoke-static {}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPostExecute() -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "counts"

    .prologue
    .line 777
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 778
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 699
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.class public Lcom/htc/widget3d/weather/OptionActivity$ItemClickListener;
.super Ljava/lang/Object;
.source "OptionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget3d/weather/OptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget3d/weather/OptionActivity;


# direct methods
.method public constructor <init>(Lcom/htc/widget3d/weather/OptionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/htc/widget3d/weather/OptionActivity$ItemClickListener;->this$0:Lcom/htc/widget3d/weather/OptionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "a"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity$ItemClickListener;->this$0:Lcom/htc/widget3d/weather/OptionActivity;

    long-to-int v1, p4

    #setter for: Lcom/htc/widget3d/weather/OptionActivity;->mCityIndex:I
    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/OptionActivity;->access$202(Lcom/htc/widget3d/weather/OptionActivity;I)I

    .line 271
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_1

    .line 272
    iget-object v1, p0, Lcom/htc/widget3d/weather/OptionActivity$ItemClickListener;->this$0:Lcom/htc/widget3d/weather/OptionActivity;

    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity$ItemClickListener;->this$0:Lcom/htc/widget3d/weather/OptionActivity;

    #getter for: Lcom/htc/widget3d/weather/OptionActivity;->mCurrentCityList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget3d/weather/OptionActivity;->access$400(Lcom/htc/widget3d/weather/OptionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    long-to-int v2, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget3d/weather/data/CityInfo;

    #setter for: Lcom/htc/widget3d/weather/OptionActivity;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;
    invoke-static {v1, v0}, Lcom/htc/widget3d/weather/OptionActivity;->access$302(Lcom/htc/widget3d/weather/OptionActivity;Lcom/htc/widget3d/weather/data/CityInfo;)Lcom/htc/widget3d/weather/data/CityInfo;

    .line 273
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity$ItemClickListener;->this$0:Lcom/htc/widget3d/weather/OptionActivity;

    #calls: Lcom/htc/widget3d/weather/OptionActivity;->backtoLauncher()V
    invoke-static {v0}, Lcom/htc/widget3d/weather/OptionActivity;->access$500(Lcom/htc/widget3d/weather/OptionActivity;)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity$ItemClickListener;->this$0:Lcom/htc/widget3d/weather/OptionActivity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/widget3d/weather/OptionActivity;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;
    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/OptionActivity;->access$302(Lcom/htc/widget3d/weather/OptionActivity;Lcom/htc/widget3d/weather/data/CityInfo;)Lcom/htc/widget3d/weather/data/CityInfo;

    .line 276
    if-nez p3, :cond_0

    .line 278
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity$ItemClickListener;->this$0:Lcom/htc/widget3d/weather/OptionActivity;

    #calls: Lcom/htc/widget3d/weather/OptionActivity;->launchAddCityActivity()V
    invoke-static {v0}, Lcom/htc/widget3d/weather/OptionActivity;->access$600(Lcom/htc/widget3d/weather/OptionActivity;)V

    goto :goto_0
.end method

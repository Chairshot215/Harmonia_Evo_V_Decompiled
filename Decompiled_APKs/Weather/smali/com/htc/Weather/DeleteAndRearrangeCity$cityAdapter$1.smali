.class Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter$1;
.super Ljava/lang/Object;
.source "DeleteAndRearrangeCity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;


# direct methods
.method constructor <init>(Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter$1;->this$1:Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 262
    iget-object v1, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter$1;->this$1:Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;

    iget-object v1, v1, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v1}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v1

    if-nez v1, :cond_0

    .line 269
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 266
    .local v0, pos:I
    iget-object v1, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter$1;->this$1:Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;

    iget-object v1, v1, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v1}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v1

    aget-object v2, v1, v0

    iget-object v1, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter$1;->this$1:Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;

    iget-object v1, v1, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v1}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v1

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->isDeletChecked:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v2, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->isDeletChecked:Z

    .line 267
    iget-object v1, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter$1;->this$1:Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;

    iget-object v1, v1, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter$1;->this$1:Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;

    iget-object v2, v2, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v2}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v2

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->isDeletChecked:Z

    #calls: Lcom/htc/Weather/DeleteAndRearrangeCity;->handleDeleteCount(Z)V
    invoke-static {v1, v2}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$300(Lcom/htc/Weather/DeleteAndRearrangeCity;Z)V

    goto :goto_0

    .line 266
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.class Lcom/htc/Weather/DeleteAndRearrangeCity$2;
.super Ljava/lang/Object;
.source "DeleteAndRearrangeCity.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/Weather/DeleteAndRearrangeCity;->InitCityList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;


# direct methods
.method constructor <init>(Lcom/htc/Weather/DeleteAndRearrangeCity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$2;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 5
    .parameter "from"
    .parameter "to"

    .prologue
    .line 150
    new-instance v1, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$2;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    invoke-direct {v1, v2}, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;-><init>(Lcom/htc/Weather/DeleteAndRearrangeCity;)V

    .line 151
    .local v1, rtmp:Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    if-ltz p2, :cond_1

    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$2;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v2}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-gt p2, v2, :cond_1

    if-eq p1, p2, :cond_1

    .line 153
    if-le p1, p2, :cond_0

    .line 154
    move v0, p1

    .local v0, i:I
    :goto_0
    if-le v0, p2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$2;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v2}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->loc:Lcom/htc/util/weather/WeatherLocation;

    iput-object v2, v1, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->loc:Lcom/htc/util/weather/WeatherLocation;

    .line 158
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$2;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v2}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->isDeletChecked:Z

    iput-boolean v2, v1, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->isDeletChecked:Z

    .line 161
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$2;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v2}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$2;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v3}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->loc:Lcom/htc/util/weather/WeatherLocation;

    iput-object v3, v2, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->loc:Lcom/htc/util/weather/WeatherLocation;

    .line 162
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$2;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v2}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$2;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v3}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v3

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->isDeletChecked:Z

    iput-boolean v3, v2, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->isDeletChecked:Z

    .line 165
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$2;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v2}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, v1, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->loc:Lcom/htc/util/weather/WeatherLocation;

    iput-object v3, v2, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->loc:Lcom/htc/util/weather/WeatherLocation;

    .line 166
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$2;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v2}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v2

    aget-object v2, v2, v0

    iget-boolean v3, v1, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->isDeletChecked:Z

    iput-boolean v3, v2, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->isDeletChecked:Z

    .line 154
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 169
    .end local v0           #i:I
    :cond_0
    if-ge p1, p2, :cond_1

    .line 170
    move v0, p1

    .restart local v0       #i:I
    :goto_1
    if-ge v0, p2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$2;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v2}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    aget-object v1, v2, v3

    .line 173
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$2;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v2}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$2;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v4}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v4

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    .line 174
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$2;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v2}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v2

    aput-object v1, v2, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    .end local v0           #i:I
    :cond_1
    iget-object v2, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$2;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mAdapter:Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;
    invoke-static {v2}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$200(Lcom/htc/Weather/DeleteAndRearrangeCity;)Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->notifyDataSetChanged()V

    .line 181
    return-void
.end method

.class Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeleteAndRearrangeCity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/DeleteAndRearrangeCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "cityAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;


# direct methods
.method public constructor <init>(Lcom/htc/Weather/DeleteAndRearrangeCity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 215
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 216
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v0}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->loc:Lcom/htc/util/weather/WeatherLocation;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 225
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 230
    new-instance v2, Lcom/htc/Weather/util/SkinUtil;

    iget-object v4, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    invoke-virtual {v4}, Lcom/htc/Weather/DeleteAndRearrangeCity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/htc/Weather/util/SkinUtil;-><init>(Landroid/content/Context;)V

    .line 232
    .local v2, mySkinUtil:Lcom/htc/Weather/util/SkinUtil;
    if-nez p2, :cond_0

    .line 233
    iget-object v4, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v4}, Lcom/htc/Weather/util/SkinUtil;->inflateRearrangeCityListView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p2

    .line 235
    :cond_0
    iget-object v4, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v4}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v4

    if-nez v4, :cond_1

    .line 276
    :goto_0
    return-object p2

    .line 238
    :cond_1
    invoke-virtual {v2, p2}, Lcom/htc/Weather/util/SkinUtil;->initRearrangeCityListItem(Landroid/view/View;)V

    .line 240
    iget-object v4, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v4}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v4

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->loc:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, sName:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 242
    :cond_2
    iget-object v4, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    invoke-virtual {v4}, Lcom/htc/Weather/DeleteAndRearrangeCity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 244
    :cond_3
    iget-object v4, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v4}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v4

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->loc:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v5}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v5

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->loc:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v5}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Lcom/htc/Weather/util/SkinUtil;->setRearrangeCityName(Landroid/view/View;Ljava/lang/String;)V

    .line 250
    :goto_1
    iget-object v4, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v4}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v4

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->loc:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 251
    iget-object v4, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v4}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v4

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->loc:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Lcom/htc/Weather/util/SkinUtil;->setRearrangeCityState(Landroid/view/View;Ljava/lang/String;)V

    .line 257
    :goto_2
    invoke-virtual {v2, p2}, Lcom/htc/Weather/util/SkinUtil;->getRearrangeDeleteView(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v1

    .line 258
    .local v1, deleteCkbox:Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;->this$0:Lcom/htc/Weather/DeleteAndRearrangeCity;

    #getter for: Lcom/htc/Weather/DeleteAndRearrangeCity;->mLocItem:[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;
    invoke-static {v4}, Lcom/htc/Weather/DeleteAndRearrangeCity;->access$100(Lcom/htc/Weather/DeleteAndRearrangeCity;)[Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;

    move-result-object v4

    aget-object v4, v4, p1

    iget-boolean v4, v4, Lcom/htc/Weather/DeleteAndRearrangeCity$WeatherLocItem;->isDeletChecked:Z

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 259
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 260
    new-instance v4, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter$1;

    invoke-direct {v4, p0}, Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter$1;-><init>(Lcom/htc/Weather/DeleteAndRearrangeCity$cityAdapter;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    new-instance v0, Landroid/view/TouchDelegate;

    new-instance v5, Landroid/graphics/Rect;

    move-object v4, p2

    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem;->getItemHeight()I

    move-result v6

    move-object v4, p2

    check-cast v4, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItem;->getItemHeight()I

    move-result v4

    invoke-direct {v5, v7, v7, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v0, v5, v1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 274
    .local v0, delegate:Landroid/view/TouchDelegate;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto/16 :goto_0

    .line 248
    .end local v0           #delegate:Landroid/view/TouchDelegate;
    .end local v1           #deleteCkbox:Landroid/widget/CheckBox;
    :cond_4
    invoke-virtual {v2, p2, v3}, Lcom/htc/Weather/util/SkinUtil;->setRearrangeCityName(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    .line 253
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v2, p2, v4}, Lcom/htc/Weather/util/SkinUtil;->setRearrangeCityState(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2
.end method

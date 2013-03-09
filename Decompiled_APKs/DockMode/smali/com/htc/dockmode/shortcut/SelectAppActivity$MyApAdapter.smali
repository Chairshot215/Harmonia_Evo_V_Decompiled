.class Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/shortcut/SelectAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyApAdapter"
.end annotation


# instance fields
.field private mAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/dockmode/shortcut/SelectAppActivity;


# direct methods
.method public constructor <init>(Lcom/htc/dockmode/shortcut/SelectAppActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p2, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    iput-object p1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;->this$0:Lcom/htc/dockmode/shortcut/SelectAppActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 167
    iput-object p2, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;->mAppInfoList:Ljava/util/List;

    .line 169
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 5

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;->mAppInfoList:Ljava/util/List;

    .line 175
    .local v1, list:Ljava/util/List;
    if-eqz v1, :cond_0

    .line 176
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 178
    :cond_0
    const-string v2, "SelectAppActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCount count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;->mAppInfoList:Ljava/util/List;

    .line 185
    .local v0, list:Ljava/util/List;
    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 188
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 193
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "contentView"
    .parameter "parent"

    .prologue
    const v8, 0x7f090006

    const/16 v7, 0x8

    .line 198
    const-string v4, "SelectAppActivity"

    const-string v5, "getView"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, i:Lcom/htc/widget/HtcListItem;
    if-nez p2, :cond_0

    .line 201
    iget-object v4, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;->this$0:Lcom/htc/dockmode/shortcut/SelectAppActivity;

    iget-object v4, v4, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03000a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1           #i:Lcom/htc/widget/HtcListItem;
    check-cast v1, Lcom/htc/widget/HtcListItem;

    .line 207
    .restart local v1       #i:Lcom/htc/widget/HtcListItem;
    :goto_0
    const v4, 0x7f0a0057

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    .line 208
    .local v2, icon:Lcom/htc/widget/HtcListItemColorIcon;
    const v4, 0x7f0a0058

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    .line 210
    .local v3, label:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {p0, p1}, Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 211
    .local v0, apInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    .line 213
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.htc.album.addons.slideshow.SlideShow"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    const v4, 0x7f080011

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 215
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 216
    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 217
    iget-object v4, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;->this$0:Lcom/htc/dockmode/shortcut/SelectAppActivity;

    invoke-virtual {v4}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    :goto_1
    return-object v1

    .end local v0           #apInfo:Landroid/content/pm/ActivityInfo;
    .end local v2           #icon:Lcom/htc/widget/HtcListItemColorIcon;
    .end local v3           #label:Lcom/htc/widget/HtcListItem2LineText;
    :cond_0
    move-object v1, p2

    .line 203
    check-cast v1, Lcom/htc/widget/HtcListItem;

    goto :goto_0

    .line 221
    .restart local v0       #apInfo:Landroid/content/pm/ActivityInfo;
    .restart local v2       #icon:Lcom/htc/widget/HtcListItemColorIcon;
    .restart local v3       #label:Lcom/htc/widget/HtcListItem2LineText;
    :cond_1
    iget-object v4, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;->this$0:Lcom/htc/dockmode/shortcut/SelectAppActivity;

    iget-object v4, v4, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mPackageMng:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v4, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity$MyApAdapter;->this$0:Lcom/htc/dockmode/shortcut/SelectAppActivity;

    iget-object v4, v4, Lcom/htc/dockmode/shortcut/SelectAppActivity;->mPackageMng:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 224
    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_1

    .line 227
    :cond_2
    const-string v4, "SelectAppActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getView no appinfo in pos:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

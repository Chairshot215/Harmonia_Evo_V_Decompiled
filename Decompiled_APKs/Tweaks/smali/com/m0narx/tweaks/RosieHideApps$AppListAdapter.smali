.class Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RosieHideApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/RosieHideApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation


# instance fields
.field public isChecked:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field public mIntent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/m0narx/tweaks/RosieHideApps;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/RosieHideApps;)V
    .locals 1
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->this$0:Lcom/m0narx/tweaks/RosieHideApps;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->mName:Ljava/util/ArrayList;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->mIntent:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->isChecked:Ljava/util/ArrayList;

    .line 190
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/m0narx/tweaks/RosieHideApps;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 191
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "name"
    .parameter "intent"
    .parameter "checked"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->mIntent:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->isChecked:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {p0}, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->notifyDataSetChanged()V

    .line 198
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 212
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, holder:Lcom/m0narx/tweaks/RosieHideApps$ViewHolder;
    if-nez p2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030002

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 220
    new-instance v1, Lcom/m0narx/tweaks/RosieHideApps$ViewHolder;

    .end local v1           #holder:Lcom/m0narx/tweaks/RosieHideApps$ViewHolder;
    invoke-direct {v1}, Lcom/m0narx/tweaks/RosieHideApps$ViewHolder;-><init>()V

    .line 221
    .restart local v1       #holder:Lcom/m0narx/tweaks/RosieHideApps$ViewHolder;
    const v2, 0x7f090003

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemCheckBox;

    iput-object v2, v1, Lcom/m0narx/tweaks/RosieHideApps$ViewHolder;->checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 222
    const v2, 0x7f09000c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem1LineCenteredText;

    iput-object v2, v1, Lcom/m0narx/tweaks/RosieHideApps$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 223
    const v2, 0x7f09000d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v2, v1, Lcom/m0narx/tweaks/RosieHideApps$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemTileImage;

    .line 224
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 229
    :goto_0
    iget-object v3, v1, Lcom/m0narx/tweaks/RosieHideApps$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->mName:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v3, v1, Lcom/m0narx/tweaks/RosieHideApps$ViewHolder;->textView:Lcom/htc/widget/HtcListItem1LineCenteredText;

    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->mIntent:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTag(Ljava/lang/Object;)V

    .line 231
    iget-object v3, v1, Lcom/m0narx/tweaks/RosieHideApps$ViewHolder;->checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->isChecked:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 232
    iget-object v3, v1, Lcom/m0narx/tweaks/RosieHideApps$ViewHolder;->checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->mIntent:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setTag(Ljava/lang/Object;)V

    .line 235
    iget-object v2, p0, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->mIntent:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, Element:[Ljava/lang/String;
    iget-object v2, v1, Lcom/m0narx/tweaks/RosieHideApps$ViewHolder;->Icon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v3, p0, Lcom/m0narx/tweaks/RosieHideApps$AppListAdapter;->this$0:Lcom/m0narx/tweaks/RosieHideApps;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Lcom/m0narx/tweaks/RosieHideApps;->GetActivityIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    return-object p2

    .line 226
    .end local v0           #Element:[Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/m0narx/tweaks/RosieHideApps$ViewHolder;
    check-cast v1, Lcom/m0narx/tweaks/RosieHideApps$ViewHolder;

    .restart local v1       #holder:Lcom/m0narx/tweaks/RosieHideApps$ViewHolder;
    goto :goto_0
.end method

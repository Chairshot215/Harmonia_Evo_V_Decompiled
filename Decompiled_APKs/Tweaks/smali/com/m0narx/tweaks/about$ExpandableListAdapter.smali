.class public Lcom/m0narx/tweaks/about$ExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "about.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/about;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandableListAdapter"
.end annotation


# instance fields
.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private children_comment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private groups_comment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/m0narx/tweaks/about;


# direct methods
.method public constructor <init>(Lcom/m0narx/tweaks/about;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p3, groups2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, groups_comment2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p5, childs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    .local p6, childs_comments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    iput-object p1, p0, Lcom/m0narx/tweaks/about$ExpandableListAdapter;->this$0:Lcom/m0narx/tweaks/about;

    .line 205
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 207
    iput-object p2, p0, Lcom/m0narx/tweaks/about$ExpandableListAdapter;->context:Landroid/content/Context;

    .line 208
    iput-object p3, p0, Lcom/m0narx/tweaks/about$ExpandableListAdapter;->groups:Ljava/util/ArrayList;

    .line 209
    iput-object p4, p0, Lcom/m0narx/tweaks/about$ExpandableListAdapter;->groups_comment:Ljava/util/ArrayList;

    .line 210
    iput-object p5, p0, Lcom/m0narx/tweaks/about$ExpandableListAdapter;->children:Ljava/util/ArrayList;

    .line 211
    iput-object p6, p0, Lcom/m0narx/tweaks/about$ExpandableListAdapter;->children_comment:Ljava/util/ArrayList;

    .line 212
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/about$ExpandableListAdapter;->getChild(II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getChild(II)Ljava/util/ArrayList;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/m0narx/tweaks/about$ExpandableListAdapter;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 226
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/about$ExpandableListAdapter;->getChild(II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 281
    .local v0, child:I
    invoke-virtual {p0, p1, p2}, Lcom/m0narx/tweaks/about$ExpandableListAdapter;->getChild_comment(II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 283
    .local v1, child_comment:I
    if-nez p4, :cond_0

    .line 284
    iget-object v5, p0, Lcom/m0narx/tweaks/about$ExpandableListAdapter;->context:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 285
    .local v4, infalInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030001

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 287
    .end local v4           #infalInflater:Landroid/view/LayoutInflater;
    :cond_0
    const v5, 0x7f09000c

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    .line 288
    .local v2, childtxt:Lcom/htc/widget/HtcListItem2LineText;
    const v5, 0x7f09000d

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemTileImage;

    .line 290
    .local v3, groupimg:Lcom/htc/widget/HtcListItemTileImage;
    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 291
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 292
    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 293
    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 294
    packed-switch p2, :pswitch_data_0

    .line 302
    :goto_0
    return-object p4

    .line 296
    :pswitch_0
    const v5, 0x7f02000f

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    goto :goto_0

    .line 299
    :pswitch_1
    const v5, 0x7f020024

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getChild_comment(II)Ljava/util/ArrayList;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/m0narx/tweaks/about$ExpandableListAdapter;->children_comment:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/m0narx/tweaks/about$ExpandableListAdapter;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Integer;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/m0narx/tweaks/about$ExpandableListAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/about$ExpandableListAdapter;->getGroup(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/m0narx/tweaks/about$ExpandableListAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 250
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 255
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/about$ExpandableListAdapter;->getGroup(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 256
    .local v1, group:I
    invoke-virtual {p0, p1}, Lcom/m0narx/tweaks/about$ExpandableListAdapter;->getGroup_Comment(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 258
    .local v2, group_comment:I
    if-nez p3, :cond_0

    .line 259
    iget-object v6, p0, Lcom/m0narx/tweaks/about$ExpandableListAdapter;->context:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 260
    .local v5, infalInflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030001

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .end local v5           #infalInflater:Landroid/view/LayoutInflater;
    :cond_0
    move-object v0, p3

    .line 262
    check-cast v0, Lcom/htc/widget/HtcListItem;

    .line 263
    .local v0, Item:Lcom/htc/widget/HtcListItem;
    const v6, 0x7f09000c

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    .line 264
    .local v4, grouptxt:Lcom/htc/widget/HtcListItem2LineText;
    const v6, 0x7f09000d

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemTileImage;

    .line 265
    .local v3, groupimg:Lcom/htc/widget/HtcListItemTileImage;
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 266
    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 267
    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 268
    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 269
    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 270
    const/4 v6, 0x3

    if-ne p1, v6, :cond_1

    .line 271
    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 272
    const v6, 0x7f020014

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageResource(I)V

    .line 274
    :cond_1
    return-object v0
.end method

.method public getGroup_Comment(I)Ljava/lang/Integer;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/m0narx/tweaks/about$ExpandableListAdapter;->groups_comment:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

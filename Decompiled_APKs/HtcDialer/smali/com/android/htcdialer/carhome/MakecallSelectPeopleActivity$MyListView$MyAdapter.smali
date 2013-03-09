.class Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MakecallSelectPeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    .line 1141
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1142
    iput-object p2, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->mContext:Landroid/content/Context;

    .line 1143
    return-void
.end method


# virtual methods
.method public changeAdapter(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1417
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1418
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->setDataSource(Ljava/util/List;)V

    .line 1419
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->notifyDataSetChanged()V

    .line 1424
    :goto_0
    return-void

    .line 1421
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->setDataSource(Ljava/util/List;)V

    .line 1422
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public getContact(II)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    .locals 3
    .parameter "i"
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 1147
    iget-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    iget-object v1, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mOrientationChange:Z
    invoke-static {v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$600(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1149
    packed-switch p2, :pswitch_data_0

    .line 1170
    :goto_0
    return-object v0

    .line 1152
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;

    iget-object v0, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->lcontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    goto :goto_0

    .line 1154
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;

    iget-object v0, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->ccontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    goto :goto_0

    .line 1156
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;

    iget-object v0, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->rcontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    goto :goto_0

    .line 1163
    :cond_0
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 1166
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;

    iget-object v0, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->lcontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    goto :goto_0

    .line 1168
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;

    iget-object v0, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->rcontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    goto :goto_0

    .line 1149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1163
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "i"
    .parameter "view"
    .parameter "viewgroup"

    .prologue
    .line 1177
    move/from16 v6, p1

    .line 1178
    .local v6, pos:I
    const/4 v2, 0x0

    .line 1181
    .local v2, holder:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;
    if-nez p2, :cond_2

    .line 1182
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    iget-object v12, v12, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v12}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$700(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f030024

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1183
    new-instance v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;

    .end local v2           #holder:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$1;)V

    .line 1185
    .restart local v2       #holder:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    iget-object v12, v12, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mOrientationChange:Z
    invoke-static {v12}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$600(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 1187
    const v12, 0x7f0b005e

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    iput-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v1:Landroid/view/ViewGroup;

    .line 1188
    const v12, 0x7f0b0060

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    iput-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v2:Landroid/view/ViewGroup;

    .line 1189
    const v12, 0x7f0b005f

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    iput-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v3:Landroid/view/ViewGroup;

    .line 1199
    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1206
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    iget-object v12, v12, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mIsShown:Z
    invoke-static {v12}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1412
    .end local p2
    :cond_0
    :goto_2
    return-object p2

    .line 1194
    .restart local p2
    :cond_1
    const v12, 0x7f0b005e

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    iput-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v1:Landroid/view/ViewGroup;

    .line 1195
    const v12, 0x7f0b005f

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    iput-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v3:Landroid/view/ViewGroup;

    goto :goto_0

    .line 1203
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #holder:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;
    check-cast v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;

    .restart local v2       #holder:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;
    goto :goto_1

    .line 1209
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;

    .line 1210
    .local v4, pair:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;
    const/4 v8, 0x0

    .line 1212
    .local v8, tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    if-nez v4, :cond_4

    .line 1213
    const/16 p2, 0x0

    goto :goto_2

    .line 1215
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    iget-object v12, v12, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mOrientationChange:Z
    invoke-static {v12}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$600(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_16

    .line 1217
    iget-object v3, v4, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->lcontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    .line 1218
    .local v3, lContact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    iget-object v1, v4, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->ccontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    .line 1219
    .local v1, cContact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    iget-object v7, v4, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->rcontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    .line 1221
    .local v7, rContact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v1:Landroid/view/ViewGroup;

    if-eqz v12, :cond_5

    .line 1222
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v1:Landroid/view/ViewGroup;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1223
    :cond_5
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v2:Landroid/view/ViewGroup;

    if-eqz v12, :cond_6

    .line 1224
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v2:Landroid/view/ViewGroup;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1225
    :cond_6
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v3:Landroid/view/ViewGroup;

    if-eqz v12, :cond_7

    .line 1226
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v3:Landroid/view/ViewGroup;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1228
    :cond_7
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v1:Landroid/view/ViewGroup;

    if-eqz v12, :cond_9

    move-object/from16 v12, p2

    .line 1230
    check-cast v12, Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1232
    .local v9, v:Landroid/view/View;
    if-eqz v3, :cond_e

    .line 1234
    new-instance v8, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;

    .end local v8           #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    const/4 v13, 0x0

    invoke-direct {v8, v12, v6, v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;II)V

    .line 1235
    .restart local v8       #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    if-eqz v8, :cond_8

    .line 1236
    invoke-virtual {v9, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1237
    :cond_8
    iput-object v9, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->view:Landroid/view/View;

    .line 1239
    iget-wide v12, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->item_type:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_d

    .line 1241
    iget-boolean v12, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bHasPhoneNumber:Z

    iput-boolean v12, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bIsTouch:Z

    .line 1242
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    iget-object v13, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->view:Landroid/view/View;

    iget-boolean v14, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bIsTouch:Z

    invoke-virtual {v12, v3, v13, v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->UpdateViewStatus(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;Landroid/view/View;Z)V

    .line 1251
    :goto_3
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v1:Landroid/view/ViewGroup;

    check-cast v12, Lcom/android/htcdialer/carhome/MyContactMatrixItem;

    invoke-virtual {v12, v3}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->updateView(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)V

    .line 1252
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v1:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1262
    .end local v9           #v:Landroid/view/View;
    :cond_9
    :goto_4
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v2:Landroid/view/ViewGroup;

    if-eqz v12, :cond_b

    move-object/from16 v12, p2

    .line 1264
    check-cast v12, Landroid/view/ViewGroup;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1266
    .local v10, v2:Landroid/view/View;
    if-eqz v1, :cond_11

    .line 1268
    new-instance v8, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;

    .end local v8           #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    const/4 v13, 0x1

    invoke-direct {v8, v12, v6, v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;II)V

    .line 1269
    .restart local v8       #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    if-eqz v8, :cond_a

    .line 1270
    invoke-virtual {v10, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1271
    :cond_a
    iput-object v10, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->view:Landroid/view/View;

    .line 1273
    iget-wide v12, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->item_type:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_10

    .line 1275
    iget-boolean v12, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bHasPhoneNumber:Z

    iput-boolean v12, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bIsTouch:Z

    .line 1276
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    iget-object v13, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->view:Landroid/view/View;

    iget-boolean v14, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bIsTouch:Z

    invoke-virtual {v12, v1, v13, v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->UpdateViewStatus(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;Landroid/view/View;Z)V

    .line 1285
    :goto_5
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v2:Landroid/view/ViewGroup;

    check-cast v12, Lcom/android/htcdialer/carhome/MyContactMatrixItem;

    invoke-virtual {v12, v1}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->updateView(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)V

    .line 1286
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v2:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1297
    .end local v10           #v2:Landroid/view/View;
    :cond_b
    :goto_6
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v3:Landroid/view/ViewGroup;

    if-eqz v12, :cond_0

    move-object/from16 v12, p2

    .line 1299
    check-cast v12, Landroid/view/ViewGroup;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1301
    .local v11, v3:Landroid/view/View;
    if-eqz v7, :cond_14

    .line 1303
    new-instance v8, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;

    .end local v8           #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    const/4 v13, 0x2

    invoke-direct {v8, v12, v6, v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;II)V

    .line 1304
    .restart local v8       #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    if-eqz v11, :cond_c

    .line 1305
    invoke-virtual {v11, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1306
    :cond_c
    iput-object v11, v7, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->view:Landroid/view/View;

    .line 1308
    iget-wide v12, v7, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->item_type:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_13

    .line 1310
    iget-boolean v12, v7, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bHasPhoneNumber:Z

    iput-boolean v12, v7, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bIsTouch:Z

    .line 1311
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    iget-object v13, v7, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->view:Landroid/view/View;

    iget-boolean v14, v7, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bIsTouch:Z

    invoke-virtual {v12, v7, v13, v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->UpdateViewStatus(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;Landroid/view/View;Z)V

    .line 1320
    :goto_7
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v3:Landroid/view/ViewGroup;

    check-cast v12, Lcom/android/htcdialer/carhome/MyContactMatrixItem;

    invoke-virtual {v12, v7}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->updateView(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)V

    .line 1321
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v3:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 1246
    .end local v11           #v3:Landroid/view/View;
    .restart local v9       #v:Landroid/view/View;
    :cond_d
    iget-object v12, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->view:Landroid/view/View;

    const v13, 0x7f0b0036

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1247
    .local v5, pic:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->mContext:Landroid/content/Context;

    iget-object v13, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->photo:Landroid/graphics/Bitmap;

    invoke-static {v12, v5, v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->setApplyMaskBitmapToImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 1248
    const/4 v12, 0x1

    iput-boolean v12, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bIsTouch:Z

    goto/16 :goto_3

    .line 1254
    .end local v5           #pic:Landroid/widget/ImageView;
    :cond_e
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    check-cast v8, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;

    .line 1255
    .restart local v8       #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    if-nez v8, :cond_f

    .line 1256
    new-instance v8, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;

    .end local v8           #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    invoke-direct {v8, v12}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;)V

    .line 1259
    .restart local v8       #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    :goto_8
    invoke-virtual {v9, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1258
    :cond_f
    invoke-virtual {v8}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;->reset()V

    goto :goto_8

    .line 1280
    .end local v9           #v:Landroid/view/View;
    .restart local v10       #v2:Landroid/view/View;
    :cond_10
    iget-object v12, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->view:Landroid/view/View;

    const v13, 0x7f0b0036

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1281
    .restart local v5       #pic:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->photo:Landroid/graphics/Bitmap;

    invoke-static {v12, v5, v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->setApplyMaskBitmapToImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 1282
    const/4 v12, 0x1

    iput-boolean v12, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bIsTouch:Z

    goto/16 :goto_5

    .line 1288
    .end local v5           #pic:Landroid/widget/ImageView;
    :cond_11
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    check-cast v8, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;

    .line 1289
    .restart local v8       #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    if-nez v8, :cond_12

    .line 1290
    new-instance v8, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;

    .end local v8           #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    invoke-direct {v8, v12}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;)V

    .line 1293
    .restart local v8       #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    :goto_9
    invoke-virtual {v10, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1292
    :cond_12
    invoke-virtual {v8}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;->reset()V

    goto :goto_9

    .line 1315
    .end local v10           #v2:Landroid/view/View;
    .restart local v11       #v3:Landroid/view/View;
    :cond_13
    iget-object v12, v7, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->view:Landroid/view/View;

    const v13, 0x7f0b0036

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1316
    .restart local v5       #pic:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->mContext:Landroid/content/Context;

    iget-object v13, v7, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->photo:Landroid/graphics/Bitmap;

    invoke-static {v12, v5, v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->setApplyMaskBitmapToImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 1317
    const/4 v12, 0x1

    iput-boolean v12, v7, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bIsTouch:Z

    goto/16 :goto_7

    .line 1323
    .end local v5           #pic:Landroid/widget/ImageView;
    :cond_14
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    check-cast v8, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;

    .line 1324
    .restart local v8       #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    if-nez v8, :cond_15

    .line 1325
    new-instance v8, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;

    .end local v8           #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    invoke-direct {v8, v12}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;)V

    .line 1328
    .restart local v8       #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    :goto_a
    invoke-virtual {v11, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1327
    :cond_15
    invoke-virtual {v8}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;->reset()V

    goto :goto_a

    .line 1335
    .end local v1           #cContact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    .end local v3           #lContact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    .end local v7           #rContact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    .end local v11           #v3:Landroid/view/View;
    :cond_16
    iget-object v3, v4, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->lcontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    .line 1336
    .restart local v3       #lContact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    iget-object v7, v4, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;->rcontact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    .line 1338
    .restart local v7       #rContact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v1:Landroid/view/ViewGroup;

    if-eqz v12, :cond_17

    .line 1339
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v1:Landroid/view/ViewGroup;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1340
    :cond_17
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v3:Landroid/view/ViewGroup;

    if-eqz v12, :cond_18

    .line 1341
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v3:Landroid/view/ViewGroup;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1343
    :cond_18
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v1:Landroid/view/ViewGroup;

    if-eqz v12, :cond_19

    move-object/from16 v12, p2

    .line 1345
    check-cast v12, Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1347
    .restart local v9       #v:Landroid/view/View;
    if-eqz v3, :cond_1b

    .line 1349
    new-instance v8, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;

    .end local v8           #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    const/4 v13, 0x0

    invoke-direct {v8, v12, v6, v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;II)V

    .line 1350
    .restart local v8       #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    invoke-virtual {v9, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1351
    iput-object v9, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->view:Landroid/view/View;

    .line 1353
    iget-wide v12, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->item_type:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_1a

    .line 1355
    iget-boolean v12, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bHasPhoneNumber:Z

    iput-boolean v12, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bIsTouch:Z

    .line 1356
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    iget-object v13, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->view:Landroid/view/View;

    iget-boolean v14, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bIsTouch:Z

    invoke-virtual {v12, v3, v13, v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->UpdateViewStatus(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;Landroid/view/View;Z)V

    .line 1365
    :goto_b
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v1:Landroid/view/ViewGroup;

    check-cast v12, Lcom/android/htcdialer/carhome/MyContactMatrixItem;

    invoke-virtual {v12, v3}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->updateView(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)V

    .line 1366
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v1:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1377
    .end local v9           #v:Landroid/view/View;
    :cond_19
    :goto_c
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v3:Landroid/view/ViewGroup;

    if-eqz v12, :cond_0

    move-object/from16 v12, p2

    .line 1379
    check-cast v12, Landroid/view/ViewGroup;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1381
    .restart local v11       #v3:Landroid/view/View;
    if-eqz v7, :cond_1e

    .line 1383
    new-instance v8, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;

    .end local v8           #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    const/4 v13, 0x2

    invoke-direct {v8, v12, v6, v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;II)V

    .line 1384
    .restart local v8       #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    invoke-virtual {v11, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1385
    iput-object v11, v7, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->view:Landroid/view/View;

    .line 1387
    iget-wide v12, v7, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->item_type:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_1d

    .line 1389
    iget-boolean v12, v7, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bHasPhoneNumber:Z

    iput-boolean v12, v7, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bIsTouch:Z

    .line 1390
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    iget-object v13, v7, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->view:Landroid/view/View;

    iget-boolean v14, v7, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bIsTouch:Z

    invoke-virtual {v12, v7, v13, v14}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->UpdateViewStatus(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;Landroid/view/View;Z)V

    .line 1399
    :goto_d
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v3:Landroid/view/ViewGroup;

    check-cast v12, Lcom/android/htcdialer/carhome/MyContactMatrixItem;

    invoke-virtual {v12, v7}, Lcom/android/htcdialer/carhome/MyContactMatrixItem;->updateView(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)V

    .line 1400
    iget-object v12, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter$ViewHolder;->v3:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 1360
    .end local v11           #v3:Landroid/view/View;
    .restart local v9       #v:Landroid/view/View;
    :cond_1a
    iget-object v12, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->view:Landroid/view/View;

    const v13, 0x7f0b0036

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1361
    .restart local v5       #pic:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->mContext:Landroid/content/Context;

    iget-object v13, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->photo:Landroid/graphics/Bitmap;

    invoke-static {v12, v5, v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->setApplyMaskBitmapToImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 1362
    const/4 v12, 0x1

    iput-boolean v12, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bIsTouch:Z

    goto :goto_b

    .line 1368
    .end local v5           #pic:Landroid/widget/ImageView;
    :cond_1b
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    check-cast v8, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;

    .line 1369
    .restart local v8       #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    if-nez v8, :cond_1c

    .line 1370
    new-instance v8, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;

    .end local v8           #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    invoke-direct {v8, v12}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;)V

    .line 1373
    .restart local v8       #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    :goto_e
    invoke-virtual {v9, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_c

    .line 1372
    :cond_1c
    invoke-virtual {v8}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;->reset()V

    goto :goto_e

    .line 1394
    .end local v9           #v:Landroid/view/View;
    .restart local v11       #v3:Landroid/view/View;
    :cond_1d
    iget-object v12, v7, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->view:Landroid/view/View;

    const v13, 0x7f0b0036

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1395
    .restart local v5       #pic:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->mContext:Landroid/content/Context;

    iget-object v13, v7, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->photo:Landroid/graphics/Bitmap;

    invoke-static {v12, v5, v13}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->setApplyMaskBitmapToImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 1396
    const/4 v12, 0x1

    iput-boolean v12, v7, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bIsTouch:Z

    goto :goto_d

    .line 1402
    .end local v5           #pic:Landroid/widget/ImageView;
    :cond_1e
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    check-cast v8, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;

    .line 1403
    .restart local v8       #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    if-nez v8, :cond_1f

    .line 1404
    new-instance v8, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;

    .end local v8           #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    invoke-direct {v8, v12}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;)V

    .line 1407
    .restart local v8       #tag:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;
    :goto_f
    invoke-virtual {v11, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1406
    :cond_1f
    invoke-virtual {v8}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;->reset()V

    goto :goto_f
.end method

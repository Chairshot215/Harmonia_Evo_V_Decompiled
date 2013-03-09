.class Lcom/futuredial/ui/DMISimpleAdapter$SimpleFilter;
.super Landroid/widget/Filter;
.source "ViewSelectDataType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/ui/DMISimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/DMISimpleAdapter;


# direct methods
.method private constructor <init>(Lcom/futuredial/ui/DMISimpleAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/futuredial/ui/DMISimpleAdapter$SimpleFilter;->this$0:Lcom/futuredial/ui/DMISimpleAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/futuredial/ui/DMISimpleAdapter;Lcom/futuredial/ui/DMISimpleAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1091
    invoke-direct {p0, p1}, Lcom/futuredial/ui/DMISimpleAdapter$SimpleFilter;-><init>(Lcom/futuredial/ui/DMISimpleAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 19
    .parameter "prefix"

    .prologue
    .line 1095
    new-instance v10, Landroid/widget/Filter$FilterResults;

    invoke-direct {v10}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 1097
    .local v10, results:Landroid/widget/Filter$FilterResults;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/DMISimpleAdapter$SimpleFilter;->this$0:Lcom/futuredial/ui/DMISimpleAdapter;

    move-object/from16 v16, v0

    #getter for: Lcom/futuredial/ui/DMISimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/futuredial/ui/DMISimpleAdapter;->access$400(Lcom/futuredial/ui/DMISimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v16

    if-nez v16, :cond_0

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/DMISimpleAdapter$SimpleFilter;->this$0:Lcom/futuredial/ui/DMISimpleAdapter;

    move-object/from16 v16, v0

    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/DMISimpleAdapter$SimpleFilter;->this$0:Lcom/futuredial/ui/DMISimpleAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/futuredial/ui/DMISimpleAdapter;->mData:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/futuredial/ui/DMISimpleAdapter;->access$500(Lcom/futuredial/ui/DMISimpleAdapter;)Ljava/util/List;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #setter for: Lcom/futuredial/ui/DMISimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v17}, Lcom/futuredial/ui/DMISimpleAdapter;->access$402(Lcom/futuredial/ui/DMISimpleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1101
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v16

    if-nez v16, :cond_2

    .line 1102
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/DMISimpleAdapter$SimpleFilter;->this$0:Lcom/futuredial/ui/DMISimpleAdapter;

    move-object/from16 v16, v0

    #getter for: Lcom/futuredial/ui/DMISimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/futuredial/ui/DMISimpleAdapter;->access$400(Lcom/futuredial/ui/DMISimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1103
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object v7, v10, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 1104
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    iput v0, v10, Landroid/widget/Filter$FilterResults;->count:I

    .line 1141
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    :goto_0
    return-object v10

    .line 1106
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 1108
    .local v9, prefixString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/DMISimpleAdapter$SimpleFilter;->this$0:Lcom/futuredial/ui/DMISimpleAdapter;

    move-object/from16 v16, v0

    #getter for: Lcom/futuredial/ui/DMISimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/futuredial/ui/DMISimpleAdapter;->access$400(Lcom/futuredial/ui/DMISimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1109
    .local v12, unfilteredValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1111
    .local v1, count:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1113
    .local v8, newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_6

    .line 1114
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1115
    .local v2, h:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v2, :cond_5

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/DMISimpleAdapter$SimpleFilter;->this$0:Lcom/futuredial/ui/DMISimpleAdapter;

    move-object/from16 v16, v0

    #getter for: Lcom/futuredial/ui/DMISimpleAdapter;->mTo:[I
    invoke-static/range {v16 .. v16}, Lcom/futuredial/ui/DMISimpleAdapter;->access$600(Lcom/futuredial/ui/DMISimpleAdapter;)[I

    move-result-object v16

    move-object/from16 v0, v16

    array-length v6, v0

    .line 1119
    .local v6, len:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ge v4, v6, :cond_5

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/DMISimpleAdapter$SimpleFilter;->this$0:Lcom/futuredial/ui/DMISimpleAdapter;

    move-object/from16 v16, v0

    #getter for: Lcom/futuredial/ui/DMISimpleAdapter;->mFrom:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/futuredial/ui/DMISimpleAdapter;->access$700(Lcom/futuredial/ui/DMISimpleAdapter;)[Ljava/lang/String;

    move-result-object v16

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1122
    .local v11, str:Ljava/lang/String;
    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1123
    .local v15, words:[Ljava/lang/String;
    array-length v14, v15

    .line 1125
    .local v14, wordCount:I
    const/4 v5, 0x0

    .local v5, k:I
    :goto_3
    if-ge v5, v14, :cond_3

    .line 1126
    aget-object v13, v15, v5

    .line 1128
    .local v13, word:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1129
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    .end local v13           #word:Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1125
    .restart local v13       #word:Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1113
    .end local v4           #j:I
    .end local v5           #k:I
    .end local v6           #len:I
    .end local v11           #str:Ljava/lang/String;
    .end local v13           #word:Ljava/lang/String;
    .end local v14           #wordCount:I
    .end local v15           #words:[Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1137
    .end local v2           #h:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_6
    iput-object v8, v10, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 1138
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    iput v0, v10, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 1147
    iget-object v1, p0, Lcom/futuredial/ui/DMISimpleAdapter$SimpleFilter;->this$0:Lcom/futuredial/ui/DMISimpleAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    #setter for: Lcom/futuredial/ui/DMISimpleAdapter;->mData:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/futuredial/ui/DMISimpleAdapter;->access$502(Lcom/futuredial/ui/DMISimpleAdapter;Ljava/util/List;)Ljava/util/List;

    .line 1148
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/futuredial/ui/DMISimpleAdapter$SimpleFilter;->this$0:Lcom/futuredial/ui/DMISimpleAdapter;

    invoke-virtual {v0}, Lcom/futuredial/ui/DMISimpleAdapter;->notifyDataSetChanged()V

    .line 1153
    :goto_0
    return-void

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/futuredial/ui/DMISimpleAdapter$SimpleFilter;->this$0:Lcom/futuredial/ui/DMISimpleAdapter;

    invoke-virtual {v0}, Lcom/futuredial/ui/DMISimpleAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

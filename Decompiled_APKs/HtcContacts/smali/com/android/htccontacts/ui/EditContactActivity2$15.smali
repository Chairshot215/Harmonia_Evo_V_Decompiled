.class Lcom/android/htccontacts/ui/EditContactActivity2$15;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditContactActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 5048
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$15;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 26
    .parameter "view"

    .prologue
    .line 5050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$15;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/htccontacts/ui/EditContactActivity2;->hasValidState()Z

    move-result v24

    if-nez v24, :cond_1

    .line 5133
    :cond_0
    :goto_0
    return-void

    .line 5054
    :cond_1
    const/16 v20, 0x0

    .line 5055
    .local v20, state:Lcom/android/htccontacts/model/EntityDelta;
    const/4 v15, -0x1

    .line 5056
    .local v15, nSelectIndex:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 5057
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/ui/widget/DropdownEditorView;

    .line 5058
    .local v4, dev:Lcom/android/htccontacts/ui/widget/DropdownEditorView;
    invoke-virtual {v4}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->getState()Lcom/android/htccontacts/model/EntityDelta;

    move-result-object v20

    .line 5061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$15;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v24, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {v24 .. v24}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v24

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$15;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v24, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {v24 .. v24}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_2

    .line 5062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$15;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v24, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {v24 .. v24}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v14

    .line 5063
    .local v14, nNonSnsize:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v14, :cond_2

    .line 5064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$15;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v24, v0

    #getter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-static/range {v24 .. v24}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/model/EntityDelta;

    .line 5065
    .local v5, entity:Lcom/android/htccontacts/model/EntityDelta;
    move-object/from16 v0, v20

    if-ne v5, v0, :cond_4

    .line 5066
    move v15, v9

    .line 5073
    .end local v4           #dev:Lcom/android/htccontacts/ui/widget/DropdownEditorView;
    .end local v5           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v9           #i:I
    .end local v14           #nNonSnsize:I
    :cond_2
    if-ltz v15, :cond_0

    .line 5076
    const/4 v6, 0x0

    .line 5077
    .local v6, excludeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 5080
    .local v19, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v20, :cond_0

    .line 5083
    const-string v24, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5084
    .local v3, deltaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v3, :cond_5

    .line 5085
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 5086
    .local v23, valueEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {v23 .. v23}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v24

    if-nez v24, :cond_3

    .line 5088
    const-string v24, "data1"

    invoke-virtual/range {v23 .. v24}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 5089
    .local v11, integer:Ljava/lang/Integer;
    if-eqz v11, :cond_3

    .line 5090
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5063
    .end local v3           #deltaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .end local v6           #excludeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #integer:Ljava/lang/Integer;
    .end local v19           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23           #valueEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .restart local v4       #dev:Lcom/android/htccontacts/ui/widget/DropdownEditorView;
    .restart local v5       #entity:Lcom/android/htccontacts/model/EntityDelta;
    .restart local v9       #i:I
    .restart local v14       #nNonSnsize:I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 5095
    .end local v4           #dev:Lcom/android/htccontacts/ui/widget/DropdownEditorView;
    .end local v5           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v9           #i:I
    .end local v14           #nNonSnsize:I
    .restart local v3       #deltaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .restart local v6       #excludeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v19       #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    invoke-virtual/range {v20 .. v20}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    .line 5096
    .local v2, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v24, "starred"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    if-lez v24, :cond_7

    const/4 v13, 0x1

    .line 5097
    .local v13, isStarred:Z
    :goto_3
    if-eqz v13, :cond_6

    .line 5098
    const/16 v24, -0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5101
    :cond_6
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$15;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/htccontacts/ui/EditContactActivity2;->getApplication()Landroid/app/Application;

    move-result-object v24

    const-class v25, Lcom/android/htccontacts/app/GroupDialogPicker;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5102
    .local v12, intent:Landroid/content/Intent;
    const-string v24, "SELECT_MODE"

    const/16 v25, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5103
    const-string v24, "EXCLUDE_ID"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5104
    const-string v24, "SELECTED_ID"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$15;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/android/htccontacts/ui/EditContactActivity2;->getNewAddedGroup(I)Ljava/util/ArrayList;

    move-result-object v17

    .line 5108
    .local v17, newAddedGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 5109
    .local v21, titleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5110
    .local v7, groupIsReadOnlyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;

    .line 5111
    .local v8, groupItem:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;
    iget-object v0, v8, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5112
    iget v0, v8, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupIsReadOnly:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 5096
    .end local v7           #groupIsReadOnlyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8           #groupItem:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v13           #isStarred:Z
    .end local v17           #newAddedGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    .end local v21           #titleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    const/4 v13, 0x0

    goto :goto_3

    .line 5114
    .restart local v7       #groupIsReadOnlyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v12       #intent:Landroid/content/Intent;
    .restart local v13       #isStarred:Z
    .restart local v17       #newAddedGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    .restart local v21       #titleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    const-string v24, "SELECTED_APPEND_TITLE"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5118
    const-string v24, "account_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$15;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/android/htccontacts/ui/EditContactActivity2;->getContactsSource(I)Lcom/android/htccontacts/model/AccountType;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5119
    const-string v24, "IS_FAVORITE"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$15;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/android/htccontacts/ui/EditContactActivity2;->getEntityDelta(I)Lcom/android/htccontacts/model/EntityDelta;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v18

    .line 5123
    .local v18, rawContactValue:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-eqz v18, :cond_9

    .line 5124
    const-string v24, "account_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 5125
    .local v16, name:Ljava/lang/String;
    const-string v24, "account_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 5126
    .local v22, type:Ljava/lang/String;
    const-string v24, "PERSON_ACCOUNT_TYPE"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5127
    const-string v24, "PERSON_ACCOUNT_NAME"

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5129
    .end local v16           #name:Ljava/lang/String;
    .end local v22           #type:Ljava/lang/String;
    :cond_9
    const-string v24, "extra_info_index"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$15;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/android/htccontacts/ui/EditContactActivity2;->mDetectGotoHome:Z
    invoke-static/range {v24 .. v25}, Lcom/android/htccontacts/ui/EditContactActivity2;->access$8602(Lcom/android/htccontacts/ui/EditContactActivity2;Z)Z

    .line 5132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$15;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    move-object/from16 v24, v0

    const v25, 0xf0001

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

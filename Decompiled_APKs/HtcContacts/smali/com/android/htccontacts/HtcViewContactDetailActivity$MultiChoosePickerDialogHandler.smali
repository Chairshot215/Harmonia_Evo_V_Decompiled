.class Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;
.super Ljava/lang/Object;
.source "HtcViewContactDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcViewContactDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiChoosePickerDialogHandler"
.end annotation


# instance fields
.field final emails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field final labels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field final numbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field final phonesIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field pickerdialog:Lcom/htc/widget/HtcAlertDialog;

.field final synthetic this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 3018
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3014
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->numbers:Ljava/util/ArrayList;

    .line 3015
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->labels:Ljava/util/ArrayList;

    .line 3016
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->phonesIds:Ljava/util/ArrayList;

    .line 3017
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->emails:Ljava/util/ArrayList;

    .line 3020
    return-void
.end method

.method static synthetic access$600(Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;[ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 3011
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->setBooleanArray([ZZ)V

    return-void
.end method

.method private setBooleanArray([ZZ)V
    .locals 2
    .parameter "array"
    .parameter "value"

    .prologue
    .line 3205
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 3206
    aput-boolean p2, p1, v0

    .line 3205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3208
    :cond_0
    return-void
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 42

    .prologue
    .line 3023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->pickerdialog:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v39, v0

    if-eqz v39, :cond_0

    .line 3024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->pickerdialog:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v39, v0

    .line 3201
    :goto_0
    return-object v39

    .line 3026
    :cond_0
    const/16 v27, 0x0

    .line 3027
    .local v27, phoneCount:I
    const/16 v23, 0x0

    .line 3028
    .local v23, mailCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    move-object/from16 v39, v0

    #calls: Lcom/android/htccontacts/HtcViewContactDetailActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;
    invoke-static/range {v39 .. v39}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$300(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v6

    .line 3029
    .local v6, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-virtual {v6}, Lcom/android/htccontacts/HtcContactInfo;->getEntities()Ljava/util/ArrayList;

    move-result-object v12

    .line 3030
    .local v12, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    const/16 v29, -0x1

    .line 3031
    .local v29, primary_index:I
    if-nez v12, :cond_1

    const/16 v39, 0x0

    goto :goto_0

    .line 3032
    :cond_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Entity;

    .line 3033
    .local v13, entity:Landroid/content/Entity;
    invoke-virtual {v13}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v11

    .line 3034
    .local v11, entValues:Landroid/content/ContentValues;
    const-string v39, "account_type"

    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3035
    .local v3, accountType:Ljava/lang/String;
    const-string v39, "_id"

    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    .line 3036
    .local v31, rawContactId:J
    const-string v39, "data_set"

    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3038
    .local v8, dataSet:Ljava/lang/String;
    invoke-virtual {v13}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/Entity$NamedContentValues;

    .line 3039
    .local v36, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v36

    iget-object v14, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 3040
    .local v14, entryValues:Landroid/content/ContentValues;
    const-string v39, "raw_contact_id"

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3042
    const-string v39, "mimetype"

    move-object/from16 v0, v39

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3043
    .local v25, mimetype:Ljava/lang/String;
    if-eqz v25, :cond_3

    .line 3045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    move-object/from16 v39, v0

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$400(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Landroid/content/Context;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v34

    .line 3046
    .local v34, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v8, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v9

    .line 3049
    .local v9, datakind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v9, :cond_3

    .line 3050
    const-string v39, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_5

    .line 3051
    const-string v39, "data1"

    move-object/from16 v0, v39

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3052
    .local v7, data:Ljava/lang/String;
    const-string v39, "_id"

    move-object/from16 v0, v39

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 3053
    .local v18, id:I
    const-string v39, "is_super_primary"

    move-object/from16 v0, v39

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v30

    .line 3054
    .local v30, primary_value:I
    const-string v39, "data2"

    move-object/from16 v0, v39

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .line 3055
    .local v38, type:I
    const-string v39, "data3"

    move-object/from16 v0, v39

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3056
    .local v21, label:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->numbers:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v38

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 3058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->labels:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->phonesIds:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3060
    if-lez v30, :cond_4

    .line 3061
    move/from16 v29, v27

    .line 3063
    :cond_4
    add-int/lit8 v27, v27, 0x1

    .line 3065
    .end local v7           #data:Ljava/lang/String;
    .end local v18           #id:I
    .end local v21           #label:Ljava/lang/String;
    .end local v30           #primary_value:I
    .end local v38           #type:I
    :cond_5
    const-string v39, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_3

    .line 3066
    const-string v39, "data1"

    move-object/from16 v0, v39

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3067
    .restart local v7       #data:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->emails:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3068
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 3073
    .end local v3           #accountType:Ljava/lang/String;
    .end local v7           #data:Ljava/lang/String;
    .end local v8           #dataSet:Ljava/lang/String;
    .end local v9           #datakind:Lcom/android/htccontacts/model/DataKind;
    .end local v11           #entValues:Landroid/content/ContentValues;
    .end local v13           #entity:Landroid/content/Entity;
    .end local v14           #entryValues:Landroid/content/ContentValues;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v25           #mimetype:Ljava/lang/String;
    .end local v31           #rawContactId:J
    .end local v34           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v36           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_6
    if-eqz v27, :cond_7

    const/16 v39, 0x1

    move/from16 v0, v27

    move/from16 v1, v39

    if-ne v0, v1, :cond_8

    const/16 v39, 0x1

    move/from16 v0, v23

    move/from16 v1, v39

    if-gt v0, v1, :cond_8

    .line 3074
    :cond_7
    const/16 v39, 0x0

    goto/16 :goto_0

    .line 3077
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->numbers:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 3078
    .local v33, size:I
    const/16 v24, 0x0

    .line 3079
    .local v24, mailSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    move-object/from16 v39, v0

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$500(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Landroid/content/Context;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/android/htccontacts/util/ContactsUtils;->simSupportEmailNum(Landroid/content/Context;)I

    move-result v37

    .line 3080
    .local v37, supportEmailNum:I
    if-lez v37, :cond_9

    .line 3081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->emails:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 3084
    :cond_9
    add-int v39, v33, v24

    add-int/lit8 v39, v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    .line 3085
    .local v20, items:[Ljava/lang/CharSequence;
    add-int v39, v33, v24

    add-int/lit8 v39, v39, 0x1

    move/from16 v0, v39

    new-array v5, v0, [Z

    .line 3087
    .local v5, checkedItems:[Z
    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    move-object/from16 v40, v0

    const v41, 0x7f0a024a

    invoke-virtual/range {v40 .. v41}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v20, v39

    .line 3088
    const/16 v39, 0x0

    const/16 v40, 0x0

    aput-boolean v40, v5, v39

    .line 3090
    const/16 v19, 0x1

    .line 3091
    .local v19, itemIndex:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    move/from16 v0, v33

    if-ge v15, v0, :cond_a

    .line 3092
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->labels:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->numbers:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 3093
    .local v35, str:Ljava/lang/CharSequence;
    aput-object v35, v20, v19

    .line 3094
    const/16 v39, 0x0

    aput-boolean v39, v5, v19

    .line 3095
    add-int/lit8 v19, v19, 0x1

    .line 3091
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 3098
    .end local v35           #str:Ljava/lang/CharSequence;
    :cond_a
    add-int/lit8 v19, v33, 0x1

    .line 3099
    if-lez v24, :cond_b

    .line 3100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->emails:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    .line 3101
    .local v10, email:Ljava/lang/CharSequence;
    add-int v39, v33, v24

    add-int/lit8 v39, v39, 0x1

    move/from16 v0, v19

    move/from16 v1, v39

    if-lt v0, v1, :cond_c

    .line 3110
    .end local v10           #email:Ljava/lang/CharSequence;
    .end local v16           #i$:Ljava/util/Iterator;
    :cond_b
    add-int/lit8 v39, v29, 0x1

    const/16 v40, 0x1

    aput-boolean v40, v5, v39

    .line 3112
    new-instance v28, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    move-object/from16 v39, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3114
    .local v28, phonePickerBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    new-instance v22, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$1;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;[Z)V

    .line 3129
    .local v22, listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    new-instance v26, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$2;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;[Z)V

    .line 3185
    .local v26, oklistener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler$3;-><init>(Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;)V

    .line 3194
    .local v4, cancellistener:Landroid/content/DialogInterface$OnClickListener;
    const v39, 0x7f0a0146

    move-object/from16 v0, v28

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3195
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3196
    const v39, 0x7f0a014f

    move-object/from16 v0, v28

    move/from16 v1, v39

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3197
    const v39, 0x7f0a0152

    move-object/from16 v0, v28

    move/from16 v1, v39

    invoke-virtual {v0, v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3199
    invoke-virtual/range {v28 .. v28}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->pickerdialog:Lcom/htc/widget/HtcAlertDialog;

    .line 3201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$MultiChoosePickerDialogHandler;->pickerdialog:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v39, v0

    goto/16 :goto_0

    .line 3104
    .end local v4           #cancellistener:Landroid/content/DialogInterface$OnClickListener;
    .end local v22           #listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    .end local v26           #oklistener:Landroid/content/DialogInterface$OnClickListener;
    .end local v28           #phonePickerBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .restart local v10       #email:Ljava/lang/CharSequence;
    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_c
    aput-object v10, v20, v19

    .line 3105
    const/16 v39, 0x0

    aput-boolean v39, v5, v19

    .line 3106
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3
.end method

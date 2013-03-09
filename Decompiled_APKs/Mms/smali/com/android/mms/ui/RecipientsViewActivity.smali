.class public Lcom/android/mms/ui/RecipientsViewActivity;
.super Lcom/htc/app/HtcListActivity;
.source "RecipientsViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RecipientsViewActivity$RecipientsListAdapter;
    }
.end annotation


# static fields
.field private static final ITEM_KEY:Ljava/lang/String; = "Recipients"

.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "RecipientsViewActivity"


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListHeight:I

.field private mRecipients:Landroid/widget/SimpleAdapter;

.field private mSingleLine:[Z

.field private mStatusDate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsViewActivity;->list:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsViewActivity;->mStatusDate:Ljava/util/ArrayList;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsViewActivity;->mSingleLine:[Z

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/RecipientsViewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/mms/ui/RecipientsViewActivity;->mListHeight:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/RecipientsViewActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/mms/ui/RecipientsViewActivity;->mListHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/RecipientsViewActivity;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsViewActivity;->mSingleLine:[Z

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/RecipientsViewActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsViewActivity;->mStatusDate:Ljava/util/ArrayList;

    return-object v0
.end method

.method private appendStatusDate(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter "input"
    .parameter "recipient"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    const-string v3, ""

    .line 271
    .local v3, t:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 274
    .local v0, context:Landroid/content/Context;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/DeliveryReportItem;

    .line 276
    .local v2, item:Lcom/android/mms/ui/DeliveryReportItem;
    iget-object v4, v2, Lcom/android/mms/ui/DeliveryReportItem;->recipient:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/mms/ui/DeliveryReportItem;->recipient:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0900da

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    iget-object v4, v2, Lcom/android/mms/ui/DeliveryReportItem;->status:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/mms/ui/DeliveryReportItem;->status:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 286
    :cond_1
    iget-object v4, v2, Lcom/android/mms/ui/DeliveryReportItem;->date:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/mms/ui/DeliveryReportItem;->date:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f09016e

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/mms/ui/DeliveryReportItem;->date:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 296
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/android/mms/ui/DeliveryReportItem;
    :cond_2
    return-object v3
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 301
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 303
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 308
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 31
    .parameter "savedInstanceState"

    .prologue
    .line 120
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsViewActivity;->requestWindowFeature(I)Z

    .line 121
    invoke-super/range {p0 .. p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    sget-object v2, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    const v3, 0x7f0900b2

    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/android/mms/util/CommonActivityLayout;->createSimpleTextHeaderActivityLayout(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;II)Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v15

    .line 125
    .local v15, controller:Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    invoke-virtual {v15}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getActivityContentView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsViewActivity;->setContentView(Landroid/view/View;)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RecipientsViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 130
    .local v18, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RecipientsViewActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->setRoundedCorner(Landroid/view/View;)V

    .line 133
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RecipientsViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RecipientsViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 138
    :cond_0
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 139
    .local v11, bundle:Landroid/os/Bundle;
    if-eqz v11, :cond_f

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RecipientsViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    .line 142
    .local v14, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v12

    .line 143
    .local v12, cache:Lcom/android/mms/util/ContactNameCache;
    const-string v2, "To"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 144
    .local v28, sTo:[Ljava/lang/String;
    const-string v2, "Cc"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 145
    .local v23, sCc:[Ljava/lang/String;
    const-string v2, "Bcc"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 147
    .local v22, sBcc:[Ljava/lang/String;
    const-string v2, "Id"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 148
    .local v24, sId:[Ljava/lang/String;
    const-string v2, "IsSms"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 150
    .local v9, bIsSms:Z
    const v2, 0x7f0900ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 151
    .local v27, sPrefix_To:Ljava/lang/String;
    const v2, 0x7f0901c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 152
    .local v26, sPrefix_Cc:Ljava/lang/String;
    const v2, 0x7f0900bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 153
    .local v25, sPrefix_Bcc:Ljava/lang/String;
    const/16 v17, 0x0

    .line 156
    .local v17, i:I
    const/16 v20, 0x0

    .line 158
    .local v20, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    if-nez v9, :cond_1

    .line 159
    invoke-static {}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportItems2()Ljava/util/List;

    move-result-object v20

    .line 164
    :cond_1
    if-nez v28, :cond_6

    const/16 v30, 0x0

    .line 165
    .local v30, toListLength:I
    :goto_0
    if-nez v23, :cond_7

    const/4 v13, 0x0

    .line 166
    .local v13, ccListLength:I
    :goto_1
    if-nez v22, :cond_8

    const/4 v10, 0x0

    .line 167
    .local v10, bccListLength:I
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportShowBccRecipientStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    add-int v2, v30, v13

    add-int/2addr v2, v10

    new-array v2, v2, [Z

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/RecipientsViewActivity;->mSingleLine:[Z

    .line 169
    :cond_2
    if-eqz v28, :cond_a

    .line 171
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportShowBccRecipientStatus()Z

    move-result v2

    if-nez v2, :cond_3

    .line 172
    move-object/from16 v0, v28

    array-length v2, v0

    new-array v2, v2, [Z

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/RecipientsViewActivity;->mSingleLine:[Z

    .line 173
    :cond_3
    const/16 v17, 0x0

    :goto_3
    move-object/from16 v0, v28

    array-length v2, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_a

    .line 175
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v19, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    aget-object v2, v28, v17

    invoke-virtual {v12, v14, v2}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 177
    .local v21, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/RecipientsViewActivity;->mSingleLine:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v17

    .line 181
    if-eqz v9, :cond_9

    .line 182
    aget-object v2, v24, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v14, v2, v3}, Lcom/android/mms/ui/DeliveryReportActivity;->setQueryInfo(Landroid/content/Context;J)V

    .line 183
    const-string v2, "sms"

    invoke-static {v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getReportItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    .line 184
    if-eqz v20, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 185
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/DeliveryReportItem;

    iget-object v0, v2, Lcom/android/mms/ui/DeliveryReportItem;->status:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 186
    .local v29, status:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/DeliveryReportItem;

    iget-object v0, v2, Lcom/android/mms/ui/DeliveryReportItem;->date:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 187
    .local v16, date1:Ljava/lang/String;
    if-eqz v29, :cond_4

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/RecipientsViewActivity;->mStatusDate:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_4
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/RecipientsViewActivity;->mSingleLine:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v17

    .line 206
    .end local v16           #date1:Ljava/lang/String;
    .end local v29           #status:Ljava/lang/String;
    :cond_5
    :goto_4
    const-string v2, "Recipients"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/RecipientsViewActivity;->list:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 164
    .end local v10           #bccListLength:I
    .end local v13           #ccListLength:I
    .end local v19           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21           #name:Ljava/lang/String;
    .end local v30           #toListLength:I
    :cond_6
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v30, v0

    goto/16 :goto_0

    .line 165
    .restart local v30       #toListLength:I
    :cond_7
    move-object/from16 v0, v23

    array-length v13, v0

    goto/16 :goto_1

    .line 166
    .restart local v13       #ccListLength:I
    :cond_8
    move-object/from16 v0, v22

    array-length v10, v0

    goto/16 :goto_2

    .line 195
    .restart local v10       #bccListLength:I
    .restart local v19       #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21       #name:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/RecipientsViewActivity;->mStatusDate:Ljava/util/ArrayList;

    const/4 v3, 0x0

    aget-object v4, v28, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3, v4}, Lcom/android/mms/ui/RecipientsViewActivity;->appendStatusDate(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    if-eqz v20, :cond_5

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/DeliveryReportItem;

    iget-object v2, v2, Lcom/android/mms/ui/DeliveryReportItem;->date:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/DeliveryReportItem;

    iget-object v2, v2, Lcom/android/mms/ui/DeliveryReportItem;->date:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/RecipientsViewActivity;->mSingleLine:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v17

    goto :goto_4

    .line 212
    .end local v19           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21           #name:Ljava/lang/String;
    :cond_a
    if-eqz v23, :cond_c

    .line 214
    const/16 v17, 0x0

    .line 215
    const/16 v17, 0x0

    :goto_5
    move/from16 v0, v17

    if-ge v0, v13, :cond_c

    .line 217
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 218
    .restart local v19       #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    aget-object v2, v23, v17

    invoke-virtual {v12, v14, v2}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 220
    .restart local v21       #name:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportShowBccRecipientStatus()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/RecipientsViewActivity;->mSingleLine:[Z

    add-int v3, v30, v17

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/RecipientsViewActivity;->mStatusDate:Ljava/util/ArrayList;

    const/4 v3, 0x0

    aget-object v4, v23, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3, v4}, Lcom/android/mms/ui/RecipientsViewActivity;->appendStatusDate(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    if-eqz v20, :cond_b

    add-int v2, v30, v17

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/DeliveryReportItem;

    iget-object v2, v2, Lcom/android/mms/ui/DeliveryReportItem;->date:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/RecipientsViewActivity;->mSingleLine:[Z

    add-int v3, v30, v17

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 229
    :cond_b
    const-string v2, "Recipients"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/RecipientsViewActivity;->list:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 235
    .end local v19           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21           #name:Ljava/lang/String;
    :cond_c
    if-eqz v22, :cond_e

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportShowBccRecipientStatus()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 237
    const/16 v17, 0x0

    .line 238
    const/16 v17, 0x0

    :goto_6
    move/from16 v0, v17

    if-ge v0, v10, :cond_e

    .line 240
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 241
    .restart local v19       #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    aget-object v2, v22, v17

    invoke-virtual {v12, v14, v2}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 243
    .restart local v21       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/RecipientsViewActivity;->mSingleLine:[Z

    add-int v3, v30, v13

    add-int v3, v3, v17

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/RecipientsViewActivity;->mStatusDate:Ljava/util/ArrayList;

    const/4 v3, 0x0

    aget-object v4, v22, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3, v4}, Lcom/android/mms/ui/RecipientsViewActivity;->appendStatusDate(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    if-eqz v20, :cond_d

    add-int v2, v30, v17

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/DeliveryReportItem;

    iget-object v2, v2, Lcom/android/mms/ui/DeliveryReportItem;->date:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/RecipientsViewActivity;->mSingleLine:[Z

    add-int v3, v30, v13

    add-int v3, v3, v17

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 250
    :cond_d
    const-string v2, "Recipients"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/RecipientsViewActivity;->list:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 257
    .end local v19           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21           #name:Ljava/lang/String;
    :cond_e
    new-instance v2, Lcom/android/mms/ui/RecipientsViewActivity$RecipientsListAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/RecipientsViewActivity;->list:Ljava/util/ArrayList;

    const v6, 0x7f030010

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Recipients"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    new-array v8, v3, [I

    const/4 v3, 0x0

    const v4, 0x7f0e0052

    aput v4, v8, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/RecipientsViewActivity$RecipientsListAdapter;-><init>(Lcom/android/mms/ui/RecipientsViewActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/RecipientsViewActivity;->mRecipients:Landroid/widget/SimpleAdapter;

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/RecipientsViewActivity;->mRecipients:Landroid/widget/SimpleAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsViewActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 265
    .end local v9           #bIsSms:Z
    .end local v10           #bccListLength:I
    .end local v12           #cache:Lcom/android/mms/util/ContactNameCache;
    .end local v13           #ccListLength:I
    .end local v14           #context:Landroid/content/Context;
    .end local v17           #i:I
    .end local v20           #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    .end local v22           #sBcc:[Ljava/lang/String;
    .end local v23           #sCc:[Ljava/lang/String;
    .end local v24           #sId:[Ljava/lang/String;
    .end local v25           #sPrefix_Bcc:Ljava/lang/String;
    .end local v26           #sPrefix_Cc:Ljava/lang/String;
    .end local v27           #sPrefix_To:Ljava/lang/String;
    .end local v28           #sTo:[Ljava/lang/String;
    .end local v30           #toListLength:I
    :cond_f
    return-void
.end method

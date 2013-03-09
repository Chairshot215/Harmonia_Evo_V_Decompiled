.class Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonClickListener"
.end annotation


# instance fields
.field private clickCount:I

.field private index:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 3297
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3291
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->clickCount:I

    .line 3297
    return-void
.end method

.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 1
    .parameter
    .parameter "i"

    .prologue
    .line 3293
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3291
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->clickCount:I

    .line 3294
    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->index:I

    .line 3295
    return-void
.end method

.method static synthetic access$6010(Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 3289
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->clickCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->clickCount:I

    return v0
.end method

.method static synthetic access$6300(Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3289
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->index:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3304
    iget v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->clickCount:I

    if-lez v12, :cond_0

    .line 3556
    :goto_0
    return-void

    .line 3307
    :cond_0
    iget v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->clickCount:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->clickCount:I

    .line 3310
    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v12

    iget v13, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->index:I

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/RecipientList;->findName(I)Ljava/lang/String;

    move-result-object v5

    .line 3311
    .local v5, ContactName:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v12

    iget v13, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->index:I

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/RecipientList;->findNumber(I)Ljava/lang/String;

    move-result-object v4

    .line 3312
    .local v4, address:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v12

    iget v13, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->index:I

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/RecipientList;->findPersonId(I)J

    move-result-wide v6

    .line 3313
    .local v6, person_id:J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-lez v12, :cond_2

    move v3, v0

    .line 3314
    .local v3, isContact:Z
    :goto_1
    invoke-static {v4}, Lcom/android/mms/ui/RecipientList$Recipient;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    .line 3319
    .local v2, isPhoneNumber:Z
    if-eqz v2, :cond_4

    .line 3320
    if-eqz v3, :cond_3

    .line 3321
    const v8, 0x7f060001

    .line 3334
    .local v8, MenuId:I
    :goto_2
    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v12, v12, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 3335
    .local v11, items:[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 3336
    aget-object v12, v11, v0

    new-array v13, v0, [Ljava/lang/Object;

    aput-object v5, v13, v1

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    .line 3339
    :cond_1
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v9, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3340
    .local v9, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    if-eqz v3, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v12

    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;ZZLjava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v12, v11, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v10

    .line 3555
    .local v10, dlg:Landroid/app/Dialog;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDlgArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6600(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v2           #isPhoneNumber:Z
    .end local v3           #isContact:Z
    .end local v8           #MenuId:I
    .end local v9           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v10           #dlg:Landroid/app/Dialog;
    .end local v11           #items:[Ljava/lang/String;
    :cond_2
    move v3, v1

    .line 3313
    goto :goto_1

    .line 3323
    .restart local v2       #isPhoneNumber:Z
    .restart local v3       #isContact:Z
    :cond_3
    const/high16 v8, 0x7f06

    .restart local v8       #MenuId:I
    goto :goto_2

    .line 3326
    .end local v8           #MenuId:I
    :cond_4
    if-eqz v3, :cond_5

    .line 3327
    const v8, 0x7f060005

    .restart local v8       #MenuId:I
    goto :goto_2

    .line 3329
    .end local v8           #MenuId:I
    :cond_5
    const v8, 0x7f060004

    .restart local v8       #MenuId:I
    goto :goto_2

    .restart local v9       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .restart local v11       #items:[Ljava/lang/String;
    :cond_6
    move-object v0, v4

    .line 3340
    goto :goto_3
.end method

.method public setRecipientIndex(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 3300
    iput p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->index:I

    .line 3301
    return-void
.end method

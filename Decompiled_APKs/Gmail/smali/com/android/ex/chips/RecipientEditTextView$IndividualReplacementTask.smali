.class Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;
.super Landroid/os/AsyncTask;
.source "RecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/RecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndividualReplacementTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 2377
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2377
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2377
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 11
    .parameter "params"

    .prologue
    .line 2384
    const/4 v8, 0x0

    aget-object v6, p1, v8

    check-cast v6, Ljava/util/ArrayList;

    .line 2386
    .local v6, originalRecipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientChip;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2388
    .local v0, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 2389
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/chips/RecipientChip;

    .line 2390
    .local v1, chip:Lcom/android/ex/chips/RecipientChip;
    if-eqz v1, :cond_0

    .line 2391
    iget-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/ex/chips/RecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2388
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2394
    .end local v1           #chip:Lcom/android/ex/chips/RecipientChip;
    :cond_1
    iget-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v8}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getMatchingRecipients(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v2

    .line 2396
    .local v2, entries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/ex/chips/RecipientEntry;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/ex/chips/RecipientChip;

    .line 2397
    .local v7, temp:Lcom/android/ex/chips/RecipientChip;
    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v8}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 2400
    iget-object v9, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v7}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/ex/chips/RecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v10}, Lcom/android/ex/chips/RecipientEditTextView;->access$2100(Lcom/android/ex/chips/RecipientEditTextView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ex/chips/RecipientEntry;

    #calls: Lcom/android/ex/chips/RecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    invoke-static {v9, v8}, Lcom/android/ex/chips/RecipientEditTextView;->access$2200(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    .line 2402
    .local v3, entry:Lcom/android/ex/chips/RecipientEntry;
    if-eqz v3, :cond_2

    .line 2403
    iget-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/ex/chips/RecipientEditTextView;->access$500(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;

    invoke-direct {v9, p0, v7, v3}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;-><init>(Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;Lcom/android/ex/chips/RecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2412
    .end local v3           #entry:Lcom/android/ex/chips/RecipientEntry;
    .end local v7           #temp:Lcom/android/ex/chips/RecipientChip;
    :cond_3
    const/4 v8, 0x0

    return-object v8
.end method

.class Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;
.super Landroid/os/AsyncTask;
.source "RecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/RecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientReplacementTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
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
    .line 2292
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2292
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    return-void
.end method

.method private createFreeChip(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientChip;
    .locals 5
    .parameter "entry"

    .prologue
    const/4 v1, 0x0

    .line 2295
    :try_start_0
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mNoChips:Z
    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->access$1700(Lcom/android/ex/chips/RecipientEditTextView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2301
    :goto_0
    return-object v1

    .line 2298
    :cond_0
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    const/4 v3, -0x1

    const/4 v4, 0x0

    #calls: Lcom/android/ex/chips/RecipientEditTextView;->constructChipSpan(Lcom/android/ex/chips/RecipientEntry;IZ)Lcom/android/ex/chips/RecipientChip;
    invoke-static {v2, p1, v3, v4}, Lcom/android/ex/chips/RecipientEditTextView;->access$1800(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;IZ)Lcom/android/ex/chips/RecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2299
    :catch_0
    move-exception v0

    .line 2300
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2292
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .parameter "params"

    .prologue
    .line 2307
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;
    invoke-static {v10}, Lcom/android/ex/chips/RecipientEditTextView;->access$1900(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 2308
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mIndividualReplacements:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;
    invoke-static {v10}, Lcom/android/ex/chips/RecipientEditTextView;->access$1900(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->cancel(Z)Z

    .line 2313
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2314
    .local v7, originalRecipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientChip;>;"
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v10}, Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/RecipientChip;

    move-result-object v4

    .line 2315
    .local v4, existingChips:[Lcom/android/ex/chips/RecipientChip;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v10, v4

    if-ge v5, v10, :cond_1

    .line 2316
    aget-object v10, v4, v5

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2315
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2318
    :cond_1
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/ex/chips/RecipientEditTextView;->access$2000(Lcom/android/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 2319
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/ex/chips/RecipientEditTextView;->access$2000(Lcom/android/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2321
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2323
    .local v0, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_4

    .line 2324
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/chips/RecipientChip;

    .line 2325
    .local v1, chip:Lcom/android/ex/chips/RecipientChip;
    if-eqz v1, :cond_3

    .line 2326
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/ex/chips/RecipientEditTextView;->createAddressText(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2323
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2329
    .end local v1           #chip:Lcom/android/ex/chips/RecipientChip;
    :cond_4
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v10}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getMatchingRecipients(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v2

    .line 2331
    .local v2, entries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/ex/chips/RecipientEntry;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2332
    .local v8, replacements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/RecipientChip;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/ex/chips/RecipientChip;

    .line 2333
    .local v9, temp:Lcom/android/ex/chips/RecipientChip;
    const/4 v3, 0x0

    .line 2334
    .local v3, entry:Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {v9}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v10}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    .line 2337
    iget-object v11, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v9}, Lcom/android/ex/chips/RecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/ex/chips/RecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v12}, Lcom/android/ex/chips/RecipientEditTextView;->access$2100(Lcom/android/ex/chips/RecipientEditTextView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/ex/chips/RecipientEntry;

    #calls: Lcom/android/ex/chips/RecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    invoke-static {v11, v10}, Lcom/android/ex/chips/RecipientEditTextView;->access$2200(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    .line 2340
    :cond_5
    if-eqz v3, :cond_6

    .line 2341
    invoke-direct {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->createFreeChip(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientChip;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2343
    :cond_6
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2346
    .end local v3           #entry:Lcom/android/ex/chips/RecipientEntry;
    .end local v9           #temp:Lcom/android/ex/chips/RecipientChip;
    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_8

    .line 2347
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #getter for: Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/ex/chips/RecipientEditTextView;->access$500(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;

    invoke-direct {v11, p0, v7, v8}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;-><init>(Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2373
    :cond_8
    const/4 v10, 0x0

    return-object v10
.end method

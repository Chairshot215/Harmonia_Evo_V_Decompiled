.class public Lcom/htc/android/htcime/util/UDBEditor;
.super Lcom/htc/android/htcime/util/IMEWithListViewActivity;
.source "UDBEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;
    }
.end annotation


# static fields
.field public static final INVALID_TICKET:I = -0x1

.field public static final MIN_WORD_LENGTH:I = 0x2

.field public static final NULL_TICKET:I = 0x0

.field public static final POS_FOR_INVALID:I = -0x2

.field public static final POS_FOR_NEWWORD:I = -0x1

.field protected static sXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;


# instance fields
.field final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private delStr:Ljava/lang/String;

.field mCurrEditWordTicket:I

.field protected udbAdapter:Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/htcime/util/UDBEditor;->sXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;-><init>()V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/UDBEditor;->TAG:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lcom/htc/android/htcime/util/UDBEditor;->DEBUG:Z

    .line 55
    iput-object v2, p0, Lcom/htc/android/htcime/util/UDBEditor;->udbAdapter:Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;

    .line 57
    iput v1, p0, Lcom/htc/android/htcime/util/UDBEditor;->mCurrEditWordTicket:I

    .line 59
    iput-object v2, p0, Lcom/htc/android/htcime/util/UDBEditor;->delStr:Ljava/lang/String;

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/util/UDBEditor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/android/htcime/util/UDBEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private editWord(Ljava/lang/String;I)V
    .locals 3
    .parameter "orgWord"
    .parameter "pos"

    .prologue
    .line 340
    const/high16 v1, 0x1230

    add-int/2addr v1, p2

    iput v1, p0, Lcom/htc/android/htcime/util/UDBEditor;->mCurrEditWordTicket:I

    .line 344
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 345
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.htcime"

    const-string v2, "com.htc.android.htcime.ui.AddWordDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v1, "editTicket"

    iget v2, p0, Lcom/htc/android/htcime/util/UDBEditor;->mCurrEditWordTicket:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    const-string v1, "wordPos"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    const-string v1, "orgWord"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/util/UDBEditor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 350
    return-void
.end method

.method private editWordCommit(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "word_pos"
    .parameter "oldWord"
    .parameter "newWord"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 175
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 176
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/util/UDBEditor;->removeWordCommit(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/UDBEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/util/UDBEditor;->showToast(Ljava/lang/String;)V

    .line 197
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 180
    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    iget-object v3, p0, Lcom/htc/android/htcime/util/UDBEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[editWordCommit] user edit word#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (original:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v3, Lcom/htc/android/htcime/util/UDBEditor;->sXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->mdfWord([C[C)I

    move-result v0

    .line 190
    .local v0, ret_val:I
    if-eqz v0, :cond_3

    move v1, v2

    .line 191
    goto :goto_0

    .line 193
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/UDBEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/util/UDBEditor;->showToast(Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/htc/android/htcime/util/UDBEditor;->extractFromUDB()V

    goto :goto_0
.end method

.method private extractFromUDB()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 224
    iget-object v7, p0, Lcom/htc/android/htcime/util/UDBEditor;->udbAdapter:Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;

    if-nez v7, :cond_0

    .line 258
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v7, p0, Lcom/htc/android/htcime/util/UDBEditor;->udbAdapter:Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;

    iget-object v3, v7, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->mItems:Ljava/util/ArrayList;

    .line 228
    .local v3, mWordsAL:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/util/UDBEntry;>;"
    sget-object v7, Lcom/htc/android/htcime/util/UDBEditor;->sXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    invoke-virtual {v7}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->getWordCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v7, v7, 0x40

    add-int/lit8 v7, v7, -0x1

    new-array v0, v7, [C

    .line 229
    .local v0, buff:[C
    sget-object v7, Lcom/htc/android/htcime/util/UDBEditor;->sXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    invoke-virtual {v7, v0}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->getWordAll([C)I

    move-result v5

    .line 230
    .local v5, strLen:I
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0, v9, v5}, Ljava/lang/String;-><init>([CII)V

    .line 233
    .local v6, wordList:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/android/htcime/util/UDBTools;->parse(Ljava/lang/String;)[Lcom/htc/android/htcime/util/UDBEntry;

    move-result-object v1

    .line 235
    .local v1, entries:[Lcom/htc/android/htcime/util/UDBEntry;
    array-length v7, v1

    new-instance v8, Lcom/htc/android/htcime/util/UDBTools$UDBEntryCmp;

    invoke-direct {v8}, Lcom/htc/android/htcime/util/UDBTools$UDBEntryCmp;-><init>()V

    invoke-static {v1, v9, v7, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 245
    new-instance v4, Lcom/htc/android/htcime/util/UDBTools$StringCmp;

    invoke-direct {v4}, Lcom/htc/android/htcime/util/UDBTools$StringCmp;-><init>()V

    .line 246
    .local v4, sc:Lcom/htc/android/htcime/util/UDBTools$StringCmp;
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 247
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v1

    if-ge v2, v7, :cond_2

    .line 250
    sget-object v7, Lcom/htc/android/htcime/util/UDBTools;->HTC_WORDS:[Ljava/lang/String;

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/htc/android/htcime/util/UDBEntry;->word:Ljava/lang/String;

    invoke-static {v7, v8, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v7

    if-gez v7, :cond_1

    .line 251
    aget-object v7, v1, v2

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 257
    :cond_2
    iget-object v7, p0, Lcom/htc/android/htcime/util/UDBEditor;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private newWordCommit(Ljava/lang/String;)Z
    .locals 5
    .parameter "newWord"

    .prologue
    const/4 v1, 0x1

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/htc/android/htcime/util/UDBEditor;->TAG:Ljava/lang/String;

    const-string v3, "[newWordCommit] New word content is empty."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return v1

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/util/UDBEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[newWordCommit] user add new word:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v2, Lcom/htc/android/htcime/util/UDBEditor;->sXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->addWord([CI)I

    move-result v0

    .line 158
    .local v0, ret_val:I
    if-eqz v0, :cond_1

    .line 159
    iget-object v1, p0, Lcom/htc/android/htcime/util/UDBEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[newWordCommit] user add new word:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (failed)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v1, 0x0

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/UDBEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/util/UDBEditor;->showToast(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/htc/android/htcime/util/UDBEditor;->extractFromUDB()V

    goto :goto_0
.end method

.method private removeWordCommit(I)Z
    .locals 5
    .parameter "word_pos"

    .prologue
    .line 204
    iget-object v2, p0, Lcom/htc/android/htcime/util/UDBEditor;->udbAdapter:Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;

    invoke-virtual {v2, p1}, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/util/UDBEntry;

    iget-object v0, v2, Lcom/htc/android/htcime/util/UDBEntry;->word:Ljava/lang/String;

    .line 206
    .local v0, delWord:Ljava/lang/String;
    sget-object v2, Lcom/htc/android/htcime/util/UDBEditor;->sXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->delWord([C)I

    move-result v1

    .line 207
    .local v1, ret_val:I
    if-eqz v1, :cond_0

    .line 208
    iget-object v2, p0, Lcom/htc/android/htcime/util/UDBEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[removeWordCommit] user delete word#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (failed)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v2, 0x0

    .line 217
    :goto_0
    return v2

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/util/UDBEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[removeWordCommit] user delete word#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v2, p0, Lcom/htc/android/htcime/util/UDBEditor;->udbAdapter:Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;

    iget-object v2, v2, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 215
    iget-object v2, p0, Lcom/htc/android/htcime/util/UDBEditor;->udbAdapter:Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->notifyDataSetChanged()V

    .line 217
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected ItemClick(Landroid/view/View;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/android/htcime/util/UDBEditor;->udbAdapter:Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;

    invoke-virtual {v0, p3}, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/util/UDBEntry;

    iget-object v0, v0, Lcom/htc/android/htcime/util/UDBEntry;->word:Ljava/lang/String;

    invoke-direct {p0, v0, p3}, Lcom/htc/android/htcime/util/UDBEditor;->editWord(Ljava/lang/String;I)V

    .line 120
    return-void
.end method

.method protected addNewAction()V
    .locals 2

    .prologue
    .line 87
    const-string v0, ""

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/android/htcime/util/UDBEditor;->editWord(Ljava/lang/String;I)V

    .line 88
    return-void
.end method

.method protected createAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;-><init>(Lcom/htc/android/htcime/util/UDBEditor;)V

    iput-object v0, p0, Lcom/htc/android/htcime/util/UDBEditor;->udbAdapter:Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;

    .line 83
    iget-object v0, p0, Lcom/htc/android/htcime/util/UDBEditor;->udbAdapter:Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;

    return-object v0
.end method

.method protected deleteItemClick(Landroid/view/View;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 123
    const v1, 0x7f0e0014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 124
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 125
    invoke-virtual {p0, v0, p3}, Lcom/htc/android/htcime/util/UDBEditor;->removeWordCommit(Landroid/widget/CheckBox;I)V

    .line 126
    return-void

    .line 124
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected leftCmdBtnAction()V
    .locals 8

    .prologue
    .line 91
    iget-object v5, p0, Lcom/htc/android/htcime/util/UDBEditor;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 112
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v1, 0x0

    .line 96
    .local v1, del_count:I
    iget-object v5, p0, Lcom/htc/android/htcime/util/UDBEditor;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 97
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 99
    .local v4, word_pos:I
    iget-object v5, p0, Lcom/htc/android/htcime/util/UDBEditor;->udbAdapter:Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;

    invoke-virtual {v5, v4}, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/htcime/util/UDBEntry;

    iget-object v0, v5, Lcom/htc/android/htcime/util/UDBEntry;->word:Ljava/lang/String;

    .line 101
    .local v0, delWord:Ljava/lang/String;
    sget-object v5, Lcom/htc/android/htcime/util/UDBEditor;->sXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;->delWord([C)I

    move-result v3

    .line 102
    .local v3, ret_val:I
    if-eqz v3, :cond_1

    .line 103
    iget-object v5, p0, Lcom/htc/android/htcime/util/UDBEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[removeWordsCommit] user delete word#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (failed)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 105
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcime/util/UDBEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[removeWordsCommit] user delete word#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    .end local v0           #delWord:Ljava/lang/String;
    .end local v3           #ret_val:I
    .end local v4           #word_pos:I
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/htcime/util/UDBEditor;->extractFromUDB()V

    .line 111
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/UDBEditor;->normalMode()V

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    .line 356
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 358
    if-nez p3, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "editWord"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 364
    const-string v4, "editTicket"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 365
    .local v0, editTicket:I
    iget v4, p0, Lcom/htc/android/htcime/util/UDBEditor;->mCurrEditWordTicket:I

    if-eq v0, v4, :cond_2

    .line 366
    iget-object v4, p0, Lcom/htc/android/htcime/util/UDBEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Intent:editWord] Invalid editTicket:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    :cond_2
    const-string v4, "wordPos"

    const/4 v5, -0x2

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 371
    .local v3, wordPos:I
    if-gt v6, v3, :cond_3

    iget-object v4, p0, Lcom/htc/android/htcime/util/UDBEditor;->udbAdapter:Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;

    invoke-virtual {v4}, Lcom/htc/android/htcime/util/UDBEditor$EUAdapter;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 372
    :cond_3
    iget-object v4, p0, Lcom/htc/android/htcime/util/UDBEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Intent:editWord] Invalid wordPos:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    :cond_4
    const-string v4, "orgWord"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, orgWord:Ljava/lang/String;
    if-nez v2, :cond_5

    .line 378
    iget-object v4, p0, Lcom/htc/android/htcime/util/UDBEditor;->TAG:Ljava/lang/String;

    const-string v5, "[Intent:editWord] orgWord is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    :cond_5
    const-string v4, "newWord"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, newWord:Ljava/lang/String;
    if-nez v1, :cond_6

    .line 384
    iget-object v4, p0, Lcom/htc/android/htcime/util/UDBEditor;->TAG:Ljava/lang/String;

    const-string v5, "[Intent:editWord] newWord is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    :cond_6
    if-ne v3, v6, :cond_7

    .line 394
    invoke-direct {p0, v1}, Lcom/htc/android/htcime/util/UDBEditor;->newWordCommit(Ljava/lang/String;)Z

    .line 398
    :goto_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/android/htcime/util/UDBEditor;->mCurrEditWordTicket:I

    goto/16 :goto_0

    .line 396
    :cond_7
    invoke-direct {p0, v3, v2, v1}, Lcom/htc/android/htcime/util/UDBEditor;->editWordCommit(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iget v0, p0, Lcom/htc/android/htcime/util/UDBEditor;->currMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 65
    const v0, 0x7f09006f

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/util/UDBEditor;->setHeaderBarText(I)V

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/UDBEditor;->delStr:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 71
    const v0, 0x20c01fc

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/util/UDBEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/UDBEditor;->delStr:Ljava/lang/String;

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/android/htcime/util/UDBEditor;->delStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/util/UDBEditor;->setLeftCmdBarBtnText(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/util/UDBEditor;->setLeftCmdBarBtnEnabled(Z)V

    .line 77
    sget-object v0, Lcom/htc/android/htcime/util/UDBEditor;->sXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    invoke-virtual {p0}, Lcom/htc/android/htcime/util/UDBEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/android/htcime/util/UDBEditor;->sXT9UDBHandler:Lcom/htc/android/htcime/XT9IME/util/XT9UDBHandler;

    .line 79
    :cond_1
    return-void

    .line 67
    :cond_2
    const v0, 0x7f090070

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/util/UDBEditor;->setHeaderBarMultiDelText(I)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->onStart()V

    .line 263
    invoke-direct {p0}, Lcom/htc/android/htcime/util/UDBEditor;->extractFromUDB()V

    .line 264
    return-void
.end method

.method protected removeWordCommit(Landroid/widget/CheckBox;I)V
    .locals 5
    .parameter "cb"
    .parameter "position"

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/htc/android/htcime/util/UDBEditor;->mDeleteList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/util/UDBEditor;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 135
    .local v1, selectedCount:I
    if-lez v1, :cond_2

    const/4 v0, 0x1

    .line 137
    .local v0, enable:Z
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/util/UDBEditor;->delStr:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 138
    const v2, 0x20c01fc

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/util/UDBEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/util/UDBEditor;->delStr:Ljava/lang/String;

    .line 141
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/android/htcime/util/UDBEditor;->delStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/util/UDBEditor;->setLeftCmdBarBtnText(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/util/UDBEditor;->setLeftCmdBarBtnEnabled(Z)V

    .line 143
    return-void

    .line 132
    .end local v0           #enable:Z
    .end local v1           #selectedCount:I
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/util/UDBEditor;->mDeleteList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/android/htcime/util/UDBEditor;->mDeleteList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 135
    .restart local v1       #selectedCount:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected rightCmdBtnAction()V
    .locals 0

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/UDBEditor;->normalMode()V

    .line 116
    return-void
.end method

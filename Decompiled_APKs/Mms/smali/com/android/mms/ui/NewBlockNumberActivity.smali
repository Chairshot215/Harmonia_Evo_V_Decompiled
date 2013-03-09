.class public Lcom/android/mms/ui/NewBlockNumberActivity;
.super Landroid/app/Activity;
.source "NewBlockNumberActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/NewBlockNumberActivity$ContactsAdapter;,
        Lcom/android/mms/ui/NewBlockNumberActivity$MyTokenizer;
    }
.end annotation


# static fields
.field private static final KEY_NUMBER:Ljava/lang/String; = "number"

.field static final LOG_TAG:Ljava/lang/String; = "NewBlockNumber"

.field static final PROJECTION:[Ljava/lang/String; = null

.field private static final REQUEST_CODE_CONTACTS:I = 0xb


# instance fields
.field mCancel:Landroid/widget/Button;

.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mContactPickerBtn:Landroid/widget/ImageButton;

.field mDone:Landroid/widget/Button;

.field private mDoneListener:Landroid/view/View$OnClickListener;

.field private mNumberEdit:Lcom/android/mms/ui/RecipientsEditor;

.field private final mNumberEditKeyListener:Landroid/view/View$OnKeyListener;

.field private mNumberWatcher:Landroid/text/TextWatcher;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/NewBlockNumberActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    new-instance v0, Lcom/android/mms/ui/NewBlockNumberActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NewBlockNumberActivity$2;-><init>(Lcom/android/mms/ui/NewBlockNumberActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mNumberEditKeyListener:Landroid/view/View$OnKeyListener;

    .line 127
    new-instance v0, Lcom/android/mms/ui/NewBlockNumberActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NewBlockNumberActivity$3;-><init>(Lcom/android/mms/ui/NewBlockNumberActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mNumberWatcher:Landroid/text/TextWatcher;

    .line 149
    new-instance v0, Lcom/android/mms/ui/NewBlockNumberActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NewBlockNumberActivity$4;-><init>(Lcom/android/mms/ui/NewBlockNumberActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mDoneListener:Landroid/view/View$OnClickListener;

    .line 158
    new-instance v0, Lcom/android/mms/ui/NewBlockNumberActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NewBlockNumberActivity$5;-><init>(Lcom/android/mms/ui/NewBlockNumberActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/NewBlockNumberActivity;)Lcom/android/mms/ui/RecipientsEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mNumberEdit:Lcom/android/mms/ui/RecipientsEditor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/NewBlockNumberActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/mms/ui/NewBlockNumberActivity;->goToSelectContacts()V

    return-void
.end method

.method private goToSelectContacts()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsEmailAddress()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 210
    :cond_0
    const-string v1, "vnd.android.cursor.dir/phone_v2-and-email_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    :goto_0
    const-string v1, "request"

    const-string v2, "mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/NewBlockNumberActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 217
    return-void

    .line 212
    :cond_1
    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private initWidgets()V
    .locals 2

    .prologue
    .line 180
    const v0, 0x7f0e0018

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewBlockNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientsEditor;

    iput-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mNumberEdit:Lcom/android/mms/ui/RecipientsEditor;

    .line 182
    iget-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mNumberEdit:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mNumberEditKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 183
    iget-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mNumberEdit:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v1, Lcom/android/mms/ui/NewBlockNumberActivity$ContactsAdapter;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewBlockNumberActivity$ContactsAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 184
    iget-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mNumberEdit:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mNumberWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 185
    iget-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mNumberEdit:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 187
    const v0, 0x7f0e0090

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewBlockNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mDone:Landroid/widget/Button;

    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mDone:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mDoneListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v0, 0x7f0e008f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewBlockNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mCancel:Landroid/widget/Button;

    .line 190
    iget-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v0, 0x7f0e008d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewBlockNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mView:Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->setRoundedCorner(Landroid/view/View;)V

    .line 195
    const v0, 0x7f0e0019

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewBlockNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mContactPickerBtn:Landroid/widget/ImageButton;

    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mContactPickerBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mContactPickerBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mContactPickerBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/mms/ui/NewBlockNumberActivity$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewBlockNumberActivity$6;-><init>(Lcom/android/mms/ui/NewBlockNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    :cond_0
    return-void
.end method


# virtual methods
.method insertBlockNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 88
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/mms/ui/NewBlockNumberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/BlockListActivity;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 90
    invoke-virtual {p0}, Lcom/android/mms/ui/NewBlockNumberActivity;->finish()V

    .line 92
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method isNumberBlocked(Ljava/lang/String;)Z
    .locals 9
    .parameter "number"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 72
    sget-object v0, Lcom/android/mms/ui/BlockListActivity;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 73
    .local v6, builder:Landroid/net/Uri$Builder;
    const-string v0, "number"

    invoke-virtual {v6, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 74
    invoke-virtual {p0}, Lcom/android/mms/ui/NewBlockNumberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 75
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 77
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 79
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 82
    :goto_1
    return v0

    :cond_0
    move v0, v8

    .line 77
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move v0, v8

    .line 82
    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v9, 0x0

    .line 266
    const/16 v7, 0xb

    if-ne p1, v7, :cond_5

    const/4 v7, -0x1

    if-ne p2, v7, :cond_5

    .line 270
    if-eqz p3, :cond_5

    .line 271
    const-string v7, "phone_pickmId"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 272
    .local v6, phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v7, "mail_pickmId"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 274
    .local v3, mailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 276
    .local v5, outNumberBuf:Ljava/lang/StringBuffer;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 277
    .local v2, id:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/android/mms/ui/NewBlockNumberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8, v9, v5}, Landroid/provider/HtcUnionContact;->getPersonNameAndNumberFromDevicePhoneId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 280
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/NewBlockNumberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7, v8, v9, v5}, Landroid/provider/HtcUnionContact;->getPersonNameAndNumberFromSIMPhoneId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 285
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 289
    .end local v2           #id:Ljava/lang/Integer;
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 290
    .local v4, outMailBuf:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 291
    .restart local v2       #id:Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/android/mms/ui/NewBlockNumberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8, v9, v4}, Landroid/provider/HtcUnionContact;->getPersonNameAndAddressFromDeviceMailRowId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 292
    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 295
    .end local v2           #id:Ljava/lang/Integer;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, addressList:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/NewBlockNumberActivity;->mNumberEdit:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v7, v0}, Lcom/android/mms/ui/RecipientsEditor;->append(Ljava/lang/CharSequence;)V

    .line 299
    .end local v0           #addressList:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #mailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4           #outMailBuf:Ljava/lang/StringBuffer;
    .end local v5           #outNumberBuf:Ljava/lang/StringBuffer;
    .end local v6           #phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewBlockNumberActivity;->requestWindowFeature(I)Z

    .line 168
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewBlockNumberActivity;->setContentView(I)V

    .line 170
    invoke-direct {p0}, Lcom/android/mms/ui/NewBlockNumberActivity;->initWidgets()V

    .line 171
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 176
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewBlockNumberActivity;->finishActivity(I)V

    .line 177
    return-void
.end method

.method tryInsertBlockedNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-static {p1}, Lcom/android/mms/ui/RecipientList$Recipient;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/NewBlockNumberActivity;->isNumberBlocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const v0, 0x7f090339

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/NewBlockNumberActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/NewBlockNumberActivity;->insertBlockNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/NewBlockNumberActivity;->warningInvalidNumber(Ljava/lang/String;)V

    goto :goto_0
.end method

.method warningInvalidNumber(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    const/4 v2, 0x1

    .line 95
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09011c

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090057

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/NewBlockNumberActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09006c

    new-instance v2, Lcom/android/mms/ui/NewBlockNumberActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/NewBlockNumberActivity$1;-><init>(Lcom/android/mms/ui/NewBlockNumberActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 106
    return-void
.end method

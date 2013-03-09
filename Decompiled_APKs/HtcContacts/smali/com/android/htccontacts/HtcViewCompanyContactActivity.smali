.class public Lcom/android/htccontacts/HtcViewCompanyContactActivity;
.super Lcom/android/htccontacts/HtcViewContactDetail;
.source "HtcViewCompanyContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/HtcViewCompanyContactActivity$RunnableAfterSave;,
        Lcom/android/htccontacts/HtcViewCompanyContactActivity$CreateNewContactThread;
    }
.end annotation


# static fields
.field protected static final DIALOG_SAVING_PROGRESS:I = 0x1000

.field public static EXTRA_COMPANY_DIRECTORY_ELEMENT:Ljava/lang/String; = null

.field private static final MENU_SAVE_TO_CONTACTS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HtcViewCompanyContactActivity"


# instance fields
.field volatile isPause:Z

.field private mAccountName:Ljava/lang/String;

.field private mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

.field mDismissRunnable:Ljava/lang/Runnable;

.field private mEASGalElement:Lcom/htc/android/pim/eas/EASGalElement;

.field protected mHandler:Landroid/os/Handler;

.field mSavingThread:Lcom/android/htccontacts/HtcViewCompanyContactActivity$CreateNewContactThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "EASGalElement"

    sput-object v0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->EXTRA_COMPANY_DIRECTORY_ELEMENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetail;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mHandler:Landroid/os/Handler;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->isPause:Z

    .line 369
    new-instance v0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity$2;-><init>(Lcom/android/htccontacts/HtcViewCompanyContactActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mDismissRunnable:Ljava/lang/Runnable;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/HtcViewCompanyContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->addAndViewContact()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/HtcViewCompanyContactActivity;Landroid/content/Context;Landroid/os/Handler;Z)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->createExchangeContact(Landroid/content/Context;Landroid/os/Handler;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private addAndViewContact()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mSavingThread:Lcom/android/htccontacts/HtcViewCompanyContactActivity$CreateNewContactThread;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$CreateNewContactThread;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity$CreateNewContactThread;-><init>(Lcom/android/htccontacts/HtcViewCompanyContactActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mSavingThread:Lcom/android/htccontacts/HtcViewCompanyContactActivity$CreateNewContactThread;

    .line 363
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->showDialog(I)V

    .line 364
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mSavingThread:Lcom/android/htccontacts/HtcViewCompanyContactActivity$CreateNewContactThread;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity$CreateNewContactThread;->start()V

    .line 367
    :cond_0
    return-void
.end method

.method private buildAddEntry()V
    .locals 2

    .prologue
    .line 172
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 173
    .local v0, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/16 v1, 0x10

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 174
    const v1, 0x7f0a00e1

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 175
    const v1, 0x2080007

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 176
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v1, Lcom/android/htccontacts/HtcViewCompanyContactActivity$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity$1;-><init>(Lcom/android/htccontacts/HtcViewCompanyContactActivity;)V

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->action:Landroid/view/View$OnClickListener;

    .line 184
    return-void
.end method

.method private buildMailAddress(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    const/4 v4, 0x2

    .line 263
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v2, v2, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mEmailAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    new-instance v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 265
    .local v1, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v2, 0x20801c8

    iput v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 266
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 267
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v2, v2, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mEmailAddress:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 268
    const/4 v2, 0x5

    iput v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 269
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v2, v2, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mEmailAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/htccontacts/util/ContactsUtils;->getIntentSendEmail(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 270
    .local v0, intent:Landroid/content/Intent;
    iput-object v0, v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 271
    iput v4, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->type:I

    .line 272
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_0
    return-void
.end method

.method private buildOrganization(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    const/4 v4, 0x1

    .line 277
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v2, v2, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mCompany:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 278
    new-instance v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 279
    .local v1, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Organization;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v2, v2, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mCompany:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v2, v2, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v2, v2, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 287
    const/16 v2, 0x14

    iput v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 288
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 289
    iput v4, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->type:I

    .line 290
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_1
    return-void
.end method

.method private buildPhoneEntry(Ljava/util/ArrayList;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    const v10, 0x7f0a0171

    const/high16 v9, 0x1080

    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 187
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v2, v2, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mMobilePhone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 189
    new-instance v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 190
    .local v1, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v2, 0x20801cc

    iput v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 191
    invoke-virtual {p0, v10}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 192
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v2, v2, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mMobilePhone:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 193
    iput v8, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v4, v4, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mMobilePhone:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 195
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 196
    iput-object v0, v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 200
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTabletPhoneEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    iput v6, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 202
    iput-boolean v7, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 204
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v2, v2, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mWorkPhone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 209
    new-instance v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 210
    .restart local v1       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v2, 0x20801d3

    iput v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 211
    invoke-virtual {p0, v10}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 212
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v2, v2, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mWorkPhone:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 213
    iput v8, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v4, v4, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mWorkPhone:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 215
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    iput-object v0, v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 220
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTabletPhoneEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 221
    iput v6, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 222
    iput-boolean v7, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 224
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_3
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v2, v2, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mHomePhone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 229
    new-instance v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 230
    .restart local v1       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v2, 0x20801c9

    iput v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 231
    invoke-virtual {p0, v10}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 232
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v2, v2, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mHomePhone:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 233
    iput v8, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v4, v4, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mHomePhone:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 235
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 236
    iput-object v0, v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 240
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTabletPhoneEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 241
    iput v6, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 242
    iput-boolean v7, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 244
    :cond_4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_5
    return-void
.end method

.method private buildSendMessage(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v1, v1, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mMobilePhone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 251
    .local v0, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v1, 0x20801cf

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 252
    const v1, 0x7f0a0141

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v1, v1, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mMobilePhone:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 254
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 255
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "sms"

    iget-object v4, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v4, v4, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mMobilePhone:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 257
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->type:I

    .line 258
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v0           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_0
    return-void
.end method

.method private createExchangeContact(Landroid/content/Context;Landroid/os/Handler;Z)J
    .locals 6
    .parameter "context"
    .parameter "uiHandler"
    .parameter "isSync"

    .prologue
    .line 416
    const-wide/16 v1, -0x1

    .line 418
    .local v1, id:J
    :try_start_0
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->createNewContactFromCompanyDirectory()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v1

    .line 433
    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_1

    if-eqz p3, :cond_1

    .line 434
    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->syncImmediately(Landroid/content/Context;)V

    .line 437
    :cond_1
    return-wide v1

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    new-instance v3, Lcom/android/htccontacts/HtcViewCompanyContactActivity$3;

    invoke-direct {v3, p0, p1}, Lcom/android/htccontacts/HtcViewCompanyContactActivity$3;-><init>(Lcom/android/htccontacts/HtcViewCompanyContactActivity;Landroid/content/Context;)V

    .line 425
    .local v3, r:Ljava/lang/Runnable;
    if-eqz p2, :cond_0

    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 426
    invoke-virtual {p2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 428
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v3           #r:Ljava/lang/Runnable;
    :catch_1
    move-exception v0

    .line 429
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v4, "HtcViewCompanyContactActivity"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 430
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_2
    move-exception v0

    .line 431
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "HtcViewCompanyContactActivity"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createNewContactFromCompanyDirectory()J
    .locals 25

    .prologue
    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 446
    .local v19, resolver:Landroid/content/ContentResolver;
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 447
    .local v21, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v15, v0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mDisplayName:Ljava/lang/String;

    .line 448
    .local v15, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mFirstName:Ljava/lang/String;

    .line 449
    .local v7, firstname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mLastName:Ljava/lang/String;

    .line 450
    .local v11, lastname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v14, v0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mMobilePhone:Ljava/lang/String;

    .line 451
    .local v14, mobilePhone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mWorkPhone:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 452
    .local v22, workPhone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mHomePhone:Ljava/lang/String;

    .line 453
    .local v8, homePhone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v13, v0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mEmailAddress:Ljava/lang/String;

    .line 454
    .local v13, mail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mCompany:Ljava/lang/String;

    .line 455
    .local v4, company:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->mTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 460
    .local v20, title:Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v18, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v16, 0x0

    .line 462
    .local v16, operation:Landroid/content/ContentProviderOperation;
    const/16 v17, 0x0

    .line 464
    .local v17, operationCountsIdx:I
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    .line 465
    sget-object v23, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 466
    .local v3, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v23, "account_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mAccountName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v23, "account_type"

    const-string v24, "com.htc.android.mail.eas"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 469
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    .line 470
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    .line 474
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 475
    if-eqz v15, :cond_0

    invoke-static {v15}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 476
    const-string v23, "data1"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_0
    if-eqz v7, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 479
    const-string v23, "data2"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_1
    if-eqz v11, :cond_2

    invoke-static {v11}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 482
    const-string v23, "data3"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_2
    const-string v23, "mimetype"

    const-string v24, "vnd.android.cursor.item/name"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 487
    const-string v23, "raw_contact_id"

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 488
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    .line 489
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    move-object v5, v14

    .line 492
    .local v5, data:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 493
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    .line 494
    const-string v23, "data1"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v23, "data2"

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    const-string v23, "mimetype"

    const-string v24, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 498
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 499
    const-string v23, "raw_contact_id"

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 500
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    .line 501
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_3
    move-object v5, v8

    .line 505
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 506
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    .line 507
    const-string v23, "data1"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v23, "data2"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 509
    const-string v23, "mimetype"

    const-string v24, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 511
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 512
    const-string v23, "raw_contact_id"

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 513
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    .line 514
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_4
    move-object/from16 v5, v22

    .line 518
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 519
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    .line 520
    const-string v23, "data1"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v23, "data2"

    const/16 v24, 0x3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 522
    const-string v23, "mimetype"

    const-string v24, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 524
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 525
    const-string v23, "raw_contact_id"

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 526
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    .line 527
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_5
    move-object v5, v13

    .line 532
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_6

    invoke-static {v5}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 533
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    .line 534
    const-string v23, "data1"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v23, "data2"

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 536
    const-string v23, "mimetype"

    const-string v24, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 538
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 539
    const-string v23, "raw_contact_id"

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 540
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    .line 541
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 545
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    .line 546
    const-string v23, "data1"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v23, "data4"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v23, "data2"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 549
    const-string v23, "mimetype"

    const-string v24, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 551
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 552
    const-string v23, "raw_contact_id"

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 553
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    .line 554
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    :cond_7
    const-wide/16 v9, 0x0

    .line 559
    .local v9, id:J
    :try_start_0
    const-string v23, "com.android.contacts"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v12

    .line 560
    .local v12, mResult:[Landroid/content/ContentProviderResult;
    if-eqz v12, :cond_8

    const/16 v23, 0x0

    aget-object v23, v12, v23

    if-eqz v23, :cond_8

    .line 561
    const/16 v23, 0x0

    aget-object v23, v12, v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v9

    .line 569
    .end local v12           #mResult:[Landroid/content/ContentProviderResult;
    :cond_8
    :goto_0
    return-wide v9

    .line 563
    :catch_0
    move-exception v6

    .line 564
    .local v6, e:Landroid/os/RemoteException;
    const-string v23, "HtcViewCompanyContactActivity"

    const-string v24, "InsertColleageToContactTask: "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 565
    .end local v6           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 566
    .local v6, e:Landroid/content/OperationApplicationException;
    const-string v23, "HtcViewCompanyContactActivity"

    const-string v24, "InsertColleageToContactTask: "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private syncImmediately(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 573
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.eas.syncContacts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 575
    return-void
.end method


# virtual methods
.method protected buildEntries()V
    .locals 4

    .prologue
    .line 142
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->buildAddEntry()V

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, haveCommunicationItem:Z
    invoke-direct {p0, v0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->buildPhoneEntry(Ljava/util/ArrayList;)V

    .line 151
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->isSupportComposeMessage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    invoke-direct {p0, v0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->buildSendMessage(Ljava/util/ArrayList;)V

    .line 154
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->buildMailAddress(Ljava/util/ArrayList;)V

    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v1, 0x1

    .line 156
    :goto_0
    if-eqz v1, :cond_1

    .line 158
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    const v3, 0x7f0a01b4

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->newLabelEntry(Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 160
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 163
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->buildOrganization(Ljava/util/ArrayList;)V

    .line 164
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 165
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    const v3, 0x7f0a01b1

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->newLabelEntry(Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 167
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 169
    :cond_2
    return-void

    .line 155
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected callDefaultNumber()Z
    .locals 6

    .prologue
    .line 592
    const/4 v2, 0x0

    .line 593
    .local v2, result:Z
    iget-object v3, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    invoke-virtual {v3}, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;->getDefaultPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, defaultNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 595
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 597
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1080

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 599
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 600
    const/4 v2, 0x1

    .line 602
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return v2
.end method

.method protected clearUI()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method protected dataChanged()V
    .locals 3

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->buildEntries()V

    .line 627
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    if-nez v0, :cond_0

    .line 628
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    .line 632
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 633
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidate()V

    .line 634
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->setSections(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected getEditIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetail;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->EXTRA_COMPANY_DIRECTORY_ELEMENT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 83
    .local v1, parcle:Landroid/os/Parcelable;
    const-string v2, "account_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mAccountName:Ljava/lang/String;

    .line 84
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/android/pim/eas/EASGalElement;

    if-eqz v2, :cond_0

    .line 85
    check-cast v1, Lcom/htc/android/pim/eas/EASGalElement;

    .end local v1           #parcle:Landroid/os/Parcelable;
    iput-object v1, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mEASGalElement:Lcom/htc/android/pim/eas/EASGalElement;

    .line 90
    :goto_0
    new-instance v2, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mEASGalElement:Lcom/htc/android/pim/eas/EASGalElement;

    iget-object v4, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;-><init>(Lcom/htc/android/pim/eas/EASGalElement;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    .line 92
    return-void

    .line 87
    .restart local v1       #parcle:Landroid/os/Parcelable;
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, dialog:Landroid/app/Dialog;
    const/16 v2, 0x1000

    if-ne v2, p1, :cond_0

    .line 127
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 128
    .local v0, d:Lcom/htc/app/HtcProgressDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    const v2, 0x7f0a0128

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 131
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 132
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 133
    move-object v1, v0

    .line 135
    .end local v0           #d:Lcom/htc/app/HtcProgressDialog;
    :cond_0
    return-object v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 580
    invoke-super {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetail;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 582
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->onDestroy()V

    .line 114
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 332
    const/4 v1, 0x5

    if-ne v1, p1, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->getSelectedItemPosition()I

    move-result v0

    .line 334
    .local v0, selected:I
    if-nez v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->callDefaultNumber()Z

    .line 337
    const/4 v1, 0x1

    .line 340
    .end local v0           #selected:I
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 316
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-static {v2, p3}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getEntry(Ljava/util/ArrayList;I)Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 317
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v0, :cond_0

    .line 318
    iget v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 319
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->addAndViewContact()V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 323
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 607
    invoke-super {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetail;->onNewIntent(Landroid/content/Intent;)V

    .line 608
    if-eqz p1, :cond_0

    .line 609
    sget-object v1, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->EXTRA_COMPANY_DIRECTORY_ELEMENT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 610
    .local v0, parcle:Landroid/os/Parcelable;
    const-string v1, "account_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mAccountName:Ljava/lang/String;

    .line 611
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/android/pim/eas/EASGalElement;

    if-eqz v1, :cond_1

    .line 612
    check-cast v0, Lcom/htc/android/pim/eas/EASGalElement;

    .end local v0           #parcle:Landroid/os/Parcelable;
    iput-object v0, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mEASGalElement:Lcom/htc/android/pim/eas/EASGalElement;

    .line 618
    new-instance v1, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    iget-object v2, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mEASGalElement:Lcom/htc/android/pim/eas/EASGalElement;

    iget-object v3, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;-><init>(Lcom/htc/android/pim/eas/EASGalElement;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 614
    .restart local v0       #parcle:Landroid/os/Parcelable;
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 346
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 352
    invoke-super {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetail;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 348
    :pswitch_0
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[HtcViewCompanyContactActivity]Save to contacts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v0, 0x1

    goto :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->onPause()V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->isPause:Z

    .line 119
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->onResume()V

    .line 97
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    if-nez v1, :cond_0

    .line 98
    const-string v1, "no contact information"

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->error(Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->isPause:Z

    .line 102
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    const v2, 0x7f0a00ef

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V

    .line 105
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 106
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getLinkView()Lcom/htc/widget/HeaderBarImage;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->dataChanged()V

    goto :goto_0
.end method

.method protected refreshTitle()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoCompanyDirectory;

    const v1, 0x7f0a00ef

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.class public Lcom/htc/android/mail/FetchTypeSettings2;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "FetchTypeSettings2.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FetchTypeSettings"


# instance fields
.field private final AMOUNT_BASE:I

.field private final DAY_BASE:I

.field fetchMailDays:I

.field fetchMailNum:I

.field item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

.field private mAccountId:J

.field private mByAmountCheckBox:Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

.field private mByDayCheckBox:Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

.field private mFetchMailType:I

.field newAmount:I

.field newDay:I

.field newType:I

.field oriType:I

.field title:Lcom/htc/preference/HtcPreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/FetchTypeSettings2;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mAccountId:J

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->DAY_BASE:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->AMOUNT_BASE:I

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    iput-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/FetchTypeSettings2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/android/mail/FetchTypeSettings2;->updateAccount()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/mail/FetchTypeSettings2;)Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mByDayCheckBox:Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/FetchTypeSettings2;)Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mByAmountCheckBox:Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/htc/android/mail/FetchTypeSettings2;->DEBUG:Z

    return v0
.end method

.method private bind()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/htc/android/mail/FetchTypeSettings2;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 114
    .local v2, uri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mAccountId:J

    .line 115
    sget-boolean v3, Lcom/htc/android/mail/FetchTypeSettings2;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "FetchTypeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAccountId>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mAccountId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    iget-wide v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mAccountId:J

    invoke-static {v3, v4}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 118
    .local v1, account:Lcom/htc/android/mail/Account;
    if-nez v1, :cond_1

    .line 233
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Account;->getFetchMailType(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mFetchMailType:I

    .line 121
    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Account;->getFetchMailNumIndex(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->fetchMailNum:I

    .line 122
    invoke-virtual {v1, p0}, Lcom/htc/android/mail/Account;->getFetchMailDaysIndex(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->fetchMailDays:I

    .line 123
    sget-boolean v3, Lcom/htc/android/mail/FetchTypeSettings2;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "FetchTypeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mFetchMailType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/mail/FetchTypeSettings2;->fetchMailNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/mail/FetchTypeSettings2;->fetchMailDays:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/mail/FetchTypeSettings2;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 127
    .local v0, HtcPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v3, "fetch_item"

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->title:Lcom/htc/preference/HtcPreferenceCategory;

    .line 128
    const-string v3, "account_detail_fetch_mail_by_amount_checkbox"

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    iput-object v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mByAmountCheckBox:Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    .line 131
    const-string v3, "account_detail_fetch_mail_by_day_checkbox"

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    iput-object v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mByDayCheckBox:Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    .line 133
    iget-object v4, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    const-string v3, "item_0"

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aput-object v3, v4, v7

    .line 134
    iget-object v4, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    const-string v3, "item_1"

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aput-object v3, v4, v8

    .line 135
    iget-object v4, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    const-string v3, "item_2"

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aput-object v3, v4, v9

    .line 136
    iget-object v4, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    const-string v3, "item_3"

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aput-object v3, v4, v10

    .line 137
    iget-object v4, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    const-string v3, "item_4"

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aput-object v3, v4, v11

    .line 138
    iget-object v4, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    const/4 v5, 0x5

    const-string v3, "item_5"

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aput-object v3, v4, v5

    .line 141
    iget-object v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mByAmountCheckBox:Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    new-instance v4, Lcom/htc/android/mail/FetchTypeSettings2$2;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/FetchTypeSettings2$2;-><init>(Lcom/htc/android/mail/FetchTypeSettings2;)V

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 155
    iget-object v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mByDayCheckBox:Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    new-instance v4, Lcom/htc/android/mail/FetchTypeSettings2$3;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/FetchTypeSettings2$3;-><init>(Lcom/htc/android/mail/FetchTypeSettings2;)V

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 169
    iget-object v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aget-object v3, v3, v7

    new-instance v4, Lcom/htc/android/mail/FetchTypeSettings2$4;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/FetchTypeSettings2$4;-><init>(Lcom/htc/android/mail/FetchTypeSettings2;)V

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 175
    iget-object v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aget-object v3, v3, v8

    new-instance v4, Lcom/htc/android/mail/FetchTypeSettings2$5;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/FetchTypeSettings2$5;-><init>(Lcom/htc/android/mail/FetchTypeSettings2;)V

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 181
    iget-object v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aget-object v3, v3, v9

    new-instance v4, Lcom/htc/android/mail/FetchTypeSettings2$6;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/FetchTypeSettings2$6;-><init>(Lcom/htc/android/mail/FetchTypeSettings2;)V

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 187
    iget-object v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aget-object v3, v3, v10

    new-instance v4, Lcom/htc/android/mail/FetchTypeSettings2$7;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/FetchTypeSettings2$7;-><init>(Lcom/htc/android/mail/FetchTypeSettings2;)V

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 193
    iget-object v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aget-object v3, v3, v11

    new-instance v4, Lcom/htc/android/mail/FetchTypeSettings2$8;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/FetchTypeSettings2$8;-><init>(Lcom/htc/android/mail/FetchTypeSettings2;)V

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 199
    iget-object v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    new-instance v4, Lcom/htc/android/mail/FetchTypeSettings2$9;

    invoke-direct {v4, p0}, Lcom/htc/android/mail/FetchTypeSettings2$9;-><init>(Lcom/htc/android/mail/FetchTypeSettings2;)V

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 212
    iget v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mFetchMailType:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_4

    .line 213
    sget-boolean v3, Lcom/htc/android/mail/FetchTypeSettings2;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "FetchTypeSettings"

    const-string v4, "create amount>"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_3
    iget-object v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mByAmountCheckBox:Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    invoke-virtual {v3, v8}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setChecked(Z)V

    .line 215
    iget-object v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mByDayCheckBox:Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    invoke-virtual {v3, v7}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setChecked(Z)V

    .line 216
    iput v7, p0, Lcom/htc/android/mail/FetchTypeSettings2;->oriType:I

    .line 217
    iput v7, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newType:I

    .line 218
    iget v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->fetchMailNum:I

    iput v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newAmount:I

    .line 219
    iget v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->fetchMailDays:I

    iput v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newDay:I

    .line 220
    iget v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->oriType:I

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/FetchTypeSettings2;->setupItem(I)V

    .line 221
    iget v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newAmount:I

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/FetchTypeSettings2;->checkItem(I)V

    goto/16 :goto_0

    .line 223
    :cond_4
    sget-boolean v3, Lcom/htc/android/mail/FetchTypeSettings2;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "FetchTypeSettings"

    const-string v4, "create day>"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_5
    iget-object v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mByDayCheckBox:Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    invoke-virtual {v3, v8}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setChecked(Z)V

    .line 225
    iget-object v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mByAmountCheckBox:Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    invoke-virtual {v3, v7}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setChecked(Z)V

    .line 226
    iput v8, p0, Lcom/htc/android/mail/FetchTypeSettings2;->oriType:I

    .line 227
    iput v8, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newType:I

    .line 228
    iget v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->fetchMailDays:I

    iput v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newDay:I

    .line 229
    iget v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->fetchMailNum:I

    iput v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newAmount:I

    .line 230
    iget v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->oriType:I

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/FetchTypeSettings2;->setupItem(I)V

    .line 231
    iget v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newDay:I

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/FetchTypeSettings2;->checkItem(I)V

    goto/16 :goto_0
.end method

.method private final gatherValues()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 270
    iget-wide v2, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mAccountId:J

    invoke-static {v2, v3}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 273
    .local v0, account:Lcom/htc/android/mail/Account;
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/FetchTypeSettings2;->setResult(I)V

    .line 274
    iget v2, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newType:I

    iget v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->oriType:I

    if-eq v2, v3, :cond_2

    .line 275
    iget v2, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newType:I

    mul-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v2, 0x2

    .line 276
    .local v1, setType:I
    invoke-virtual {p0, v5}, Lcom/htc/android/mail/FetchTypeSettings2;->setResult(I)V

    .line 282
    :goto_0
    sget-boolean v2, Lcom/htc/android/mail/FetchTypeSettings2;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FetchTypeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gatherValues>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_0
    invoke-virtual {v0, p0, v1}, Lcom/htc/android/mail/Account;->setFetchMailType(Landroid/content/Context;I)V

    .line 284
    iget v2, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newType:I

    if-nez v2, :cond_3

    .line 285
    iget v2, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newAmount:I

    invoke-virtual {v0, p0, v2}, Lcom/htc/android/mail/Account;->setFetchMailNumIndex(Landroid/content/Context;I)V

    .line 286
    iget v2, p0, Lcom/htc/android/mail/FetchTypeSettings2;->fetchMailDays:I

    invoke-virtual {v0, p0, v2}, Lcom/htc/android/mail/Account;->setFetchMailDaysIndex(Landroid/content/Context;I)V

    .line 287
    iget v2, p0, Lcom/htc/android/mail/FetchTypeSettings2;->fetchMailNum:I

    iget v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newAmount:I

    if-eq v2, v3, :cond_1

    .line 288
    invoke-virtual {p0, v5}, Lcom/htc/android/mail/FetchTypeSettings2;->setResult(I)V

    .line 299
    :cond_1
    :goto_1
    return-void

    .line 279
    .end local v1           #setType:I
    :cond_2
    iget v2, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newType:I

    mul-int/lit8 v1, v2, 0x1

    .restart local v1       #setType:I
    goto :goto_0

    .line 292
    :cond_3
    iget v2, p0, Lcom/htc/android/mail/FetchTypeSettings2;->fetchMailNum:I

    invoke-virtual {v0, p0, v2}, Lcom/htc/android/mail/Account;->setFetchMailNumIndex(Landroid/content/Context;I)V

    .line 293
    iget v2, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newDay:I

    invoke-virtual {v0, p0, v2}, Lcom/htc/android/mail/Account;->setFetchMailDaysIndex(Landroid/content/Context;I)V

    .line 295
    iget v2, p0, Lcom/htc/android/mail/FetchTypeSettings2;->fetchMailDays:I

    iget v3, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newDay:I

    if-eq v2, v3, :cond_1

    .line 296
    invoke-virtual {p0, v5}, Lcom/htc/android/mail/FetchTypeSettings2;->setResult(I)V

    goto :goto_1
.end method

.method private final updateAccount()V
    .locals 3

    .prologue
    .line 103
    iget-wide v1, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mAccountId:J

    invoke-static {v1, v2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 104
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/FetchTypeSettings2;->gatherValues()V

    .line 106
    invoke-virtual {v0, p0}, Lcom/htc/android/mail/Account;->commit(Landroid/content/Context;)V

    .line 107
    invoke-static {p0}, Lcom/htc/android/mail/Mail;->setServicesEnabled(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method checkItem(I)V
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x1

    .line 260
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setChecked(Z)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setChecked(Z)V

    .line 263
    iget v1, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newType:I

    if-ne v1, v3, :cond_1

    .line 264
    iput p1, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newDay:I

    .line 267
    :goto_1
    return-void

    .line 266
    :cond_1
    iput p1, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newAmount:I

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/FetchTypeSettings2;->addPreferencesFromResource(I)V

    .line 44
    invoke-direct {p0}, Lcom/htc/android/mail/FetchTypeSettings2;->bind()V

    .line 45
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 90
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/FetchTypeSettings2$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/FetchTypeSettings2$1;-><init>(Lcom/htc/android/mail/FetchTypeSettings2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 86
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "inState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 55
    sget-boolean v0, Lcom/htc/android/mail/FetchTypeSettings2;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FetchTypeSettings"

    const-string v1, "onRestoreInstanceState()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    const-string v0, "newType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newType:I

    .line 57
    const-string v0, "newDay"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newDay:I

    .line 58
    const-string v0, "newAmount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newAmount:I

    .line 60
    iget v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newType:I

    iget v1, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mFetchMailType:I

    if-eq v0, v1, :cond_1

    .line 61
    iget v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newType:I

    if-nez v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mByAmountCheckBox:Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setChecked(Z)V

    .line 63
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mByDayCheckBox:Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setChecked(Z)V

    .line 64
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/FetchTypeSettings2;->setupItem(I)V

    .line 65
    iget v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newAmount:I

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/FetchTypeSettings2;->checkItem(I)V

    .line 74
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    iget v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newType:I

    if-ne v0, v2, :cond_1

    .line 67
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mByDayCheckBox:Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setChecked(Z)V

    .line 68
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->mByAmountCheckBox:Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setChecked(Z)V

    .line 69
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/FetchTypeSettings2;->setupItem(I)V

    .line 70
    iget v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newDay:I

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/FetchTypeSettings2;->checkItem(I)V

    goto :goto_0
.end method

.method protected final onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 80
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 48
    sget-boolean v0, Lcom/htc/android/mail/FetchTypeSettings2;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FetchTypeSettings"

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    const-string v0, "newType"

    iget v1, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    const-string v0, "newDay"

    iget v1, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newDay:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    const-string v0, "newAmount"

    iget v1, p0, Lcom/htc/android/mail/FetchTypeSettings2;->newAmount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method setupItem(I)V
    .locals 6
    .parameter "type"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 236
    packed-switch p1, :pswitch_data_0

    .line 256
    :goto_0
    return-void

    .line 238
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aget-object v0, v0, v1

    const v1, 0x7f0b018d

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setTitle(I)V

    .line 239
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aget-object v0, v0, v2

    const v1, 0x7f0b018e

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setTitle(I)V

    .line 240
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aget-object v0, v0, v3

    const v1, 0x7f0b018f

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setTitle(I)V

    .line 241
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aget-object v0, v0, v4

    const v1, 0x7f0b0190

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setTitle(I)V

    .line 242
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aget-object v0, v0, v5

    const v1, 0x7f0b0191

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setTitle(I)V

    .line 243
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const v1, 0x7f0b0192

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setTitle(I)V

    .line 244
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->title:Lcom/htc/preference/HtcPreferenceCategory;

    const v1, 0x7f0b00c4

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aget-object v0, v0, v1

    const v1, 0x7f0b0187

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setTitle(I)V

    .line 248
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aget-object v0, v0, v2

    const v1, 0x7f0b0188

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setTitle(I)V

    .line 249
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aget-object v0, v0, v3

    const v1, 0x7f0b0189

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setTitle(I)V

    .line 250
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aget-object v0, v0, v4

    const v1, 0x7f0b018a

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setTitle(I)V

    .line 251
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    aget-object v0, v0, v5

    const v1, 0x7f0b018b

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setTitle(I)V

    .line 252
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->item:[Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const v1, 0x7f0b018c

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/ChangeCheckBoxPreference;->setTitle(I)V

    .line 253
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2;->title:Lcom/htc/preference/HtcPreferenceCategory;

    const v1, 0x7f0b00c3

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    goto/16 :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

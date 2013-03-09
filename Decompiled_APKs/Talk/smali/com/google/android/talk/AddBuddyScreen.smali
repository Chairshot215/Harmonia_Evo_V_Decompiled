.class public Lcom/google/android/talk/AddBuddyScreen;
.super Landroid/app/Activity;
.source "AddBuddyScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static sValidator:Lcom/android/common/Rfc822Validator;


# instance fields
.field private mAddressAdapter:Lcom/google/android/talk/EmailAddressAdapter;

.field private mApp:Lcom/google/android/talk/TalkApp;

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mEmailList:Landroid/widget/MultiAutoCompleteTextView;

.field protected final mHandler:Landroid/os/Handler;

.field private mImSession:Lcom/google/android/gtalkservice/IImSession;

.field private mInviteButton:Landroid/view/View;

.field private mInviteText:Landroid/view/View;

.field mKeyHandler:Landroid/view/View$OnKeyListener;

.field private mTabletMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/android/common/Rfc822Validator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/talk/AddBuddyScreen;->sValidator:Lcom/android/common/Rfc822Validator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AddBuddyScreen;->mHandler:Landroid/os/Handler;

    .line 208
    new-instance v0, Lcom/google/android/talk/AddBuddyScreen$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/AddBuddyScreen$2;-><init>(Lcom/google/android/talk/AddBuddyScreen;)V

    iput-object v0, p0, Lcom/google/android/talk/AddBuddyScreen;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 221
    new-instance v0, Lcom/google/android/talk/AddBuddyScreen$3;

    invoke-direct {v0, p0}, Lcom/google/android/talk/AddBuddyScreen$3;-><init>(Lcom/google/android/talk/AddBuddyScreen;)V

    iput-object v0, p0, Lcom/google/android/talk/AddBuddyScreen;->mKeyHandler:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/AddBuddyScreen;Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/AddBuddyScreen;->sessionAvailable(Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V

    return-void
.end method

.method private checkEmailAddress()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 258
    iget-object v3, p0, Lcom/google/android/talk/AddBuddyScreen;->mEmailList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 259
    .local v2, s:Landroid/text/Editable;
    const/4 v1, 0x0

    .line 260
    .local v1, containsEmailAddr:Z
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 261
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, addr:Ljava/lang/String;
    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v4, :cond_3

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v4, :cond_3

    const/4 v1, 0x1

    .line 264
    .end local v0           #addr:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/android/talk/AddBuddyScreen;->mInviteButton:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 265
    iget-object v3, p0, Lcom/google/android/talk/AddBuddyScreen;->mInviteButton:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 267
    :cond_1
    iget-object v3, p0, Lcom/google/android/talk/AddBuddyScreen;->mInviteText:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 268
    iget-object v3, p0, Lcom/google/android/talk/AddBuddyScreen;->mInviteText:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 270
    :cond_2
    return-void

    .line 262
    .restart local v0       #addr:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initView()V
    .locals 7

    .prologue
    const v6, 0x7f100016

    const v5, 0x7f100015

    .line 144
    const v3, 0x7f100018

    invoke-virtual {p0, v3}, Lcom/google/android/talk/AddBuddyScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v3, p0, Lcom/google/android/talk/AddBuddyScreen;->mEmailList:Landroid/widget/MultiAutoCompleteTextView;

    .line 145
    iget-object v3, p0, Lcom/google/android/talk/AddBuddyScreen;->mEmailList:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v4, p0, Lcom/google/android/talk/AddBuddyScreen;->mAddressAdapter:Lcom/google/android/talk/EmailAddressAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    iget-object v3, p0, Lcom/google/android/talk/AddBuddyScreen;->mEmailList:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v4, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v4}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 147
    iget-object v3, p0, Lcom/google/android/talk/AddBuddyScreen;->mEmailList:Landroid/widget/MultiAutoCompleteTextView;

    sget-object v4, Lcom/google/android/talk/AddBuddyScreen;->sValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {v3, v4}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 148
    iget-object v3, p0, Lcom/google/android/talk/AddBuddyScreen;->mEmailList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v3, p0}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v3, p0, Lcom/google/android/talk/AddBuddyScreen;->mEmailList:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v4, p0, Lcom/google/android/talk/AddBuddyScreen;->mKeyHandler:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/widget/MultiAutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/google/android/talk/AddBuddyScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 152
    .local v0, a:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 153
    .local v2, cv:Landroid/view/View;
    :goto_0
    const/4 v1, 0x0

    .line 154
    .local v1, cancelButton:Landroid/view/View;
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 155
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/AddBuddyScreen;->mInviteButton:Landroid/view/View;

    .line 156
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 162
    :goto_1
    iget-object v3, p0, Lcom/google/android/talk/AddBuddyScreen;->mInviteButton:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 163
    iget-object v3, p0, Lcom/google/android/talk/AddBuddyScreen;->mInviteButton:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/talk/AddBuddyScreen;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v3, p0, Lcom/google/android/talk/AddBuddyScreen;->mInviteButton:Landroid/view/View;

    const v4, 0x7f100017

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/AddBuddyScreen;->mInviteText:Landroid/view/View;

    .line 166
    :cond_0
    if-eqz v1, :cond_1

    .line 167
    iget-object v3, p0, Lcom/google/android/talk/AddBuddyScreen;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :cond_1
    iget-object v3, p0, Lcom/google/android/talk/AddBuddyScreen;->mEmailList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/google/android/talk/AddBuddyScreen;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "start_name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void

    .line 152
    .end local v1           #cancelButton:Landroid/view/View;
    .end local v2           #cv:Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 158
    .restart local v1       #cancelButton:Landroid/view/View;
    .restart local v2       #cv:Landroid/view/View;
    :cond_3
    invoke-virtual {p0, v6}, Lcom/google/android/talk/AddBuddyScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/AddBuddyScreen;->mInviteButton:Landroid/view/View;

    .line 159
    invoke-virtual {p0, v5}, Lcom/google/android/talk/AddBuddyScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method public static inviteBuddies(Lcom/google/android/gtalkservice/IImSession;Ljava/lang/CharSequence;)V
    .locals 10
    .parameter "session"
    .parameter "addresses"

    .prologue
    .line 174
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v6

    .line 177
    .local v6, recipients:[Landroid/text/util/Rfc822Token;
    move-object v0, v6

    .local v0, arr$:[Landroid/text/util/Rfc822Token;
    :try_start_0
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 178
    .local v5, recipient:Landroid/text/util/Rfc822Token;
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, username:Ljava/lang/String;
    const/4 v4, 0x0

    .line 181
    .local v4, nickname:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 182
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 185
    :cond_0
    const-string v8, "talk"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 186
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inviteBuddies: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", nickname="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/talk/AddBuddyScreen;->log(Ljava/lang/String;)V

    .line 188
    :cond_1
    const/4 v8, 0x0

    invoke-interface {p0, v7, v4, v8}, Lcom/google/android/gtalkservice/IImSession;->addContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #nickname:Ljava/lang/String;
    .end local v5           #recipient:Landroid/text/util/Rfc822Token;
    .end local v7           #username:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 191
    .local v1, ex:Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inviteBuddies: caught "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/talk/AddBuddyScreen;->loge(Ljava/lang/String;)V

    .line 193
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_2
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 236
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AddBuddyScreen] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 240
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AddBuddyScreen] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method private registerForSessionAvailable()V
    .locals 5

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/talk/AddBuddyScreen;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, p0, Lcom/google/android/talk/AddBuddyScreen;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/talk/AddBuddyScreen;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {p0}, Lcom/google/android/talk/AddBuddyScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/talk/TalkApp;->getAccountIdFromActivityIntent(Landroid/content/Intent;)J

    move-result-wide v2

    new-instance v4, Lcom/google/android/talk/AddBuddyScreen$1;

    invoke-direct {v4, p0}, Lcom/google/android/talk/AddBuddyScreen$1;-><init>(Lcom/google/android/talk/AddBuddyScreen;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/talk/TalkApp;->addImSessionAvailableCallback(Landroid/os/Handler;JLcom/google/android/talk/SessionAvailableRunnable;)V

    .line 123
    return-void
.end method

.method private sessionAvailable(Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 2
    .parameter "service"
    .parameter "session"

    .prologue
    .line 130
    if-eqz p1, :cond_1

    .line 131
    iput-object p2, p0, Lcom/google/android/talk/AddBuddyScreen;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 132
    iget-object v0, p0, Lcom/google/android/talk/AddBuddyScreen;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-nez v0, :cond_0

    .line 133
    const-string v0, "talk"

    const-string v1, "Empty IM session. Finish!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->showLandingPage(Landroid/app/Activity;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/AddBuddyScreen;->finish()V

    goto :goto_0
.end method

.method private unregisterForSessionAvailable()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/talk/AddBuddyScreen;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, p0, Lcom/google/android/talk/AddBuddyScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/TalkApp;->removeImSessionAvailableCallback(Landroid/os/Handler;)V

    .line 127
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/google/android/talk/AddBuddyScreen;->checkEmailAddress()V

    .line 255
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 247
    return-void
.end method

.method closeScreen()V
    .locals 0

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/android/talk/AddBuddyScreen;->finish()V

    .line 206
    return-void
.end method

.method inviteBuddies()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/talk/AddBuddyScreen;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AddBuddyScreen;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/AddBuddyScreen;->mEmailList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/AddBuddyScreen;->inviteBuddies(Lcom/google/android/gtalkservice/IImSession;Ljava/lang/CharSequence;)V

    .line 200
    const v0, 0x7f0c006a

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 201
    invoke-virtual {p0}, Lcom/google/android/talk/AddBuddyScreen;->closeScreen()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/16 v6, 0x10

    .line 72
    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/talk/AddBuddyScreen;->mTabletMode:Z

    .line 73
    iget-boolean v2, p0, Lcom/google/android/talk/AddBuddyScreen;->mTabletMode:Z

    if-nez v2, :cond_0

    .line 74
    const v2, 0x1030119

    invoke-virtual {p0, v2}, Lcom/google/android/talk/AddBuddyScreen;->setTheme(I)V

    .line 77
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/google/android/talk/AddBuddyScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 80
    .local v0, a:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/google/android/talk/AddBuddyScreen;->mTabletMode:Z

    if-nez v2, :cond_1

    .line 81
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/talk/AddBuddyScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040007

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, actionBarButtons:Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 88
    .end local v1           #actionBarButtons:Landroid/view/View;
    :cond_1
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/AddBuddyScreen;->mApp:Lcom/google/android/talk/TalkApp;

    .line 89
    new-instance v2, Lcom/google/android/talk/EmailAddressAdapter;

    invoke-direct {v2, p0}, Lcom/google/android/talk/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/talk/AddBuddyScreen;->mAddressAdapter:Lcom/google/android/talk/EmailAddressAdapter;

    .line 91
    const v2, 0x7f040009

    invoke-virtual {p0, v2}, Lcom/google/android/talk/AddBuddyScreen;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/talk/AddBuddyScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 93
    invoke-direct {p0}, Lcom/google/android/talk/AddBuddyScreen;->initView()V

    .line 95
    invoke-direct {p0}, Lcom/google/android/talk/AddBuddyScreen;->registerForSessionAvailable()V

    .line 96
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 102
    iget-object v0, p0, Lcom/google/android/talk/AddBuddyScreen;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->ensureServiceBound()V

    .line 103
    invoke-direct {p0}, Lcom/google/android/talk/AddBuddyScreen;->registerForSessionAvailable()V

    .line 104
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 109
    invoke-direct {p0}, Lcom/google/android/talk/AddBuddyScreen;->unregisterForSessionAvailable()V

    .line 110
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 251
    return-void
.end method
